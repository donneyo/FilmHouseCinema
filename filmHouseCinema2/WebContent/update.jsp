<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="/struts-tags" prefix="s"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Movie</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
        		 &nbsp;&nbsp;
           <a class="nav-item nav-link" id="highlight" href="#">Welcome,<s:property value="(info)"/> </a>
        </div>
  	</div>
    </div>
 </div>
<body>
<h1 style="text-align:center"> Update Movie</h1><br><br>
	<form action=updatedetails method="post">
		<b>Cast: </b><input type="text" name="cast" value='<s:property value="cast"/>'>
		<b>Description:</b><input type="text" name="description" value='<s:property value="description"/>'>
		<button name="submitType" value="update" type="submit">Update</button>
	</form>
	
	<s:if test="ctr>0">
		<span style="color: red;"><s:property value="msg" /></span>
	</s:if>
	<s:else>
		<span style="color: red;"><s:property value="msg" /></span>
	</s:else>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>