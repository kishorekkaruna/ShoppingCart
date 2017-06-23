<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
html, body {
	text-decoration: none;
	overflow: scroll;
	background: url(resources/img/Texture.jpg) no-repeat center center
		fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	}
	a{
	text-decoration: none;
	}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/Menu.jsp"%>
<br>
<br>
<br>


<c:if test="${not empty shippingaddressList }">
<%@include file="/WEB-INF/views/ViewShipping.jsp"%>
</c:if>
<c:if test="${not empty EditShippingClicked }">
<%@include file="/WEB-INF/views/EditShippingAddress.jsp"%>
</c:if>
<c:if test="${not empty newShippingClicked }">
<%@include file="/WEB-INF/views/ShippingAddress.jsp"%>
</c:if>
<c:if test="${not empty Payment}">
<%@include file="/WEB-INF/views/Payment.jsp"%>
</c:if>
<c:if test="${not empty addCodClicked }">
<%@include file="/WEB-INF/views/COD.jsp"%>
</c:if>
<c:if test="${not empty addCcClicked }">
<%@include file="/WEB-INF/views/CreditCard.jsp"%>
</c:if>




<%-- <%@include file="/WEB-INF/views/Footer.jsp"%> --%>

</body>
</html>
