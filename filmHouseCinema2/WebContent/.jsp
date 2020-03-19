<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Movie page</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>      
</head>
<body>
<header>
<div id="show" style="background-color:black">
    <div class="navbar navbar-expand-lg navbar-light">
        <img src="Images/filmhousepix.png" id="logo">
        <a href="RegistrationPage.jsp"></a>
      <div class="navbar-nav" id="navbarTogglerDemo02">
        <div class="topnav" id="myTopnav">
          <a class="nav-item nav-link" id="highlight" href="welcomepage.jsp">Home </a>
          <a class="nav-item nav-link" id="highlight" href="login2.jsp">Sign In</a>
          <a class="nav-item nav-link" id="highlight" href="registerCus.jsp">Sign Up</a>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a class="nav-item nav-link" id="highlight" href="#">Hi,Guess"></a>
        </div>
  	</div>
   </div>
 </div>					
 </header>
 
 <div>
 <br><br><br>
 <div >
 <h3 style="text-align:center">Add Movie</h3><br>
 </div>		
 	<div class="col-md-6">
 		<div class="row">
 		<s:form action="imageupload" method="POST" enctype="multipart/form-data">
 			<div class="col-md-6">
 				<s:textfield   label="Name" name="name"   />
 			</div>
 			
 			<div class="col-md-6">
 				<s:textfield   label="Certificate" name="certificate"/>
 			</div>
 			
 			<div class="col-md-6">
 				<s:textfield   label="Type" name="type"/>
 			</div>
 			
 			<div class="col-md-6">
 				<s:textfield   label="Duration" name="duration"/>
 			</div>
 			
 			<div class="col-md-6">
 				<s:textfield   label="Director" name="director"/>
 			</div>
 			
 			<div class="col-md-6">
 				<s:textfield   label="Language" name="language"/>
 			</div>
 			
 			<div class="col-md-6">
 				<s:textarea   label="Cast" name="cast" col="20"  row="2"/>
 			</div>
 			
 			<div class="col-md-6">
 				<s:file name="image" label="Select Image" />
 			</div>
 			
 			<div class="col-md-6">
 				<s:textfield   label="Price" name="price"/>
 			</div>
 			
 			<div class="col-md-6">
 				<s:textfield   label="Description" name="description"/>
 			</div>
 			
 			<div class="col-md-6">
 			<s:submit name="sumbit" value="Submit" />
 			<s:reset name="reset"  value="reset"/>
 			</div>
 			
 		</s:form>	
 				
 			
 		
 		</div>
 	</div>
 	
 		<div style="margin-top: 40px; font-size: 30px; color: green;">
			<s:property value="msg" />
		</div>
 		
 </div>
 
 
 																				
</body>
 <jsp:include page="footer.jsp"></jsp:include> 
</html>