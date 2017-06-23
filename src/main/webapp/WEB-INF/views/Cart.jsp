<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
h1 {
	padding-top: 40px;
}

.main-center {
	margin-top: 165px;
	margin: 195px auto;
	max-width: 80%;
	padding: 30px 60px;
	background: rgba(0, 79, 223, 0.52);
	color: #Black;
	text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	-moz-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
}

.main-login {
	background-color: #fff;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 15px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}
/* .main-center{
 	margin-top: 160px;
 	margin: 175px auto;
 	max-width: 400px;
    padding: 3px 40px;
	background:rgba(0, 79, 223, 0.52);
	    color: #FFF;
    text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

} */
.btn1 {
	float: right;
	font-family: "Quicksand", sans-serif;
	font-weight: 500;
	font-variant: small-caps;
	background: white;
	color: black;
	border: 1px solid #4CAF50;
}

.btn1:hover {
	background-color: #4CAF50;
	color: white;
}
</style>
<script>
	function goBack() {
		window.history.back();
	}
</script>
<div class="main-center main-login">

	<div class="container">
		<h1>Mycart</h1>
		<div class="col-sm-12 col-md-10 col-md-offset-1">

			<button type="submit" class="btn" onclick="goBack()">Go Back</button>

			<table class="table">
				<thead>
					<tr>
						<th>Serial No</th>
						<th>Product Image</th>

						<th>Quantity</th>
						<th>Product Price</th>
						<th>Total</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cartList}" var="cart" varStatus="status">
						<tr>
							<th scope="row">${status.count }</th>
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left"> <img
										src="resources/img/Product/${cart.productId}.jpg"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">${cart.productName}</a>
										</h4>
									</div>
								</div>
							</td>

							<td class="col-sm-1 col-md-1" style="text-align: center">
								<!-- <i class="glyphicon glyphicon-minus"></i> -->
								${cart.quantity } <!-- <i class="glyphicon glyphicon-plus"></i> -->
							</td>
							<td class="col-sm-1 col-md-1 text-center"><strong>${cart.productPrice}</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>${cart.total}</strong></td>
							<td class="col-sm-1 col-md-1">
								<button type="button" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span> <a
										href="deleteCart?cartId=${cart.cartId }">Remove</a>
								</button>
							</td>
						</tr>
					</c:forEach>
					<tr>
						<td> </td>
						<td> </td>
						<td> </td>
						<td><h3>Total</h3></td>
						<td class="text-right"><h3>
								<strong>${total}</strong>
							</h3></td>
					</tr>
					<tr>
						<td>
						<td><c:if
								test="${pageContext.request.userPrincipal.name != null }">
								<a href="proceed"><button type="submit" class="btn">
										Proceed to Delivery</button></a>

							</c:if> <c:if test="${pageContext.request.userPrincipal.name == null }">
								<a href="LoginPage"><button type="submit" class="btn1">
										Proceed to Delivery</button></a>
							</c:if> <a href="home"><button type="submit" class="btn1">
									Continue Shopping</button></a>
					</tr>

				</tbody>
			</table>

		</div>
	</div>
</div>

