<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <style>

.glyphicon { margin-right:5px; }
.thumbnail
{
    margin-bottom: 20px;
    padding: 0px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.item.list-group-item
{
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 10px;
}
.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
{
    background: #428bca;
}

.item.list-group-item .list-group-image
{
    margin-right: 10px;
}
.item.list-group-item .thumbnail
{
    margin-bottom: 0px;
}
.item.list-group-item .caption
{
    padding: 9px 9px 0px 9px;
}
.item.list-group-item:nth-of-type(odd)
{
    background: #eeeeee;
}

.item.list-group-item:before, .item.list-group-item:after
{
    display: table;
    content: " ";
}

.item.list-group-item img
{
    float: left;
}
.item.list-group-item:after
{
    clear: both;
}
.list-group-item-text
{
    margin: 0 0 11px;
}


</style>




<html>

<body>

	<%@include file="menu.jsp"%>


	<script>
		$(document).ready(function() {
			$('#list').click(function(event) {
				event.preventDefault();
				$('#products .item').addClass('list-group-item');
			});
			$('#grid').click(function(event) {
				event.preventDefault();
				$('#products .item').removeClass('list-group-item');
				$('#products .item').addClass('grid-group-item');
			});
		});
	</script>



	<div class="container">
		<div class="well well-sm">
			<strong>Category Title</strong>
			<div class="btn-group">
				<a href="#" id="list" class="btn btn-default btn-sm"><span
					class="glyphicon glyphicon-th-list"> </span>List</a> <a href="#"
					id="grid" class="btn btn-default btn-sm"><span
					class="glyphicon glyphicon-th"></span>Grid</a>
			</div>
		</div>
		
		<c:forEach var="product" items="${productList}">
			<div class="item  col-xs-4 col-lg-4">
				 <div class="thumbnail" > 
					<img class="group list-group-image"
						src="${pageContext.request.contextPath}/${product.productImage}" width="150" height="150" alt="25" />
					<div class="caption">
						<h4 class="group inner list-group-item-heading">
							${product.productName}</h4>
						<p class="group inner list-group-item-text">
							${product.productDescription}</p>
						<div class="row">
							<div class="col-xs-12 col-md-6">
								<p class="lead">${product.productPrice}</p>
							</div>
							<div class="col-xs-12 col-md-6">
								<a class="btn btn-success" href=/Ecart/cart>Add
									to cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		
	</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>
