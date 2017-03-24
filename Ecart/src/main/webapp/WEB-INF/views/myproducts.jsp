<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<html>
 <!-- <a href="productentry">Add New product</a> -->
 <br>
  <input button type="button" class="btn btn-primary" value="Add New product" onclick="location.href = 'productentry';">
   <br>
   <br>
 
<h1>Product's List</h1>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<body>

   <table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Description</th><th>Stock</th><th>Price</th><th>image</th><th></th><th></th></tr>  
   <c:forEach var="product" items="${list}">   
   <tr>  
   <td>${product.productId}</td>  
   <td>${product.productName}</td>  
   <td>${product.productDescription}</td>
   <td>${product.productStock}</td> 
   <td>${product.productPrice}</td> 
   <td>${product.productImage}<br>
   <img src="${pageContext.request.contextPath}/${product.productImage}" 
                                     style="height:100px;width:50px; alt="25"" /> </td>
  
  
   <td><a href="${pageContext.request.contextPath}/editproduct/${product.productId}">Edit</a></td>  
   <td><a href="${pageContext.request.contextPath}/deleteproduct/${product.productId}">Delete</a></td> 
   </tr>  
   </c:forEach>  
   </table>  
   
   
</body>
</html>