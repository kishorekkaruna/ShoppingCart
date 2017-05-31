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
<link rel="stylesheet" href="resources/css/index.css">
<script src="resources/js/Slider.js"></script>
<title>ShoppingCart</title>
<style>
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
	padding: 14px 16px;
	text-decoration: none;
}
ul li:hover{

display:block;
}

li a:hover:not(.active)
{
background-color:#111;
}
.active {
	background-color: #4CAF50;
}

.background {
	opacity: o.5;
	filter: alpha(opacity = 50);
	position: absolute;
}

a {
	color: white;
	font-family: cursive;
}

a:hover {
	font-family: cursive;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.header {
	width: 100%;
	background: #53c4ed;
	padding-top: 10px;
	position: fixed;
	overflow: hidden;
}
</style>
</head>

<body class="free-trail-form" background="resources/img/shopping.jpg">

	<div class="header">
		<div style="float: right;">

			<a class="glyphicon glyphicon-gift" href="#giftcard">Giftcard</a> <a
				class="glyphicon glyphicon-user" href="#customerservice">CustomerService</a>
			<a class="glyphicon glyphicon-exclamation-sign" href="#aboutus">Aboutus?</a>

		</div>
		<br>
		<!-- search bar -->
		<div style="float: left;">
			<img alt="picture1" src="resources/img/lovekart1.png" height="52"
				width="150">
		</div>

		<div class="row">
			<div class="span10">
				<form id="custom-search-form"
					class="form-search form-horizontal pull-right">
					<div class="input-append span12">
						<input type="text" class="search-query mac-style"
							placeholder="Search">
						<button type="submit" class="btn">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
		<br>

		<!-- NavigatorBar -->
		<ul>
			<li><a class="active" href="IndexPage">Home</a></li>
			<li><a href="MenPage">Men</a></li>
			<li><a href="WomenPage">Women</a></li>
			<li><a href="ElectronicsPage">Electronics</a></li>
			<li><a href="BooksPage">Books</a></li>
			<li><a href="SportsPage">Sports</a></li>
			<li><a href="LoginPage"><span
					class="glyphicon glyphicon-log-out"></span>Logout</a></li>
			<li><a href="LoginPage"> <span
					class="glyphicon glyphicon-log-in"></span>Login
			</a></li>
			<li><a href="SignupPage"> <span class="fa fa-user-plus"></span>Signup
			</a></li>
			<li><a href="CategoryPage"> <span class="fa fa-columns"></span>Category</a>	</li>
			<li><a href="SupplierPage"><span class="fa fa-user"></span>Supplier</a></li>
		</ul>
	</div>
	<br>
	<br>

	<!-- Conditions -->
	<c:choose>
		<c:when test="${isUserClickedIndex=='true' }">
			<jsp:include page="index.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedLogin=='true' }">
			<jsp:include page="Login.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedCategory=='true' }">
			<jsp:include page="admin/Category.jsp"></jsp:include>
		</c:when>
		<c:when test="${isUserClickedSupplier=='true' }">
			<jsp:include page="admin/Supplier.jsp"></jsp:include>
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
		<c:otherwise>
			<jsp:include page="Carousel.jsp"></jsp:include>
			<jsp:include page="Thumbnail.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>

</body>
</html>