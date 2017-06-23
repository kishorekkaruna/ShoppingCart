<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
a {
	color: white;
	font-family: cursive;
}

a:hover {
	color: White;
	font-family: cursive;
	padding: 12px 16px;
	text-decoration: none;
	
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
padding-top:90px;
}
.name{
color:white;	
}
</style>
<div class="header">

			
				<c:if test="${pageContext.request.userPrincipal.name != null }">
			<h4 class="name pull-right">Welcome ${pageContext.request.userPrincipal.name}</h4>
				</c:if>
			

	

		<br><br>
			<div style="float: left;">
			<img alt="picture1" src="resources/img/lovekart1.png" height="52"
				width="150">
		</div>
		<!-- NavigatorBar -->
		<div class="top">
			<ul>
				<li><a class="active" href="home">Home</a></li>
				<li><a href="CategoryBy?category=Men">Men</a></li>
				<li><a href="CategoryBy?category=Womens">Women</a></li>
				<li><a href="CategoryBy?category=Mobiles">Mobiles</a></li>
				<li><a href="CategoryBy?category=Books">Books</a></li>
				<!-- <li><a href="CategoryBy?category=">Sports</a></li> -->
				
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