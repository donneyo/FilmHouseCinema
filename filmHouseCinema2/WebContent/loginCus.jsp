<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>

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
          <a class="nav-item nav-link" id="highlight" href="login2.jsp">Sign In</a>
          <a class="nav-item nav-link" id="highlight" href="registerCus.jsp">Sign Up</a>
        	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a class="nav-item nav-link" id="highlight" href="#">Hi,Guest</a>
        </div>
  	</div>
    </div>
 </div>

<body style="text-align: center;">
	<h3>Login Please</h3>
	<form action="login2" method="post">
		<pre>
<input type="text" name="email" placeholder="Enter Email" required />

<input type="password" name="pass" placeholder="Enter Password" required />

<input type="submit" name="sub" value="Login" />
		</pre>
		<%
			String str = (String) request.getAttribute("msg");
			if (str != null) {
				out.print(str);
			}
		%>
	</form>
	<a href="register.jsp">Register Now</a>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>