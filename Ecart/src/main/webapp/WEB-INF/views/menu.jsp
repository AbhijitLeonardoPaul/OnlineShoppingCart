<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">MyShoppingCart</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
        
        <c:forEach items="${categoryList}" var="category">
           
            <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">${category.categoryName}<span class="caret"></span></a>
            <ul class="dropdown-menu">
            
            
            
            <c:forEach items="${category.subCategory}" var="subCategory">
      <li><a href="${pageContext.request.contextPath}/showProductsBySubCategory/${subCategory.subCategoryId}">${subCategory.subCategoryName}</a></li> 
      
      </c:forEach> 
            </ul>
             </c:forEach>
             
     
      
        
        <li><a href="#"><u>OFFER ZONE</u></a></li>
      
     
<security:authorize access="hasRole('ROLE_ADMIN')">				
  <li><a href="myproducts"><u>Manage Product</u> </a></li> 
   </security:authorize>
  
</ul>


      
         <ul class="nav navbar-nav navbar-right">
         <c:if test="${pageContext.request.userPrincipal.name == null}">
      
        <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${pageContext.request.contextPath}/loginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
        
        
        <li><a href="Showcart"><span class="glyphicon glyphicon-shopping-cart"></span> </a></li>
						<li><a href="${pageContext.request.contextPath}/logout"><span class="glyphicon glyphicon-log-out"></span>
						Logout</a></li>
						</c:if>
      </ul>
    </div>
  </div>
</nav>
  
  



