<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#playground-container {
	height: 500px;
	overflow: hidden !important;
	-webkit-overflow-scrolling: touch;
}

.main {
	margin: 50px 15px;
}

h1.title {
	font-size: 50px;
	font-family: 'Passion One', cursive;
	font-weight: 400;
}

hr {
	width: 10%;
	color: #fff;
}

.form-group {
	margin-bottom: 15px;
}

label {
	margin-bottom: 15px;
}

input, input::-webkit-input-placeholder {
	font-size: 11px;
	padding-top: 3px;
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

.form-control {
	height: auto !important;
	padding: 8px 12px !important;
}

.input-group {
	-webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.21) !important;
	-moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.21) !important;
	box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.21) !important;
}

#button {
	border: 1px solid #ccc;
	margin-top: 28px;
	padding: 6px 12px;
	color: #666;
	text-shadow: 0 1px #fff;
	cursor: pointer;
	-moz-border-radius: 3px 3px;
	-webkit-border-radius: 3px 3px;
	border-radius: 3px 3px;
	-moz-box-shadow: 0 1px #fff inset, 0 1px #ddd;
	-webkit-box-shadow: 0 1px #fff inset, 0 1px #ddd;
	box-shadow: 0 1px #fff inset, 0 1px #ddd;
	background: #f5f5f5;
	background: -moz-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5),
		color-stop(100%, #eeeeee));
	background: -webkit-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
	background: -o-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
	background: -ms-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
	background: linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5',
		endColorstr='#eeeeee', GradientType=0);
}

.main-center {
	margin-top: 165px;
	margin: 20px auto;
	max-width: 400px;
	padding: 10px 40px;
	background: #a8df00;
	color: #FFF;
	text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	-moz-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
	box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
}

span.input-group-addon i {
	color: #009edf;
	font-size: 17px;
}

.login-button {
	margin-top: 5px;
}

.login-register {
	font-size: 11px;
	text-align: center;
}
</style>
<script>
	function productValidation() {
		var prname=document.getElementById('pname');
		var prprice=document.getElementById('price');
		var prcat=document.getElementById('category');
		var prsup=document.getElementById('supplier');
		var prdate=document.getElementById('date');
		if(notempty(prname,"Productname Should Not Be Empty")){
			if(onlyAlphabet(prname,"Should be in Character")){
				if(notempty(prprice,"Productprice Should be Entered")){
					if(Numeric(prprice,"Should be in Numeric")){
						if(notempty(prcat,"the field should be filled")){
							if(onlyAlphabet(prcat,"Should Be In Character")){
								if(notempty(prsup,"The Field Should Be Empty")){
									if(onlyAlphabet(prsup,"Should Be In Character")){
										if(notempty(prdate,"The Field Should not Be Empty")){
											if(isAlphaNum(prdate,"Should be In Date Format")){
												return true;
											}
										}
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
	function isAlphaNum(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	
	
	function notempty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}

	function Numeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	
	function onlyAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
</script>
<body>

	<div class="main-login main-center">
		<form method="post" action="newProduct" enctype="multipart/form-data" onsubmit="productValidation()">

			<label for="name" class="cols-sm-2 control-label"
				style="align: center;">ADD PRODUCT</label>

			<div class="form-group">
				<label for="name" class="cols-sm-2 control-label">Product
					Name</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user fa"
							aria-hidden="true"></i></span> <input type="text" class="form-control"
							name="pname" id="pname" placeholder="Enter the Product" required />
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="name" class="cols-sm-2 control-label">Price</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-inr fa"
							aria-hidden="true"></i></span> <input type="text" class="form-control"
							name="price" id="price" min="100" max="1000" placeholder="Price"
							required />
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label for="name" class="cols-sm-2 control-label">Quantity</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-stack-exchange fa"
							aria-hidden="true"></i></span> <input type="text" class="form-control"
							name="quantity" id="quantity" min="100" max="1000" placeholder="Quantity"
							required />
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label for="name" class="cols-sm-2 control-label">Product Description</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-list fa"
							aria-hidden="true"></i></span> <input type="text" class="form-control"
							name="description" id="description" min="100" max="1000" placeholder="Description"
							required />
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label for="date" class="cols-sm-2 control-label">Category
					Name</label>
				<div class="cols-sm-10">
					<div class="input-group">
						
							<select class="form-control" name="category"
							id="category">
						<option type="text" class="form-control" name="category"
							id="category"  required></option>
						<c:forEach items="${categoryList}" var="category">
							<option value="${category.name }">${category.name }</option>
							
						</c:forEach>
						</select>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label for="date" class="cols-sm-2 control-label">Supplier
					Name</label>
				<div class="cols-sm-10">
					<div class="input-group">
						
							<select class="form-control" name="supplier"
							id="supplier">
						<option type="text" class="form-control" name="supplier"
							id="supplier"  required></option>
						<c:forEach items="${supplierList}" var="supplier">
							<option value="${supplier.name }">${supplier.name }</option>
						</c:forEach>
						</select>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="date" class="cols-sm-2 control-label">Date</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock fa"
							aria-hidden="true"></i></span> <input type="date" class="form-control"
							name="date" id="date" placeholder="Date" required />
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="file upload" class="cols-sm-2 control-label">File
					Upload</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-file-image-o fa"
							aria-hidden="true"></i></span> <input type="file" class="form-control"
							name="image" id="image" placeholder="Choose File" required />
					</div>
				</div>
			</div>
			<button type="submit" id="button"
				class="btn btn-primary btn-lg btn-block login-button"
				value="AddNewProduct" >Submit</button>
		</form>
	</div>

</body>
