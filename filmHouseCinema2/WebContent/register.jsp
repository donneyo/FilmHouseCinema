<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
 <jsp:include page="TemplateA.jsp"></jsp:include>
<body>
	
	<s:form action="register" method="post">
		<s:textfield label="Full Name" name="name" />
		<s:textfield label="Email" name="email" />
		<s:password label="Password" name="pass" />
		
		<s:submit  name="sub" value="Resgister" />
		
		<%
			String str = (String) request.getAttribute("msg");
			if (str != null) {
				out.print(str);
			}
		%>
		
	</s:form>
	<a href="login.jsp">Login Now</a>
	
</body>

 <jsp:include page="footer.jsp"></jsp:include> 
</html>