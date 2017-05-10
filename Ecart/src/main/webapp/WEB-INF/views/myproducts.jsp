<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> --%>






<html>


<!-- <input button type="button" class="btn btn-primary"
	value="Add New product" onclick="location.href = 'productentry';"> -->



<body>
<%@include file="adminmenu.jsp"%>

	
	<h1>Product's List</h1>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">	






	<table border="2" width="80%" cellpadding="2">
		<tr>
			<th>&nbsp;Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Stock</th>
			<th>Price</th>
			<th>image</th>
			<th>Sub Category</th>
			<th></th>
			<th></th>
			
		</tr>
		<c:forEach var="product" items="${list}">
			<tr>
				<td>&nbsp;&nbsp;${product.productId}</td>
				<td>&nbsp;${product.productName}</td>
				<td>&nbsp;${product.productDescription}</td>
				<td>&nbsp;${product.productStock}</td>
				<td>&nbsp;${product.productPrice}</td>
				<td>&nbsp;${product.productImage}<br> <img
					src="${pageContext.request.contextPath}/${product.productImage}"
					style="height: 100px; width: 50px; "25" />
				</td>
				<td>&nbsp;${product.productSubCategory.subCategoryName} </td>


				<td><a
					href="${pageContext.request.contextPath}/editproduct/${product.productId}">Edit</a></td>
				<td><a
					href="${pageContext.request.contextPath}/deleteproduct/${product.productId}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>