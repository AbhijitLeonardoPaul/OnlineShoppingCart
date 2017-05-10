<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@include file="adminmenu.jsp"%>

<h1>Add New Product</h1>
<form:form method="post" action="save" enctype="multipart/form-data">    
        <table >
        
          <tr>    
          <td>SubCategory Id : </td>
           <td><form:select items="${subCategoryList}" itemLabel="subCategoryName" itemValue="subCategoryId" path="productSubCategory.subCategoryId"></form:select></td>
          </tr> 
        <tr>    
          <td>Name : </td>
           <td><form:input path="productName" type="text" required="true"  title = "enter Name" /></td>
          </tr>
          <tr>    
          <td>Description :</td>
          <td><form:input path="productDescription" type="text" required="true"  title = "enter Name" /></td>
          </tr>
          <tr>
       
         <td>Stock : </td>
          <td><form:input path="productStock" type="text" required="true"  title = "enter Number" /></td>
          </tr>
          
          <tr>
          <td>Price :</td>
           <td><form:input path="productPrice" type="text" required="true"  title = "enter price" /></td>
          </tr>
          <tr>
          <td>image :</td>
          <td><input type="file" name="file" type="text" required="true"  title = "upload file"/></td>
          </tr>
          
          <tr>    
          <td> </td>    
          <td><input type="submit" value="Upload" /></td>    
         </tr>  
          </table>
          
      
        </form:form> 