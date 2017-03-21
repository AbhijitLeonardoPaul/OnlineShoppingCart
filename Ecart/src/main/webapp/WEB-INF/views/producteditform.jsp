<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
 <h1>Edit product</h1>  
       <form:form method="POST" action="/Ecart/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="productId" /></td>  
         </tr>   
         <tr>    
          <td>Name : </td>   
          <td><form:input path="productName"  /></td>  
         </tr> 
         <tr>    
          <td>Description  :</td>    
          <td><form:input path="productDescription" /></td>  
         </tr>
          <tr>    
          <td>Stock  :</td>    
          <td><form:input path="productStock" /></td>  
         </tr>
          <tr>    
          <td>Price  :</td>    
          <td><form:input path="productPrice" /></td>  
         </tr>
          <tr>    
          <td>Image  :</td>    
          <td><form:input path="productImage" /></td>  
         </tr>
          <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>   
         
         </form:form>  