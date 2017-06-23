<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
table{
background-color: graytext;	
}
</style>
<table class="table" border="2">
<thead>
<tr>
<th>Serial no</th>
<th>Product Id</th>
<th>product Name</th>
<th>User Id</th>
<th>User Name</th>
<th>Days</th>
</tr>
</thead>
<c:forEach items="${cartList}" var="cart" varStatus="status">

<tr>
<th scope="row">${status.count}</th>
<td>${cart.productId}</td>
<td>${cart.productName }</td>
<td>${cart.userId }</td>
<td>${cart.userName }</td>
<td>${cart.days }</td>

 
</tr>
</c:forEach>
</table>