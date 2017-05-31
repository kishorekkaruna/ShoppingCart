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
	margin: 200px auto;
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
<div class="main-login main-center">
	<form method="put" action="afterChange">

		<label for="name" class="cols-sm-2 control-label"
			style="align: center;">EDIT PRODUCT</label>

		<div class="form-group">
<label for="name" class="cols-sm-2 control-label">Product
				Id</label>
			<div class="cols-sm-10">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user fa"
						aria-hidden="true"></i></span> <input type="text" class="form-control"
						name="pid" id="pid" value="${product.pid }" readonly="true" />
				</div>
			</div>
		</div>

		<div class="form-group">
			<label for="name" class="cols-sm-2 control-label">Product
				Name</label>
			<div class="cols-sm-10">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user fa"
						aria-hidden="true"></i></span> <input type="text" class="form-control"
						name="pname" id="pname" value="${product.pname}"
						placeholder="Enter the Product" />
				</div>
			</div>
		</div>
		
		<div class="form-group">
				<label for="name" class="cols-sm-2 control-label">Price</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-inr fa"
							aria-hidden="true"></i></span> <input type="text" class="form-control"
							name="price" id="price" value="${product.price }"placeholder="Price"
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
							name="quantity" id="quantity" value="${product.quantity }" placeholder="Quantity"
							required />
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="cols-sm-2 control-label">Category</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-stack-exchange fa"
							aria-hidden="true"></i></span> <input type="text" class="form-control"
							name="category" id="category" value="${product.category }"
							required />
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label for="name" class="cols-sm-2 control-label">Supplier</label>
				<div class="cols-sm-10">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-stack-exchange fa"
							aria-hidden="true"></i></span> <input type="text" class="form-control"
							name="supplier" id="supplier" value="${product.supplier }" 
							required />
					</div>
				</div>
			</div>

		<%-- <div class="form-group">
			<label for="name" class="cols-sm-2 control-label">Category</label>
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
 --%>
		<div class="form-group">
			<label for="name" class="cols-sm-2 control-label">Date</label>
			<div class="cols-sm-10">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-lock fa"
						aria-hidden="true"></i></span> <input type="text" class="form-control"
						name="date" id="date" value="${product.date }"
						placeholder="Date" />
				</div>
			</div>
		</div>
		
			
		<button type="submit" id="button"
			class="btn btn-primary btn-lg btn-block login-button"
			value="AddNewProduct">Submit</button>
	</form>
</div>