
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome page</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body  style="background-color:black">
      <div id="demo" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                    <li data-target="#demo" data-slide-to="3"></li>
                </ul>
                <!-- The slide show -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="Images/joker.jpg" alt="joker" width="1300" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/wolf.jpg" alt="wolf" width="1300" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/Terminate.jpg" alt="terminate" width="1300" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="Images/shazam.jpg" alt="shazam" width="1300" height="500">
                    </div>  
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
            
            <div>
            <form action="Validate" method="post">
				<input type='radio' name='r1' value='adminstrator'>Administrator
				<input type='radio' name='r1' value='customer'>Customer
				<input type="submit" name="submit" value="Submit" />
			</form>
            </div>
</body>
 <jsp:include page="footer.jsp"></jsp:include> 
</html>