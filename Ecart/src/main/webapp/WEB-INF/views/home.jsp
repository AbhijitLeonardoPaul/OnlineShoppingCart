<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>

<html lang="en">
<head>


<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
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

<br>
<br>
<br>
<br>
<br>


		<%@include file="footer.jsp"%>
</body>
</html>