<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<style>
.table1{

position:relative;
}
.main-center {
	margin-top: 165px;
	margin: 200px auto;
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
	<h1>View Supplier</h1>
	<table class="table1 table">
		<thead>
			<tr>
				<th>Supplier_Id</th>
				<th>Supplier Name</th>
				<th>Supplier Email</th>
				<th>Supplier Address</th>
				<th>Contact</th>
			</tr>
		</thead>
		
		<c:forEach items="${supplierList}" var="Supp">
			<tr>
				<td>${Supp.id }</td>
				<td>${Supp.name }</td>
				<td>${Supp.email }</td>
				<td>${Supp.address }</td>
				<td>${Supp.contact }</td>
				<td><a href="EditSupplier?id=${Supp.id}"><span class="fa fa-edit"></span></a></td>
				<td><a href="removeSupplier?id=${Supp.id }"><Span class="fa fa-trash"></Span></a></td>
			</tr>

		</c:forEach>
		</table>
		</div>