<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add movie Page</title>
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
          <a class="nav-item nav-link" id="highlight" href="AddMovie.jsp">Add movie</a>
          <a class="nav-item nav-link" id="highlight" href="movieList.jsp">Movies</a>
           <a class="nav-item nav-link" id="highlight" href="BookList.jsp">Book list</a>
        		 &nbsp;&nbsp;
       	  Welcome,<s:property value="#session.pass" /> |<a href="logout">Logout</a>
        </div>
  	</div>
    </div>
 </div>
<body>

	<h1 style="text-align:center">Add movie</h1>
	
	<s:form action="imageupload" method="POST" enctype="multipart/form-data">
		<s:textfield name="name" label="Name" maxlength="20" />
		<s:textfield name="certificate" label="Certificate" maxlength="20" />
		<s:textfield name="duration" label="Duration" maxlength="20" />
		<s:textfield name="director" label="Director" maxlength="20" />
		<s:textfield name="language" label="Language" maxlength="20" />
		<s:textfield name="cast" label="Cast" maxlength="20" />
		<s:textfield name="price" label="Price" maxlength="20" />
		<s:textfield name="type" label="Type" maxlength="20" />
		<s:textfield name="description" label="Description" maxlength="20" />
		<s:file name="image" label="Select Image" />
		<s:submit name="sumbit" value="Submit" />
	</s:form>
	
	<div style="margin-top: 40px; font-size: 30px; color: green;">
		<s:property value="msg" />
	</div>
	
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>