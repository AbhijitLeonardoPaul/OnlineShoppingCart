<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>

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
                <h1 class="page-header">Popular Items</h1>
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
                </a>
            </div>
             
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30102">
                    <img class="img-responsive" src="resources/images/img11.jpeg" alt="">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="showProductsBySubCategory/30103">
                    <img class="img-responsive" src="resources/images/img9.jpeg" alt="">
                </a>
            </div>
            dkbdbldibj
           
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
            bdbd
        </div>

        <hr>

       

    </div>



	 <!-- <div class="popular_bx">
		<div class="container">
			<div class="heading_pnl1">
				<span class="line"><img src="" alt=""></span> 
				<h3>Popular Items</h3>
				<br>

				<a href="#" class="vw_all">View All <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
			</div>
			<div class="box_pro1">
				<div class="row">



					<div class="col-sm-3">
						<div class="box_col1">
							<div class="box_col1_img">
								<span class="new">New</span> <a href="#"> <img
									src="resources/images/img1.jpeg"
									style="width: 100%; height: 165px;"></a>
							</div>
							<div class="box_col1_btm btmCol2">
								<h4>
									<a href="#">Lenovo G50-80 Core i3 5th Gen Notebook (15.6
										inch, Black, 2.5 kg)</a>
								</h4>
								<p>
									<span><i class="fa fa-inr" aria-hidden="true"></i></span>
									24,990
								</p>

								<a class="radius_box2"
									href="https://www.flipkart.com/lenovo-g50-80-core-i3-5th-gen-4-gb-1-tb-hdd-dos-80e502q8ih-notebook/p/itmecc3uycvu3rzf?pid=COMECC3UGHXPXWRG&lid=LSTCOMECC3UGHXPXWRGIEWA3B&otracker=hp_omu_7+Day+Super+Savers_1_Core+i3%7C1TB+HDD%7C4GB_37c24c16-6963-4dc5-b54a-19906540546f">More</a>

							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="box_col1">
							<div class="box_col1_img">
								<span class="new">New</span> <a href="#"> <img
									src="resources/images/img2.jpeg"
									style="width: 100%; height: 165px;"></a>
							</div>
							<div class="box_col1_btm btmCol">
								<h4>
									<a href="#">Lenovo - (Pentium Quad Core/4 GB DDR3/1 TB/Free
										DOS) (Black, 19.5 Inch Screen)</a>
								</h4>
								<p>
									<span><i class="fa fa-inr" aria-hidden="true"></i></span>
									22,990
								</p>

								<a class="radius_box2"
									href="https://www.flipkart.com/lenovo-pentium-quad-core-4-gb-ddr3-1-tb-free-dos/p/itmes9kga4v7ncjv?pid=AIOES9KG8FV5HBTF&lid=LSTAIOES9KG8FV5HBTFWKGK5K&otracker=hp_omu_7+Day+Super+Savers_2_Intel+PQC%7C1TB+HDD%7C4GB_c0160037-d4d0-43ec-915e-56d27eca3706">More</a>

							</div>
						</div>
					</div>

						<div class="col-sm-3">
						<div class="box_col1">
							<div class="box_col1_img">
								<span class="new">New</span> <a href="#"> <img
									src="resources/images/img5.jpeg"
									style="width: 100%; height: 165px;"></a>
							</div>
							<div class="box_col1_btm btmCol">
								<h4>
									<a href="#">Atlas Stun D/S NA Mountain Cycle (Red, Green)</a>
								</h4>
								<p>
									<span><i class="fa fa-inr" aria-hidden="true"></i></span>
									10,000
								</p>

								<a class="radius_box2" href="#">More</a>

							</div>
						</div>
					</div>
					

					<div class="col-sm-3">
						<div class="box_col1">
							<div class="box_col1_img">
								<span class="new">New</span> <a href="#"> <img
									src="resources/images/img4.jpeg"
									style="width: 100%; height: 165px;"></a>
							</div>
							<div class="box_col1_btm btmCol">
								<h4>
									<a href="#">Asus ZenPad C 7.0 Z170CG 8 GB 7 inch with
										Wi-Fi+3G (Black)</a>
								</h4>
								<p>
									<span><i class="fa fa-inr" aria-hidden="true"></i></span> 5000
								</p>

								<a class="radius_box2" href="#">More</a>

							</div>
						</div>
					</div>
				
					



				</div>
			</div>
		</div>
	</div>
 -->

	<br>
	<br>
	<br>
	<br>
	<br>


	<%@include file="footer.jsp"%>
</body>
</html>