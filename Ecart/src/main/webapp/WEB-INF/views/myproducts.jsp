<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>
<h1>Product's List</h1>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Description</th><th>Stock</th><th>Price</th><th>image</th></tr>  
   <c:forEach var="product" items="${productList}">   
   <tr>  
   <td>${product.productId}</td>  
   <td>${product.productName}</td>  
   <td>${product.productDescription}</td>  
   <td>${product.productStock}</td> 
   <td>${product.productPrice}</td> 
   <td>${product.productImage}</td>
  
   
   </tr>  
   </c:forEach>  
   </table>  

</html>