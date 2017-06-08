<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/Slider.js"></script>
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/jquery.js"></script>
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/amazingslider.js"></script>
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/initslider-1.js"></script>
<title>ShoppingCart</title>
<style>
html, body {
	text-decoration: none;
	overflow: scroll;
	background: url(resources/img/shopping.jpg) no-repeat center center
		fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 30px;
	text-decoration: none;
}

ul li:hover {
	display: block;
}

li


 


a




:hover




:not


 


(
.active


 


)
{
background-color




:


 


#111




;
}
.active {
	background-color: #4CAF50;
}
a {
	color: white;
	font-family: cursive;
}

a:hover {
	color: White;
	font-family: cursive;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.header {
	top: 0px;
	bottom: 700px;
	width: 100%;
	background: #e80950;
	padding-top: 0px;
	position: fixed;
	z-index: 999;
	width: 100%;
	height:169px;
}
.top{
padding-top:110px;
}
</style>
</head>

<body class="free-trail-form background" background="url(resources/img/shopping.jpg)">
	 <h3>
			<!-- <marquee width="35%" DIRECTION=LEFT><MARQUEE DIRECTION=RIGHT> -->
				<c:if test="${pageContext.request.userPrincipal.name != null }">
			HI.. ${pageContext.request.userPrincipal.name}<br>
					<br>
				</c:if>
			<!-- </marquee></MARQUEE> -->
		</h3>
		<br><br>

	<div class="header">

		<br>
			<div style="float: left;">
			<img alt="picture1" src="resources/img/lovekart1.png" height="52"
				width="150">
		</div>
		

	<!-- search bar -->

		<!--  <div class="forum">
			<input type="search" id="sbx" name="searchbox"
				placeholder="Click Here To Search..." /> <input type="submit"
				id="btn" class="material-icons" value="send" name="button" /> <span
				id="line"></span>
		</div>  -->
		
		
		<!-- NavigatorBar -->
		<div class="top">
			<ul>
				<li><a class="active" href="index">Home</a></li>
				<li><a href="MenPage">Men</a></li>
				<li><a href="WomenPage">Women</a></li>
				<li><a href="ElectronicsPage">Electronics</a></li>
				<li><a href="BooksPage">Books</a></li>
				<li><a href="SportsPage">Sports</a></li>
				
				<ul class=navbar-right>
					<c:if test="${pageContext.request.userPrincipal.name != null }">
						<li><a href="myCart"><span
								class="fa fa-shopping-cart fa-lg"></span>Cart</a></li>
						<li><a href="signout"><span
								class="glyphicon glyphicon-log-out"></span>Logout</a></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name == null }">

						<li><a href="SignupPage"> <span class="fa fa-user-plus"></span>Signup
						</a></li>
						<li><a href="LoginPage"> <span class="fa fa-sign-in"></span>Login
						</a></li>
					</c:if>
				</ul>


			</ul>
		</div>
	</div>
	<br>
	<br>

	<!-- Conditions -->
	<c:choose>

		<c:when test="${isUserClickedLogin=='true' }">
			<jsp:include page="Login.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedSignup=='true' }">
			<jsp:include page="Signup.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedBooks=='true' }">
			<jsp:include page="Books.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedElectronics=='true' }">
			<jsp:include page="Electronics.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedMen=='true' }">
			<jsp:include page="Men.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedWomen=='true' }">
			<jsp:include page="Women.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedSports=='true' }">
			<jsp:include page="Sports.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedPassword=='true' }">
			<jsp:include page="ForgotPassword.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedProductDetails=='true' }">
			<jsp:include page="ProductDetails.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedmyCart=='true' }">
			<jsp:include page="Cart.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="Carousel.jsp"></jsp:include>
			<jsp:include page="ProductList.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>

</body>
</html>