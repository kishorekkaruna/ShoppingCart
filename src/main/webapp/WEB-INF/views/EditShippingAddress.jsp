<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
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
</style>
</head>
<body>
<div class="main-center main-login">
<form action="afterEditShipping" method="post">
<h1> Edit Shipping Address</h1>
  <div class="login-form">
     <h1>Shipping</h1>
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="user Name" name="shippingId" id=shipping Id"
       value="${shipping.shippingId}" readonly="true">
     </div>
     
     <div class="form-group ">
       <input type="text" class="form-control" placeholder="user Name" name="userName" id="userName"
       value="${shipping.userName}">
       
     </div>
     <div class="form-group log-status">
       <input type="text" class="form-control" placeholder="Mobile Number" name="mobileNumber" id="mobileNumber"
       value="${shipping.mobileNumber}">
      
     </div>
     <div class="form-group log-status">
       <input type="text" class="form-control" placeholder="Shipping Address" name="userAddress" id="userAddress"
       value="${shipping.userAddress}">
      
     </div>
     <div class="form-group log-status">
       <input type="text" class="form-control" placeholder="Shipping city code" name="userAddress" id="userCityCode"
       value="${shipping.userCityCode}">
       
     </div>
         <button type="submit" class="log-btn" >Submit</button>
    
    
   </div></form>
</div>
</body>
</html>