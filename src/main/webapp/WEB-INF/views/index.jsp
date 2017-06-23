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
<!-- <script src="resources/js/Slider.js"></script>
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/jquery.js"></script>
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/amazingslider.js"></script>
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/initslider-1.js"></script> -->
<title>ShoppingCart</title>
<style>
html, body {
	text-decoration: none;
	overflow: scroll;
	background: url(resources/img/Texture.jpg) no-repeat center center
		fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	}
	a{
	text-decoration: none;
	}
</style>
</head>

<body class="free-trail-form background" background="url(resources/img/Template.jpg)">
<%@include file="/WEB-INF/views/Menu.jsp"%>
	 
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
			<%-- <jsp:include page="Carousel.jsp"></jsp:include> --%>
			<jsp:include page="ProductList.jsp"></jsp:include>
			
		</c:otherwise>
	</c:choose>
<%@include file="/WEB-INF/views/Footer.jsp"%>
</body>
</html>