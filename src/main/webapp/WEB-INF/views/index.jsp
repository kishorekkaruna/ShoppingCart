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
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/jquery.js"></script>
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/amazingslider.js"></script>
<script type="text/javascript"
	src="http://uguru-realestate-us-jun202013.businesscatalyst.com/3d-slider/sliderengine/initslider-1.js"></script>
<title>ShoppingCart</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Material+Icons|Roboto:400);

@keyframes line-anim {
    75% {
        width: 130px;
        transform: rotate(0);
    }
    100% {
        width: 600px;
        transform: rotate(0);
    }
}
@keyframes btn-focus-anim {
    0% {
        box-shadow: 0 0 0 85px #673AB7;
    }
    100% {
        box-shadow: 0 0 0 100px #4A148C;
    }
}
.material-icons {
  font-family: 'Material Icons';
  font-weight: normal;
  font-style: normal;
  font-size: 10vw;/* Preferred icon size */
  display: inline-block;
  width: 1em;
  height: 1em;
  line-height: 1;
  text-transform: none;
  letter-spacing: normal;
  word-wrap: normal;
  white-space: nowrap;
  direction: ltr;/* Support for all WebKit browsers. */
  vertical-align: sub;
  -webkit-font-smoothing: antialiased;/* Support for Safari and Chrome. */
  text-rendering: optimizeLegibility;/* Support for Firefox. */
  -moz-osx-font-smoothing: grayscale;/* Support for IE. */
  font-feature-settings: 'liga';
}
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    outline: 0;
}
html, body {
    text-decoration: none;
    overflow: scroll;
}
/* form {
    position: absolute;
    width: 700px;
    height: 96px;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
} */
#sbx {
    position: relative;
    top: -18px;
    width: 546px;
    border: none;
    background: none;
    color: white;
    font-family: 'Roboto', sans-serif;
    font-size: 48px;
}
#sbx:focus ~ #btn {
    color: white;
    text-indent: 6px;
    transition: .2s .4s;
}
#sbx:focus ~ #line {
    animation: line-anim .5s both;
}
#sbx:focus::-webkit-input-placeholder {
    text-indent: 100%;
}
#sbx:focus::-moz-placeholder {
    text-align: centere;
}
#btn {
    width: 96px;
    height: 96px;
    background: #4A148C;
    color: transparent;
    font-size: 48px;
    text-indent: -100%;
    vertical-align: middle;
    border: 6px solid white;
    border-radius: 50%;
}
#btn:focus {
    text-indent: 10px;
    color: white;
    animation: btn-focus-anim .2s both;
}
#line {
    position: absolute;
    top: 0;
    bottom: 0;
    right: 102px;
    margin: auto;
    width: 100px;
    height: 0;
    background: white;
    border: 3px solid white;
    border-radius: 3px;
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
    transform: rotate(-135deg);
    transform-origin: right;
    z-index: -1;
}
::-webkit-input-placeholder {
    color: white;
    opacity: .6;
    transition: .2s;
}
::-moz-placeholder {
    color: white;
    opacity: .6;
    transition: .2s;
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
	background-size: inherit;
	background-repeat: inherit;
	width: 100%;
	border-spacing: inherit;
	-webkit-background size: 500px 50px;
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
	top: 0px;
	width: 100%;
	background: #e80950;
	padding-top: 10px;
	position: fixed;
	z-index: 999;
}
</style>
</head>

<body class="free-trail-form background"
	background="resources/img/shopping.jpg">

	<div class="header">

		<br>
		<!-- search bar -->
		<div style="float: left;">
			<img alt="picture1" src="resources/img/lovekart1.png" height="52"
				width="150">
		</div>

		<div class="forum">
			<input type="search" id="sbx" name="searchbox"
				placeholder="Click Here To Search...." /> <input type="submit"
				id="btn" class="material-icons" value="send" name="button" /> <span
				id="line"></span>
		</div>
		<br>

		<!-- NavigatorBar -->
		<div>
			<ul>
				<li><a class="active" href="index">Home</a></li>
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
		<c:otherwise>
			<jsp:include page="Carousel.jsp"></jsp:include>
			<jsp:include page="ProductList.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>

</body>
</html>