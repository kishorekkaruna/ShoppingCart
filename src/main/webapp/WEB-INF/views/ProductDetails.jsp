<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<style type="text/css">
.main-center {
	margin-top: 165px;
	margin: 200px auto;
	max-width: 100%;
	padding: 10px 40px;
	background: #fff;
	color: #FFF;
	text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	-moz-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
} 
.img {
padding-top: 150px;
position: relative;
float: left;
width: 5%;
height: 10%;
background-postion:100% 100%;
background-repeat:no-repeat;
backgroun-size:;
margin-left: 7em;
padding-bottom:9em;
}
h5,h4,h2{
color:black;
}
</style>
<script>
function goBack() {
    window.history.back();
}
</script>


<body>

<table class="main-center">
<thead>
<h1 align="center">${product.pname}</h1></thead>
<tr><td><div class="img">
<img src="resources/img/Product/${product.pid}.jpg" width="395" height="330">
</td>
<td>
<div style="float: left; margin-left: 7em; margin-right:15em">
<h5>Product Price</h5><h4 style="float:right">${product.price}</h4>
<br>
<h5>Stock</h5><h4  style="float:right">${product.quantity }</h4>
<br><br>
<h2 style="color: red;">${msg}</h2>
<c:if test="${pageContext.request.userPrincipal.name != null }">
<button type="submit" class="log-btn" ><a href="addtoCart?pid=${product.pid}">Proceed to Cart</a></button>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name == null }">
<button type="submit" class="log-btn" ><a href="LoginPage">Proceed to Cart</a></button>
</c:if>
<button type="submit" class="log-btn" onclick="goBack()">GO Back</button>
</div>

</td>
</table>

</body>
