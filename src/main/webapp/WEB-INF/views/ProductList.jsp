<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Love Kart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700&subset=latin-ext,vietnamese');   
body{
font-family: 'Quicksand', sans-serif;
}
   h4{
    	font-weight: 600;
	}
	h3{
	color:#EAC227;
	}
	p{
		font-size: 12px;
		margin-top: 5px;
	}
	.price{
	
		font-size: 25px;
    	margin: 0 auto;
    	color: #333;
	}

	.thumbnail{
		opacity:1.00;
		-webkit-transition: all 0.5s; 
		transition: all 0.5s;
		}
	.thumbnail:hover{
		opacity:0.70;
		box-shadow: 0px 0px 10px #4bc6ff;
	}
	.line{
		margin-bottom: 10px;
	}
	 @media screen and (max-width: 600px) {
		.right{
			float:left;
			width: 100%;
		}
	} 
	span.thumbnail {
        border: 10px solid #00c4ff !important;
    border-radius: 0px !important;
    -webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.16);
    -moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.16);
    box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.16);
	padding: 10px;
}
.container 
{margin-top:160px; margin-bottom:300px;}
button {    margin-top: 6px;
}
h4{margin-top:10px; margin-bottom:30px;}
.right {
    float: right;
    border-bottom: 2px solid #0a5971;
}
.btn-info {
    color: #fff;
    background-color: #19b4e2;
    border-color: #19b4e2;
	font-size:13px;
	font-weight:60;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
	<body>
	
		 <div class="container">
		<h3>NEW COLLECTION</h3>
		
	<!-- <div class="row">  -->
	
    	<!-- BEGIN PRODUCTS -->
    	<c:forEach items="${productList}" var="prod">
  		<div class="col-md-4 col-sm-10">
    		<span class="thumbnail">
      			<a href="ProductDetails?pid=${prod.pid}"><img class="image-responsive" src="resources/img/Product/${prod.pid}.jpg" alt="${prod.pname }"></a>
      			<h4>Name : ${prod.pname }</h4>
      			<!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p> -->
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-4 col-sm-6">
      					<p class="price"> <span class="fa fa-inr"></span>${prod.price }</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      				 <a href="ProductDetails?pid=${prod.pid}" >	<button class="btn btn-info right" > Add To Cart</button></a>
      				</div>
      			
      			</div>
    		</span>
  		</div>
  		</c:forEach>
  		

		<!-- END PRODUCTS -->
	</div>
	
</div> <!-------container----->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	</body>
</html>
<script type="text/javascript">

</script>


