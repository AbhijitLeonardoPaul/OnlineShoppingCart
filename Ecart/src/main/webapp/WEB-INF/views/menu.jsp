<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <li class="active"><a href="home">Home</a></li>
        
        <c:forEach items="${categoryList}" var="category">
           
            <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">${category.categoryName}<span class="caret"></span></a>
            <ul class="dropdown-menu">
            
            
            
            <c:forEach items="${category.subCategory}" var="subCategory">
      <li><a href="${pageContext.request.contextPath}/showProductsBySubCategory/${subCategory.subCategoryId}">${subCategory.subCategoryName}</a></li> 
      
      </c:forEach> 
            </ul>
             </c:forEach>
             
     
        
        <!-- <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">AAA <span class="caret"></span></a>
            <ul class="dropdown-menu">
          
          display category names as menu option 
           
           
          </ul>
        </li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">CLOTHING <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Men</a></li>
            <li><a href="#">Women</a></li>
            
          </ul>
        </li> -->
        
        <li><a href="#"><u>OFFER ZONE</u></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> </a></li>
        <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  



