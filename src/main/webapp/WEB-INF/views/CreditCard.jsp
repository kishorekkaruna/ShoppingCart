<style>
.main-center{
 	margin-top: 165px;
 	margin: 5px auto;
 	max-width: 400px;
    padding: 10px 40px;
	background:#009edf;;
	    color: #3ea2e0;
    text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

}
.main-login{
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
<body>
	<br><br><br><br><br><br><br><br><br><br>
	<Form action="Account" method="post">
		<div class="login-form main-center main-login">
			<h1>Account Details</h1>

			<div class="form-group ">
				<select class="form-control" name="bank" id="bank">
					<option value="" class="form-control">Select Your Bank</option>

					<option value="#">STATE BANK OF INDIA</option>
					<option value="#">INDIAN OVERSEAS BANK</option>
					<option value="#">BANK OF BARODA</option>
					<option value="#">ICICI</option>
					<option value="#">INDIAN BANK</option>
					<option value="#">CITY UNION BANK</option>
				</select>
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter Customer ID " name="c_id" id="c_id"> 
			</div>
			<div class="form-group ">
				<input type="text" class="form-control" placeholder="Enter Name "
					name="Name" id="Name">
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter Card Name " name="c_name" id="c_name"> 
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter Card Number " name="c_num" id="c_num"> 
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter CVV pin " name="cvv" id="cvv">
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter Branch CODE " name="code" id="code"> 
			</div>
			<div class="form-group ">
				<input type="text" class="form-control"
					placeholder="Enter IFSC code " name="ifsc" id="ifsc"> 
			</div>
			<button type="submit" class="log-btn" value="AddAccount">Submit!</button>
			<button type="submit" class="log-btn" value="Reset">Reset!</button>
			
			
			</div>
			</Form>
			
</body>
