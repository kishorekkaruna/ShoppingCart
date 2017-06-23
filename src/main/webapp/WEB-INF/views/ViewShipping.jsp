<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
color: #e21d1d;
}
container {
	padding-top: 40px;
}

#details {
	font-family: "Quicksand", sans-serif;
	font-size: 60px;
}

#home-box>h2 {
	font-family: "Quicksand", sans-serif;
	font-weight: 400;
	line-height: 1.1;
	color: #75b1ae;
}

.price {
	font-size: 25px;
	float: left;
}

.pricing_header {
	background: none repeat scroll 0% 0% rgb(226, 222, 222);
	border-radius: 5px 5px 0px 0px;
	transition: background 0.4s ease-out 0s;
}

.pricing_header h2 {
	text-align: center;
	line-height: 25px;
	padding: 5px 0px;
	margin: 0px;
	font-family: "Quicksand", sans-serif;
	font-weight: 400;
	color: #75b1ae;
}

.list-group-item:first-child {
	border-top-right-radius: 0px;
	border-top-left-radius: 0px;
}

.btn {
	float: right;
	font-family: "Quicksand", sans-serif;
	font-weight: 500;
}

.off {
	text-decoration: line-through;
	color: #fffff;
}

.space {
	height: 2px;
	background-color: #75b1ae;
}
</style>
<body>
<br><br><br><br><br><br><br><br><br><br><br><br>
	<h2>
		<a href="newshipping" style="float: right;">create new address</a>
	</h2>
	<div class="container">
		<div class="row">
			<h4 id="details">Select Delivery Address</h4>
		</div>

		<c:forEach items="${shippingList}" var="shipping">
			<!-- <div class="div2"> -->
			<div class="col-md-3" id="home-box">
				<div class="pricing_header">


					<h2>Delivery Address</h2>
					<div class="space"></div>
				</div>
				<ul class="list-group">
					<h3>Name:</h3>
					<h4>${shipping.userName}</h4>
					<hr>
					<h3>Address:</h3>
					<h5>${shipping.userAddress}${shipping.userCityCode}</h5>

					<hr>
					<h3>Mobile Number:</h3>
					<h4>${shipping.mobileNumber}</h4>
					<hr>
					<a href="editShipping?shippingId=${shipping.shippingId}"
						style="float: right;"><span class="glyphicon glyphicon-pencil"></span></a>
					<a href="deleteShipping?shippingId=${shipping.shippingId}"
						style="float: right; margin-right: 2em;"><span
						class="glyphicon glyphicon-trash"></span></a>

					<button type="button" value="submit" class="btn-warning">
						<a href="deliverAdress?shippingId=${shipping.shippingId}">Deliver Here</a>
					</button>
				</ul>
			</div>
		</c:forEach>
	</div>
</body>
</html>