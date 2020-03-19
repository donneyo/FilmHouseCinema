package org.donneyo.action;

import java.io.OutputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.donneyo.bean.MovieListDTO;
import org.donneyo.dao.MovieListDAO;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;


public class MovieList extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	List<MovieListDTO> dataList = null;
	ResultSet rs = null;
	MovieListDAO daoObj = null;
	MovieListDTO dataBean = null;
	
	
	@Override
	public String execute() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		String id = request.getParameter("id");
		try {
			dataList = new ArrayList<>();
			rs = new MovieListDAO().getData();
			if (rs != null) {
				while (rs.next()) {
					dataBean = new MovieListDTO();
					dataBean.setId(rs.getInt("id"));
					dataBean.setDescription(rs.getString("description"));
					dataBean.setCast(rs.getString("cast"));
					dataList.add(dataBean);
				}
			}
			
			try {
				rs = new MovieListDAO().getPhoto(id);
				if (rs.next()) {
					Blob ph = rs.getBlob("image");
					byte data[] = ph.getBytes(1, (int) ph.length());
					OutputStream out = response.getOutputStream();
					out.write(data);
					out.flush();
					out.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
				e.getMessage();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
	}

	public List<MovieListDTO> getDataList() {
		return dataList;
	}

	public void setDataList(List<MovieListDTO> dataList) {
		this.dataList = dataList;
	}
			
}
