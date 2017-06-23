<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<style>
.table1{

position:relative;
}
.main-center {
	margin-top: 0px;
	margin: 120px auto;
	max-width: 100%;
	padding: 10px 40px;
	background: #a8df00;
	color: #FFF;
	text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	-moz-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
}

</style>
<div class="main-center">
	<h1>View Product</h1>
	<table class="table1 table">
		<thead>
			<tr>
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Product Description</th>
				<th>Product Category</th>
				<th>Product Supplier</th>
				<th>Uploaded Date</th>
				<th>Quantity</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
	
	<c:forEach items="${productList}" var="prod">
		
			<tr>
				
				<td>${prod.pid }</td>
				<td>${prod.pname }</td>
				<td>${prod.price }</td>
				<td>${prod.description}</td>
				<td>${prod.category }</td>
				<td>${prod.supplier }</td>
				<td>${prod.date }</td>
				<td>${prod.quantity}</td>
				<td><a href="EditProduct?pid=${prod.pid}"><span class="fa fa-edit"></span></a></td>
				<td><a href="removeProduct?pid=${prod.pid }"><Span class="fa fa-trash"></Span></a></td>

			</tr>
		
	</c:forEach> 
	
	</table>
	</div>
