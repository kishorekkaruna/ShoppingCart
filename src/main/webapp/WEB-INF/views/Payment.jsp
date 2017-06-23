<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.align {
	margin: auto;
	align: center;
}

h2 {
	color: White;
}

.main-center {
	margin-top: 165px;
	margin: 195px auto;
	max-width: 80%;
	padding: 30px 60px;
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    table-layout:;
    width: 40%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 8px;
    color:inherit;
   
}
th{
background-color: gray;
}
tr {
    background-color: #dddddd;
}
.right-corner{
position:absolute;
right:0px;
bottom:350px;
}
</style>

<div class="main-center">
	
		<h2>Payment option</h2>
		
		<div class="col-sm-4 align">
			<div class="sidebar-nav pull-right">
				<div class="navbar navbar-default" role="navigation">
					<div class="navbar-collapse collapse sidebar-navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="Cod">Cash On Delivery</a></li>
							<li class="active"><a href="CreditCard">CreditCard</a></li>

						</ul>
					</div>
					
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
		
		
		
		<table class="right-corner">
  <tr>
    <th><h1>Price Details</h1></th>
    
  </tr>
  <tr>
  	
    <td><strong>Price:${total}</strong></td>
  </tr>
  <tr>
  <td><Strong>Delivery charges: Free</Strong></td>
  </tr>
  <tfoot>
  <tr>
  <td><h3><strong>Amount Payable:${total }</strong></h3></td>
  </tr>
  </tfoot>
  </table>
						
					
		
		
	
</div>