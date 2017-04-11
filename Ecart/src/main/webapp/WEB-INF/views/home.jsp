<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<style>
div.ex4 {
    padding: 25px;
}
</style>

<html lang="en">
<head>


<style>


.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}

.cuadro_intro_hover {
	padding: 0px;
	position: relative;
	overflow: hidden;
	height: 200px;
}

.cuadro_intro_hover:hover .caption {
	opacity: 1;
	transform: translateY(-150px);
	-webkit-transform: translateY(-150px);
	-moz-transform: translateY(-150px);
	-ms-transform: translateY(-150px);
	-o-transform: translateY(-150px);
}

.cuadro_intro_hover img {
	z-index: 4;
}

.cuadro_intro_hover .caption {
	position: absolute;
	top: 150px;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	-ms-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	width: 100%;
}

.cuadro_intro_hover .blur {
	background-color: rgba(0, 0, 0, 0.7);
	height: 300px;
	z-index: 5;
	position: absolute;
	width: 100%;
}

.cuadro_intro_hover .caption-text {
	z-index: 10;
	color: #fff;
	position: absolute;
	height: 300px;
	text-align: center;
	top: -20px;
	width: 100%;
}
</style>
</head>
<body>
	<%@include file="menu.jsp"%>
	<div class="container">
		<br> <br>
		<!-- carousel start  -->

		<div id="myCarousel" class="carousel slide" data-ride="carousel">


			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<img src="resources/images/pic1.jpg">
					<div class="carousel-caption"></div>
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

				<div class="item">
					<img src="resources/images/pic2.jpg">
					<div class="carousel-caption"></div>
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>



				<div class="item">
					<img src="resources/images/pic3.jpg">
					<div class="carousel-caption"></div>
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				<div class="item">
					<img src="resources/images/pic4.jpg">
					<div class="carousel-caption"></div>
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<br>
		</div>


	</div>
	 <div class="container">

        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">Similar Items</h1>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30003">
                    <img class="img-responsive" src="resources/images/img1.jpeg" alt="">
             </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30003">
                    <img class="img-responsive" src="resources/images/img2.jpeg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="resources/images/img6.jpeg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#">
                    <img class="img-responsive" src="resources/images/img5.jpeg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30001">
                    <img class="img-responsive" src="resources/images/img4.jpeg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30003">
                    <img class="img-responsive" src="resources/images/img3.jpeg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30003">
                    <img class="img-responsive" src="resources/images/img13.jpg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30003">
                    <img class="img-responsive" src="resources/images/img7.jpg" alt="">
                </a><font color="white">This is some text!</font>
                
            </div>
             
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30102">
                    <img class="img-responsive" src="resources/images/img11.jpeg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30103">
                    <img class="img-responsive" src="resources/images/img9.jpeg" alt="aaa">
                </a>
              
            </div>
            
           
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30102">
                    <img class="img-responsive" src="resources/images/img15.jpg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30103">
                    <img class="img-responsive" src="resources/images/img8.jpeg" alt="">
                </a>
            </div>
          
        </div>

       <hr>

    </div>



	

<div class="ex4">
Policies:Returns PolicyTerms of useSecurityPrivacyInfringement© 2007-2017 MyShoppingCart.com.
</div>



	<%@include file="footer.jsp"%>
</body>
</html>