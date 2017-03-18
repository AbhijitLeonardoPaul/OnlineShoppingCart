<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add New Users</h1>  
       <form:form method="post" action="save" enctype="multipart/form-data">    
        <table >    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="userName"  /></td>  
         </tr>    
         <tr>    
          <td>Phone No. :</td>    
          <td><form:input path="userPhoneNo" /></td>  
         </tr>   
         <td>Email ID :</td>    
          <td><form:input path="userEmail" /></td>  
         </tr>  
<td><form:hidden path="userImage"/></td>  
<tr>
	<td>Choose Image</td>
	<td><input type="file" name="file"/></td>
	</tr>
         
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Upload" /></td>    
         </tr>    
        </table>    
       </form:form>    
