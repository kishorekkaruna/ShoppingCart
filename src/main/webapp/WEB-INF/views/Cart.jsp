<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table>
<thead>
<tr>
<th>Serial No</th>
<th>Product Image</th>
<th>Product Name</th>
<th>Quantity</th>
<th>Product Price</th>
<th>Total</th>
<th>Delete</th>
</tr>
</thead>
<c:forEach items="${cartList}" var="cart" varStatus="status">
<tr>
<th scope="row">${status.count }</th>
<td><img src="resources/img/Product/${cart.productId}.jpg" style="height:150px;width:150px"></td>
<td>${cart.productName}</td>
<td>${cart.quantity }</td>
<td>${cart.productPrice}</td>
<td>${cart.total}</td>
<td><a href="deleteCart?cartId=${cart.cartId }">Delete</a></td>
</tr>
</c:forEach>
</table>
