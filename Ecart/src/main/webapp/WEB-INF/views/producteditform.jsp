<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
 <h1>Edit product</h1>  
       <form:form method="POST" action="/Ecart/editsave" enctype="multipart/form-data">  
       
       
         <%-- <form:hidden path="productSubCategory.subCategoryId" /> --%>
        <table >    
        <tr>  
        <td><img src = "${pageContext.request.contextPath}/${photo}" height="50" width = "50" ></td>    
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
         <td>Sub Catagory : </td>
         <td><form:select items="${subCategoryList}" itemLabel="subCategoryName" itemValue="subCategoryId" path="productSubCategory.subCategoryId"></form:select>
          <tr>    
          <!-- <td>Image  :</td>  -->   
          <td><form:hidden path="productImage" /></td>
          
         </tr>
          <tr>    
          <td> </td> 
            
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>   
         
         </form:form>  