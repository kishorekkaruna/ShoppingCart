<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.main-center{
 	margin-top: 190px;
 	margin: 175px auto;
 	max-width: 636px;
    padding: 30px 20px;
	background:rgba(214, 9, 66, 0.58);
	    color: #FFF;
    text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

}
</style>
<div class="main-center">
<span><a href="click">Click here</a></span> To Know More!!

<c:if test="${not empty addClickClicked }">
			<%@include file="/WEB-INF/views/DeliverDetails.jsp"%>
</c:if>
</div>