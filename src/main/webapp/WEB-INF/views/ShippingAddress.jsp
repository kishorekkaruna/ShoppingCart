<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function formShipping() {
		// Make quick references to our fields
		var username = document.getElementById('userName');
		var phone = document.getElementById('mobileNumber');
		var address = document.getElementById('userAddress');
		var zipcode = document.getElementById('userCityCode');
		if (notEmpty(username, "Username Should not be empty")) {
			if (isAlphabet(username, "Please enter only letters for Username")) {
				if (notEmpty(phone, "PhoneNumber Should not be empty")) {
					if (isNumeric(phone,
							"Please enter only number for PhoneNumber")) {
						if (notEmpty(address, "Address Should not be empty")) {
							if (isAlphanumeric(address,
									"Please enter Door-No with street-Name for Address")) {
								if (notEmpty(zipcode,
										"Zipcode Should not be empty")) {
									if (isNumeric(zipcode,
											"Please enter a valid zip code")) {
										return true;
									}
								}
							}
						}
					}
				}
			}
		}
		return false;
	}
	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
</script></head>
<body>
	<form action="newAddress" method="post"
		onsubmit="return formShipping()">
		<h1>New Shipping Address</h1>
		<div class="login-form">

			<div class="form-group ">
				<input type="text" class="form-control" placeholder="user Name"
					name="userName" id="userName" value="${shipping.userName}">
				<i class="fa fa-user"></i>
			</div>
			<div class="form-group log-status">
				<input type="text" class="form-control" placeholder="Mobile Number"
					name="mobileNumber" id="mobileNumber"
					value="${shipping.mobileNumber}"> <i class="fa fa-lock"></i>
			</div>
			<div class="form-group log-status">
				<input type="text" class="form-control"
					placeholder="Shipping Address" name="userAddress" id="userAddress"
					value="${shipping.userAddress}"> <i class="fa fa-lock"></i>
			</div>
			<div class="form-group log-status">
				<input type="text" class="form-control"
					placeholder="Shipping city code" name="userCityCode"
					id="userCityCode" value="${shipping.userCityCode}"> <i
					class="fa fa-lock"></i>
			</div>

			<button type="submit" class="log-btn">Submit</button>
		</div>
</form>
</body>


</body>
</html>