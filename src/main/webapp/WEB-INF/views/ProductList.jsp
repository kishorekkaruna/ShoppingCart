<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.productbox {
	background-color: rgba(4, 159, 177, 0.62);
	padding: 10px;
	margin: 5px 0;
	border: 1px solid #cfcfcf;
	-moz-box-shadow: 2px 2px 4px 0px #cfcfcf;
	-webkit-box-shadow: 2px 2px 4px 0px #cfcfcf;
	-o-box-shadow: 2px 2px 4px 0px #cfcfcf;
	box-shadow: 2px 2px 4px 0px #cfcfcf;
	filter: progid:DXImageTransform.Microsoft.Shadow(color=#cfcfcf,
		Direction=134, Strength=4);
}

.producttitle {
	font-weight: bold;
	font-size: 1.2em;
	padding: 5px 0 5px 0;
}

.producttext {
	
}

.productprice {
	border-top: 1px #dadada;
	border-bottom: 2px;
	padding-top: 5px;
}

.pricetext {
	color: white;
	font-weight: bold;
	font-size: 1.4em;
}
</style>

<c:forEach items="${productList}" var="prod">
	<div style="margin-left: 0em">




		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-2">
					<div class="productbox">
						<a href="ProductDetails?pid=${prod.pid}"><img src="resources/img/Product/${prod.pid}.jpg"
							class="img-responsive"></a>
						<%-- <div class="producttitle">ProductDetails?id=${prod.pid}</div> --%>
						<p class="text-justify">Name : ${prod.pname }</p>
						<address>
							Price : ${prod.price }<br> <span>Date : ${prod.date }</span><br>
						</address>


						<div class="productprice">
							<div class="pull-right">
								<a href="#" class="btn btn-success btm-sm" role="button">Add
									To <span class="glyphicon glyphicon-shopping-cart"></span>
								</a>
							</div>
							<div class="pricetext">
								<a href="#" class="btn btn-warning " role="button">Buy Now <span
									class="glyphicon glyphicon-cog"></span>
								</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>

