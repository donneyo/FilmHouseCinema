<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie List </title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
table, th,td {
	border: 1px solid black;
	border-collapse: collapse;
	}
	
.button-update {background-color: #008CBA;color: white;}
.button-delete {background-color: red;color: white;}

</style>
</head>
<div id="show" style="background-color:black">
    <div class="navbar navbar-expand-lg navbar-light">
        <img src="Images/filmhousepix.png" id="logo">
        <a href="RegistrationPage.jsp"></a>
      <div class="navbar-nav" id="navbarTogglerDemo02">
        <div class="topnav" id="myTopnav">
          <a class="nav-item nav-link" id="highlight" href="welcomepage.jsp">Home </a>
          <a class="nav-item nav-link" id="highlight" href="movieList.jsp">Movie List</a>
           <a class="nav-item nav-link" id="highlight" href="AddMovie.jsp">Add Movie</a>
           <a class="nav-item nav-link" id="highlight" href="BookList.jsp">Book list</a>
          Welcome,<s:property value="#session.pass" /> |<a href="logout">Logout</a>
        </div>
  	</div>
    </div>
 </div>
<body>
	<h1 style="text-align:center">Movies</h1>
	<span><s:property value="msg" /></span><br><br>
	<s:form action="Image" method="POST">
		<button type="submit">Fetch Records</button>
	</s:form>
	<div style="margin-top: 40px; margin-right: 100px;">
		<table style="width: 90%; text-align: center;">
			<thead>
				<tr style="background-color: #E0E0E1;">
					<th>ID</th>
					<th>Image</th>
					<th>Description</th>
					<th>Cast</th>
					<th>Action</th>
				</tr>
			</thead>
			<s:iterator value="dataList">
				<tr>
					<td>
						<s:property value="id" /> 
			 		</td>
					<td>
						<img width="100" height="200" src="<s:url value='Image.action?id='/><s:property value='id' />">
					</td>
					<td style="width:25%">
						<s:property value="description" />
					</td>
					<td style="width:25%">
						<s:property value="cast" />
					</td>
					<td style="width:10%">
						<a href="updatedetails.action?submitType=updatedata&cast=<s:property value="cast"/>">
							<button class="button-update">Update</button>
						</a>
						<a href="deleterecord.action?id=<s:property value="id"/>">
							<button class="button-delete">Delete</button>
						</a>
					</td>
					
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>