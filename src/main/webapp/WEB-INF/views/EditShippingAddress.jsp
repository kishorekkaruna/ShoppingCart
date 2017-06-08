<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="afterEditShipping" method="post">
<h1> Edit Shipping Address</h1>
  <div class="login-form">
     <h1>Shipping</h1>
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="user Name" name="shippingId" id=shipping Id"
       value="${shipping.shippingId}" readonly="true">
       <i class="fa fa-user"></i>
     </div>
     
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="user Name" name="userName" id="userName"
       value="${shipping.userName}">
       <i class="fa fa-user"></i>
     </div>
     <div class="form-group log-status">
       <input type="text" class="form-control" placeholder="Mobile Number" name="mobileNumber" id="mobileNumber"
       value="${shipping.mobileNumber}">
       <i class="fa fa-lock"></i>
     </div>
     <div class="form-group log-status">
       <input type="text" class="form-control" placeholder="Shipping Address" name="userAddress" id="userAddress"
       value="${shipping.userAddress}">
       <i class="fa fa-lock"></i>
     </div>
     <div class="form-group log-status">
       <input type="text" class="form-control" placeholder="Shipping city code" name="userAddress" id="userCityCode"
       value="${shipping.userCityCode}">
       <i class="fa fa-lock"></i>
     </div>
         <button type="submit" class="log-btn" >Submit</button>
    
    
   </div></Form>

</body>
</html>