<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/index.css"> 
 <!-- <style type="text/css">
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
	bottom: 0px;
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

ul li:hover {
	 display: block; 
}

ul ul li:hover {
	
}

li a:hover:not (.active ) {
	background-color: #111;
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
	top: 0px;
	width: 100%;
	background: rgba(8, 151, 234, 0.92);
	padding-top: 20px;
	padding-bottom: 0px;
	position: fixed;
	z-index: 999;
}
</style>
 
 -->
 <style>
 .kishore{
 margin-top: 30px;
 margin-bottom: 100px;
    margin-right: 150px;
    margin-left: 80px;
 }
div a{

 color:#ffffff;
font-size:20px;
 }
#primary_nav_wrap
{
	
	margin-top:15px;
	width:100%;
}

#primary_nav_wrap ul
{
	list-style:none;
	position:relative;
	float:left;
	margin:0;
	padding:0
}

#primary_nav_wrap ul a
{
	display:block;
	color:#ffffff;
	text-decoration:none;
	font-weight:700;
	font-size:12px;
	line-height:32px;
	padding:0 15px;
	font-family:"HelveticaNeue","Helvetica Neue",Helvetica,Arial,sans-serif
}

#primary_nav_wrap ul li
{
	
	position:relative;
	float:left;
	margin:0;
	padding:0
}

#primary_nav_wrap ul li.current-menu-item
{
	
	background:#ffe6ee
}

#primary_nav_wrap ul li:hover
{
	background:#ff0051

}

#primary_nav_wrap ul ul
{
	display:none;
	position:absolute;
	top:100%;
	left:0;
	background:#fff;
	padding:0
}

#primary_nav_wrap ul ul li
{	
	background:#ffb3cb;
	float:none;
	width:200px
}

#primary_nav_wrap ul ul a
{
	line-height:120%;
	padding:10px 15px
}

#primary_nav_wrap ul ul ul
{
	top:0;
	left:100%
}

#primary_nav_wrap ul li:hover > ul
{
	display:block
}


</style>
</head>
<body background="resources/img/shopping.jpg" >
<div class="kishore">
<div class="header">

		<br>
		<div style="float: left;">
		
			<img alt="picture1" src="resources/img/lovekart1.png" height="52"
				width="150">
		</div>

		

		
 
 
 <div class="header" style="color:#ddd;">
		<h1>Admin Login</h1>

<nav class="navbar navbar-inverse">
<div class="container-fluid">
		<div class="navbar-header">
			<ul class="nav navbar-nav">
<nav id="primary_nav_wrap">
		<ul>
			<li  style="margin-left:5em"><a> <span class="fa fa-columns"></span>Category
			</a>
				<ul>
					<li><a href="AddCategory">AddCategory</a></li>
					<li><a href="ViewCategory">ViewCategory</a></li>
				</ul></li>

			<li><a><span class="fa fa-user"></span>Supplier</a>
				<ul>
					<li><a href="AddSupplier">AddSupplier</a></li>
					<li><a href="ViewSupplier">ViewSupplier</a></li>
				</ul></li>
								<li><a><span class="fa fa-product-hunt"></span>Product</a>
									<ul>
										<li><a href="AddProduct">AddProduct</a></li>
										<li><a href="ViewProduct">ViewProduct</a></li>
									</ul></li>
									<li><a href="IndexPage"><span class="fa fa-"></span>Logout</a></li>
							</ul>
		</nav></ul></div></div>
			</div>
</div>
<c:choose>
		<c:when test="${isAdminClickedAddCategory=='true' }">
			<jsp:include page="AddCategory.jsp"></jsp:include>
		</c:when>
		<c:when test="${isAdminClickedViewCategory=='true' }">
			<jsp:include page="ViewCategory.jsp"></jsp:include>
		</c:when>
		<c:when test="${isAdminClickedEditCategory=='true' }">
			<jsp:include page="EditCategory.jsp"></jsp:include>
		</c:when>
		<c:when test="${isAdminClickedAddSupplier=='true' }">
			<jsp:include page="AddSupplier.jsp"></jsp:include>
		</c:when>
		<c:when test="${isAdminClickedViewSupplier=='true' }">
			<jsp:include page="ViewSupplier.jsp"></jsp:include>
		</c:when>
		<c:when test="${isAdminClickedEditSupplier=='true' }">
			<jsp:include page="EditSupplier.jsp"></jsp:include>
		</c:when>
		<c:when test="${isAdminClickedAddProduct=='true' }">
			<jsp:include page="AddProduct.jsp"></jsp:include>
		</c:when>
		<c:when test="${isAdminClickedEditProduct=='true' }">
			<jsp:include page="EditProduct.jsp"></jsp:include>
		</c:when>
		<c:when test="${isAdminClickedViewProduct=='true' }">
			<jsp:include page="ViewProduct.jsp"></jsp:include>
		</c:when>

	</c:choose>

 </div> </body>

</html>