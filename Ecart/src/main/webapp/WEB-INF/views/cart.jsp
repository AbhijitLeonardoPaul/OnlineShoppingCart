<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>


<
<style>
.table>tbody>tr>td, .table>tfoot>tr>td {
	vertical-align: middle;
}

@media screen and (max-width: 600px) {
	table#cart tbody td .form-control {
		width: 20%;
		display: inline !important;
	}
	.actions .btn {
		width: 36%;
		margin: 1.5em 0;
	}
	.actions .btn-info {
		float: left;
	}
	.actions .btn-danger {
		float: right;
	}
	table#cart thead {
		display: none;
	}
	table#cart tbody td {
		display: block;
		padding: .6rem;
		min-width: 320px;
	}
	table#cart tbody tr td:first-child {
		background: #333;
		color: #fff;
	}
	table#cart tbody td:before {
		content: attr(data-th);
		font-weight: bold;
		display: inline-block;
		width: 8rem;
	}
	table#cart tfoot td {
		display: block;
	}
	table#cart tfoot td .btn {
		display: block;
	}
}
</style>
<html>
<body>

	<%@include file="menu.jsp"%>
	<link
		href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
		rel="stylesheet">
	<div class="container">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Product</th>
					<th style="width: 10%">Price</th>
					<th style="width: 8%">Quantity</th>
					<th style="width: 22%" class="text-center">Subtotal</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cartItems" items="${list}">
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
									<img
										src="${pageContext.request.contextPath}/${cartItems.product.productImage}"
										alt="..." class="img-responsive" />
								</div>
								<div class="col-sm-10">
									<h4 class="nomargin">${cartItems.product.productName}</h4>
									<p>${cartItems.product.productDescription}</p>
								</div>
							</div>
						</td>
						<td data-th="Price">${cartItems.product.productPrice}</td>
						<td data-th="Quantity">${cartItems.quantity}</td>

						</td>
						<td data-th="Subtotal" class="text-center">${cartItems.subTotal}</td>

						<td class="actions" data-th="">
							
							
							<a href="${pageContext.request.contextPath}/delete/${cartItems.cartItemId}" class="btn btn-danger btn-sm" ><i class="fa fa-trash-o"></a></td>
							
					</tr>
				</c:forEach>

			</tbody>
			<tfoot>
				<tr class="visible-xs">
					<td class="text-center"><strong>Total 1.99</strong></td>
				</tr>
				<tr>
					<td><a href="/Ecart/home" class="btn btn-warning"><i
							class="fa fa-angle-left"></i> Continue Shopping</a></td>
					<td colspan="2" class="hidden-xs"></td>
					<td class="hidden-xs text-center"><strong>Total
							${cart.grandTotal }</strong></td>
					<td><a href="#" class="btn btn-success btn-block">Checkout
							<i class="fa fa-angle-right"></i>
					</a></td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>