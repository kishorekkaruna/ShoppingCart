<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
/*----------------------
Product Card Styles 
----------------------*/
.panel.panel--styled {
	background: #F4F2F3;
}

.panelTop {
	padding: 80px;
}

.panelBottom {
	border-top: 1px solid #e7e7e7;
	padding-top: 2px;
}

.btn-add-to-cart {
	background: #FD5A5B;
	color: #fff;
}

.btn.btn-add-to-cart.focus, .btn.btn-add-to-cart:focus, .btn.btn-add-to-cart:hover
	{
	color: #fff;
	background: #FD7172;
	outline: none;
}

.btn-add-to-cart:active {
	background: #F9494B;
	outline: none;
}

span.itemPrice {
	font-size: 24px;
	color: #FA5B58;
}

.panel panel-default  panel--styled, .panel-body{
padding-top : 20%;
padding-bottom:20%;
height: 100%;
width: 80%;
position: relative;
float: left;
background-postion:100% 100%;
background-size:cover;
	


}
.img-responsive{
max-width: 50%;
}

/*----------------------
##star Rating Styles 
----------------------*/
.stars {
	padding-top: 10px;
	width: 100%;
	display: inline-block;
}

span.glyphicon {
	padding: 5px;
}

.glyphicon-star-empty {
	color: #9d9d9d;
}

.glyphicon-star-empty, .glyphicon-star {
	font-size: 18px;
}

.glyphicon-star {
	color: #FD4;
	transition: all .25s;
}

.glyphicon-star:hover {
	transform: rotate(-15deg) scale(1.3);
}
</style>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
function goBack() {
    window.history.back();
}
</script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<div class="row">
			<div class="col-md-19"> 
				<div class="panel panel-default  panel--styled">
					<div class="panel-body">
						<div class="col-md-20 panelTop">
							<div class="col-md-8">
								<img class="img-responsive"
									src="resources/img/Product/${product.pid}.jpg" alt="" />
							</div>
							<table>
								<td>
									<div class="col-md-40">
										<font color="#ffffff"><h2>Product Name: ${product.pname}</h2>
										<h4>Stock:${product.quantity }</h4>
										<h3">Description:</h3><p>${product.description}</p>
										</font>
									</div>
								</td>
							</table>
						</div>

						<div class="col-md-12 panelBottom">
							<h2 style="color: red;">${msg}</h2>
							<c:if test="${pageContext.request.userPrincipal.name != null }">
								<button type="submit" class="btn btn-lg btn-add-to-cart">
									<a href="addtoCart?pid=${product.pid}">Add
										to Cart</a>
								</button>
							</c:if>

							<c:if test="${pageContext.request.userPrincipal.name == null }">
								<div class="col-md-4 text-center">
									<button class="btn btn-lg btn-add-to-cart">
										<span class="glyphicon glyphicon-shopping-cart"></span><a href="LoginPage"> Add to Cart</a>
									</button>
								</div>
							</c:if>
							<div class="col-md-4 text-left">
								<font color="#ffffff"><h1> Price: <span class="itemPrice">${product.price}</span>
								</h1></font>
							</div>
							<div class="col-md-4">
								<div class="stars">
									<div id="stars" class="starrr"></div>

									<button type="submit" class="log-btn" onclick="goBack()">GO
										Back</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
// Starrr plugin (https://github.com/dobtco/starrr)
var __slice = [].slice;

(function($, window) {
  var Starrr;

  Starrr = (function() {
    Starrr.prototype.defaults = {
      rating: void 0,
      numStars: 5,
      change: function(e, value) {}
    };

    function Starrr($el, options) {
      var i, _, _ref,
        _this = this;

      this.options = $.extend({}, this.defaults, options);
      this.$el = $el;
      _ref = this.defaults;
      for (i in _ref) {
        _ = _ref[i];
        if (this.$el.data(i) != null) {
          this.options[i] = this.$el.data(i);
        }
      }
      this.createStars();
      this.syncRating();
      this.$el.on('mouseover.starrr', 'span', function(e) {
        return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
      });
      this.$el.on('mouseout.starrr', function() {
        return _this.syncRating();
      });
      this.$el.on('click.starrr', 'span', function(e) {
        return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
      });
      this.$el.on('starrr:change', this.options.change);
    }

    Starrr.prototype.createStars = function() {
      var _i, _ref, _results;

      _results = [];
      for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
        _results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
      }
      return _results;
    };

    Starrr.prototype.setRating = function(rating) {
      if (this.options.rating === rating) {
        rating = void 0;
      }
      this.options.rating = rating;
      this.syncRating();
      return this.$el.trigger('starrr:change', rating);
    };

    Starrr.prototype.syncRating = function(rating) {
      var i, _i, _j, _ref;

      rating || (rating = this.options.rating);
      if (rating) {
        for (i = _i = 0, _ref = rating - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
          this.$el.find('span').eq(i).removeClass('glyphicon-star-empty').addClass('glyphicon-star');
        }
      }
      if (rating && rating < 5) {
        for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
          this.$el.find('span').eq(i).removeClass('glyphicon-star').addClass('glyphicon-star-empty');
        }
      }
      if (!rating) {
        return this.$el.find('span').removeClass('glyphicon-star').addClass('glyphicon-star-empty');
      }
    };

    return Starrr;

  })();
  return $.fn.extend({
    starrr: function() {
      var args, option;

      option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      return this.each(function() {
        var data;

        data = $(this).data('star-rating');
        if (!data) {
          $(this).data('star-rating', (data = new Starrr($(this), option)));
        }
        if (typeof option === 'string') {
          return data[option].apply(data, args);
        }
      });
    }
  });
})(window.jQuery, window);

$(function() {
  return $(".starrr").starrr();
});

$( document ).ready(function() {
      
  $('#stars').on('starrr:change', function(e, value){
    $('#count').html(value);
  });
  
  $('#stars-existing').on('starrr:change', function(e, value){
    $('#count-existing').html(value);
  });
});
</script>
</body>
</html>
