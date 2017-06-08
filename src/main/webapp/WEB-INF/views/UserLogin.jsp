<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/WEB-INF/views/index.jsp"%>



<c:if test="${not empty shippingaddressList }">
<%@include file="/WEB-INF/views/ViewShipping.jsp"%>
</c:if>
<c:if test="${not empty EditShippingClicked }">
<%@include file="/WEB-INF/views/EditShippingAddress.jsp"%>
</c:if>
<c:if test="${not empty newShippingClicked }">
<%@include file="/WEB-INF/views/ShippingAddress.jsp"%>
</c:if>
<c:if test="${not empty Successfully }">
<%@include file="/WEB-INF/views/Payment.jsp"%>
</c:if>
</body>
</html>