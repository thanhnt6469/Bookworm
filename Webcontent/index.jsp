<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home Two | Books Library eCommerce Store</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicons -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/icon.png">

    <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="web-css/bootstrap.min.css">
    <link rel="stylesheet" href="web-css/plugins.css">
    <link rel="stylesheet" href="web-css/style.css">

    <!-- Cusom css -->
    <link rel="stylesheet" href="web-css/custom.css">

    <!-- Modernizer js -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">
	    <!-- Header -->
    <header id="wn__header" class="header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                    <div class="logo">
                        <a href="home">
                            <img src="images/logo/logo.png" alt="logo images">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 d-none d-lg-block">
                    <nav class="mainmenu__nav">
                        <ul class="meninmenu d-flex justify-content-start">
                            <li class="drop with--one--item"><a href="home">Home</a></li>
                            <li class="drop"><a href="shop">Shop</a></li>
                            <li class="drop"><a href="shop">Books</a>
                                <div class="megamenu mega03">
                                    <ul class="item item03">
                                        <li class="title">Categories</li>
                                        <li><a href="category?cid=1">Biography </a></li>
                                        <li><a href="category?cid=2">Business </a></li>
                                        <li><a href="category?cid=3">Cookbooks </a></li>
                                        <li><a href="category?cid=4">Health & Fitness </a></li>
                                        <li><a href="category?cid=5">History </a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">Customer Favourite</li>
                                        <li><a href="category?cid=6">Mystery</a></li>
                                        <li><a href="category?cid=7">Religion & Inspiration</a></li>
                                        <li><a href="category?cid=8">Romance</a></li>
                                        <li><a href="category?cid=9">Fiction/Fantasy</a></li>
                                    </ul>
                                    <ul class="item item03">
                                        <li class="title">Collections</li>
                                        <li><a href="category?cid=12">Science </a></li>
                                        <li><a href="category?cid=10">Self-Improvemen</a></li>
                                        <li><a href="category?cid=11">Humor Books</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="drop"><a href="shop">Kids</a>
                                <div class="megamenu mega02">
                                    <ul class="item item02">
                                        <li class="title">Top Collections</li>
                                        <li><a href="detail?pid=45">Children's Book 1</a></li>
                                        <li><a href="detail?pid=46">Children's Book 2</a></li>
                                        <li><a href="detail?pid=47">Children's Book 3</a></li>
                                        <li><a href="detail?pid=48">Children's Book 4</a></li>
                                    </ul>
                                    <ul class="item item02">
                                        <li class="title">More For Kids</li>
                                        <li><a href="category?cid=11">Humor Books</a></li>
                                    </ul>
                                </div>
                            </li>
                            
                            <li class="drop"><a href="blog.jsp">Blog</a></li>
                            <li class="drop"><a href="about.jsp">About</a>
                                <div class="megamenu dropdown">
                                    <ul class="item item01">
                                        <li><a href="faq.jsp">FAQ</a></li>
                                        <li><a href="team.jsp">Team</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="contact.jsp">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <jsp:include page="minicart.jsp"></jsp:include>
            </div>
            <!-- Start Mobile Menu -->
            <div class="row d-none">
                <div class="col-lg-12 d-none">
                    <nav class="mobilemenu__nav">
                        <ul class="meninmenu">
                            <li><a href="home">Home</a></li>  
                            <li><a href="shop">Shop</a></li>
                            <li><a href="shop">Books</a>
                                <ul>
                                    <li>
                                        <li><a href="shop">Categories</a>
                                            <ul>
                                                <li><a href="category?cid=1">Biography </a></li>
                                        		<li><a href="category?cid=2">Business </a></li>
                                        		<li><a href="category?cid=3">Cookbooks </a></li>
                                        		<li><a href="category?cid=4">Health & Fitness </a></li>
                                        		<li><a href="category?cid=5">History </a></li>
                                            </ul>
                                        </li>
                                    </li>
                                    <li>
                                        <li class="title"><a href="shop">Favourite</a>
                                            <ul>
                                                <li><a href="category?cid=6">Mystery</a></li>
                                        		<li><a href="category?cid=7">Religion & Inspiration</a></li>
                                       			 <li><a href="category?cid=8">Romance</a></li>
                                        		<li><a href="category?cid=9">Fiction/Fantasy</a></li>
                                            </ul>
                                        </li>
                                    </li>
                                    <li>
                                        <li class="title"><a href="shop">Collections</a>
                                            <ul>
                                        		<li><a href="category?cid=12">Science </a></li>
                                        		<li><a href="category?cid=10">Self-Improvemen</a></li>
                                        		<li><a href="category?cid=11">Humor Books</a></li>
                                            </ul>
                                        </li>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="shop">Kids</a>
                                    <ul >
                                        <li>
                                            <li class="title"><a href="">Top Collections</a>
                                                <ul>
                                                    <li><a href="detail?pid=45">Children's Book 1</a></li>
                                        			<li><a href="detail?pid=46">Children's Book 2</a></li>
                                        			<li><a href="detail?pid=47">Children's Book 3</a></li>
                                        			<li><a href="detail?pid=48">Children's Book 4</a></li>
                                                </ul>
                                            </li>
                                        </li>
                                        <li>
                                            <li class="title"><a href="shop">More For Kids</a>
                                                <ul>
                                                    <li><a href="category?cid=11">Humor Books</a></li>
                                                </ul>
                                            </li>
                                        </li>
                                    </ul>
                                
                            </li>
                            <li><a href="blog.jsp">Blog</a></li>
                            <li><a href="about.jsp">About</a>
                                <ul>
                                    <li><a href="faq.jsp">FAQ</a></li>
                                    <li><a href="team.jsp">Team</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.jsp">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- End Mobile Menu -->
            <div class="mobile-menu d-block d-lg-none">
            </div>
            <!-- Mobile Menu -->
        </div>
    </header>
    <!-- //Header -->
    <!-- Start Search Popup -->
    <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="search" method="post">
            <div class="field__search">
                <input type="text" name="txt" placeholder="Search entire store here...">
                <div class="action">
                	<button type="submit"><i class="zmdi zmdi-search"></i></button>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>close</span>
        </div>
    </div>
    <!-- End Search Popup -->
    <!-- Start Slider area -->
    <div class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
        <!-- Start Single Slide -->
        <div class="slide animation__style10 bg-image--8 fullscreen align__center--left">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slider__content">
                            <div class="contentbox">
                                <h3>Bookworm_</h3>
                                <h2>The Best <span>Online</span></h2>
                                <h2 class="another">book <span>shop </span></h2>
                                <p>Bookworm specifically created for authors and writes to present and sell their
                                    books online Soufflé tart sweet. </p>
                                <a class="shopbtn" href="shop">shop now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Slide -->
        <!-- Start Single Slide -->
        <div class="slide animation__style10 bg-image--9 fullscreen align__center--left">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slider__content">
                            <div class="contentbox">
                                <h3>Bookworm_</h3>
                                <h2>The Best <span>Online</span></h2>
                                <h2 class="another">book <span>shop </span></h2>
                                <p>Bookworm specifically created for authors and writes to present and sell their
                                    books online Soufflé tart sweet. </p>
                                <a class="shopbtn" href="shop">shop now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Slide -->
    </div>
    <!-- End Slider area -->
    <!-- Start BEst Seller Area -->
    <section class="wn__product__area brown--color pt--80  pb--30">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">New <span class="color--theme">Products</span></h2>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered lebmid alteration in some ledmid form</p>
                    </div>
                </div>
            </div>
            <!-- Start Single Tab Content -->
            <div class="furniture--4 border--round arrows_style owl-carousel owl-theme mt--50">
                <!-- Start Single Product -->
                <c:forEach items="${newProduct}" var="o">
                <div class="product product__style--3">
                    <div class="product__thumb">
                        <a class="first__img" href="detail?pid=${o.id}"><img src="${o.image}" alt="product image"></a>
                        <a class="second__img animation1" href="detail?pid=${o.id}"><img src="${o.image}" alt="product image"></a>
                        <div class="hot__box">
                            <span class="hot-label">${o.hot}</span>
                        </div>
                    </div>
                    <div class="product__content content--center">
                        <h4><a href="detail?pid=${o.id}">${o.title}</a></h4>
                        <ul class="price d-flex">
                            <li>$${o.price}.00</li>
                            <li class="old_price">$${o.price}.00</li>
                        </ul>
                        <div class="action">
                            <div class="actions_inner">
                                <ul class="add_to_links">
                                    <li><a class="cart" href="addtoCart?bookId=${o.id}"><i class="bi bi-shopping-bag4"></i></a>
                                    </li>
                                    <li><a class="wishlist" href="wishlist.jsp"><i
                                            class="bi bi-heart-beat"></i></a></li>
                                    
                                    <li><a data-bs-toggle="modal" title="Quick View"
                                           class="quickview modal-view detail-link" href="#productmodal${o.id}"><i
                                            class="bi bi-search"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product__hover--content">
                            <ul class="rating d-flex">
                                <li class="on"><i class="fa fa-star-o"></i></li>
                                <li class="on"><i class="fa fa-star-o"></i></li>
                                <li class="on"><i class="fa fa-star-o"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                                <li><i class="fa fa-star-o"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
                </c:forEach>
                <!-- End Single Product -->

			</div>
		</div>
            <!-- End Single Tab Content -->
    </section>
    <!-- Start BEst Seller Area -->
    <!-- Start Testimonial Area -->
    <section class="wn__testimonial__area bg--gray ptb--80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="testimonial__container text-center">
                        <div class="tes__img__slide thumb_active">
                            <div class="testimonial__img">
                                <span><img src="images/testimonial/1.png" alt="testimonial image"></span>
                            </div>
                            <div class="testimonial__img">
                                <span><img src="images/testimonial/2.png" alt="testimonial image"></span>
                            </div>
                            <div class="testimonial__img">
                                <span><img src="images/testimonial/3.png" alt="testimonial image"></span>
                            </div>
                            <div class="testimonial__img">
                                <span><img src="images/testimonial/2.png" alt="testimonial image"></span>
                            </div>
                        </div>
                        <div class="testimonial__text__slide testext_active">
                            <div class="clint__info">
                                <p>absolutely outstanding. When I needed them they came through in a big way! I know
                                    that if you buy this theme, you'll get the one thing we all look for when we buy
                                    on.</p>
                                <div class="name__post">
                                    <span>Ra Munne</span>
                                    <h6>Head Of Project</h6>
                                </div>
                            </div>
                            <div class="clint__info">
                                <p>absolutely outstanding. When I needed them they came through in a big way! I know
                                    that if you buy this theme, you'll get the one thing we all look for when we buy
                                    on.</p>
                                <div class="name__post">
                                    <span>Np Nipa</span>
                                    <h6>Head Of Project</h6>
                                </div>
                            </div>
                            <div class="clint__info">
                                <p>absolutely outstanding. When I needed them they came through in a big way! I know
                                    that if you buy this theme, you'll get the one thing we all look for when we buy
                                    on.</p>
                                <div class="name__post">
                                    <span>Kanak Lata</span>
                                    <h6>Head Of Project</h6>
                                </div>
                            </div>
                            <div class="clint__info">
                                <p>absolutely outstanding. When I needed them they came through in a big way! I know
                                    that if you buy this theme, you'll get the one thing we all look for when we buy
                                    on.</p>
                                <div class="name__post">
                                    <span>orando BLoom</span>
                                    <h6>Head Of Project</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Testimonial Area -->
    <!-- Start Best Seller Area -->
    <section class="wn__bestseller__area bg--white pt--80  pb--30">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">All <span class="color--theme">Products</span></h2>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered lebmid alteration in some ledmid form</p>
                    </div>
                </div>
            </div>
            <div class="row mt--50">
                <div class="col-md-12 col-lg-12 col-sm-12">
                    <div class="product__nav nav justify-content-center" role="tablist">
                        <a class="nav-item nav-link active" data-bs-toggle="tab" href="#nav-all" role="tab">ALL</a>
                        <a class="nav-item nav-link" data-bs-toggle="tab" href="#nav-biographic"
                           role="tab">BIOGRAPHIC</a>
                        <a class="nav-item nav-link" data-bs-toggle="tab" href="#nav-adventure"
                           role="tab">ADVENTURE</a>
                        <a class="nav-item nav-link" data-bs-toggle="tab" href="#nav-children" role="tab">CHILDREN</a>
                        <a class="nav-item nav-link" data-bs-toggle="tab" href="#nav-cook" role="tab">COOK</a>
                        
                    </div>
                </div>
            </div>
            <div class="tab__container tab-content mt--60">
                <!-- Start Single Tab Content -->
                <div class=" single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${productList}" var="o">
                        <div class="single__product">
                            <!-- Start Single Product -->
                            <div class="single__product__inner">
                                <div class="product product__style--3">
                                    <div class="product__thumb">
                                        <a class="first__img" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <a class="second__img animation1" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <div class="hot__box">
                                            <span class="hot-label">${o.hot}</span>
                                        </div>
                                    </div>
                                    <div class="product__content content--center content--center">
                                        <h4><a href="detail?pid=${o.id}">${o.title}</a></h4>
                                        <ul class="price d-flex">
                                            <li>$${o.price}.00</li>
                                            <li class="old_price">$${o.price}.00</li>
                                        </ul>
                                        <div class="action">
                                            <div class="actions_inner">
                                                <ul class="add_to_links">
                                                    <li><a class="cart" href="addtoCart?bookId=${o.id}"><i
                                                            class="bi bi-shopping-bag4"></i></a></li>
                                                    <li><a class="wishlist" href="wishlist.jsp"><i
                                            				class="bi bi-heart-beat"></i></a></li>
                                                    <li><a data-bs-toggle="modal" title="Quick View"
                                                           class="quickview modal-view detail-link"
                                                           href="#productmodal${o.id}"><i class="bi bi-search"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product__hover--content">
                                            <ul class="rating d-flex">
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class=" single__tab tab-pane fade" id="nav-biographic" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${categoryBiography}" var="o">
                        <div class="single__product">
                            <!-- Start Single Product -->
                            
                            <div class="single__product__inner">
                                <div class="product product__style--3">
                                    <div class="product__thumb">
                                        <a class="first__img" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <a class="second__img animation1" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <div class="hot__box">
                                            <span class="hot-label">${o.hot}</span>
                                        </div>
                                    </div>
                                    <div class="product__content content--center content--center">
                                        <h4><a href="detail?pid=${o.id}">${o.title}</a></h4>
                                        <ul class="price d-flex">
                                            <li>$${o.price}.00</li>
                                            <li class="old_price">$${o.price}.00</li>
                                        </ul>
                                        <div class="action">
                                            <div class="actions_inner">
                                                <ul class="add_to_links">
                                                    <li><a class="cart" href="addtoCart?bookId=${o.id}"><i
                                                            class="bi bi-shopping-bag4"></i></a></li>
                                                    <li><a class="wishlist" href="wishlist.jsp"><i
                                            			class="bi bi-heart-beat"></i></a></li>
                                                    <li><a data-bs-toggle="modal" title="Quick View"
                                                           class="quickview modal-view detail-link"
                                                           href="#productmodal${o.id}"><i class="bi bi-search"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product__hover--content">
                                            <ul class="rating d-flex">
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- End Single Product -->
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class=" single__tab tab-pane fade" id="nav-adventure" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${categoryAdventure}" var="o">
                        <div class="single__product">
                            <!-- Start Single Product -->
                            
                            <div class="single__product__inner">
                                <div class="product product__style--3">
                                    <div class="product__thumb">
                                        <a class="first__img" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <a class="second__img animation1" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <div class="hot__box">
                                            <span class="hot-label">${o.hot}</span>
                                        </div>
                                    </div>
                                    <div class="product__content content--center content--center">
                                        <h4><a href="detail?pid=${o.id}">${o.title}</a></h4>
                                        <ul class="price d-flex">
                                            <li>$${o.price}.00</li>
                                            <li class="old_price">$${o.price}.00</li>
                                        </ul>
                                        <div class="action">
                                            <div class="actions_inner">
                                                <ul class="add_to_links">
                                                    <li><a class="cart" href="addtoCart?bookId=${o.id}"><i
                                                            class="bi bi-shopping-bag4"></i></a></li>
                                                    <li><a class="wishlist" href="wishlist.jsp"><i
                                            				class="bi bi-heart-beat"></i></a></li>
                                                    <li><a data-bs-toggle="modal" title="Quick View"
                                                           class="quickview modal-view detail-link"
                                                           href="#productmodal${o.id}"><i class="bi bi-search"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product__hover--content">
                                            <ul class="rating d-flex">
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- End Single Product -->
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class=" single__tab tab-pane fade" id="nav-children" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${categoryChildren}" var="o">
                        <div class="single__product">
                            <!-- Start Single Product -->
                            
                            <div class="single__product__inner">
                                <div class="product product__style--3">
                                    <div class="product__thumb">
                                        <a class="first__img" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <a class="second__img animation1" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <div class="hot__box">
                                            <span class="hot-label">${o.hot}</span>
                                        </div>
                                    </div>
                                    <div class="product__content content--center content--center">
                                        <h4><a href="detail?pid=${o.id}">${o.title}</a></h4>
                                        <ul class="price d-flex">
                                            <li>$${o.price}.00</li>
                                            <li class="old_price">$${o.price}.00</li>
                                        </ul>
                                        <div class="action">
                                            <div class="actions_inner">
                                                <ul class="add_to_links">
                                                    <li><a class="cart" href="addtoCart?bookId=${o.id}"><i
                                                            class="bi bi-shopping-bag4"></i></a></li>
                                                    <li><a class="wishlist" href="wishlist.jsp"><i
                                            				class="bi bi-heart-beat"></i></a></li>
                                                    <li><a data-bs-toggle="modal" title="Quick View"
                                                           class="quickview modal-view detail-link"
                                                           href="#productmodal${o.id}"><i class="bi bi-search"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product__hover--content">
                                            <ul class="rating d-flex">
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- End Single Product -->
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class=" single__tab tab-pane fade" id="nav-cook" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${categoryCookbooks}" var="o">
                        <div class="single__product">
                            <!-- Start Single Product -->
                            <div class="single__product__inner">
                                <div class="product product__style--3">
                                    <div class="product__thumb">
                                        <a class="first__img" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <a class="second__img animation1" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product image"></a>
                                        <div class="hot__box">
                                            <span class="hot-label">${o.hot}</span>
                                        </div>
                                    </div>
                                    <div class="product__content content--center content--center">
                                        <h4><a href="detail?pid=${o.id}">${o.title}</a></h4>
                                        <ul class="price d-flex">
                                            <li>$${o.price}.00</li>
                                            <li class="old_price">$${o.price}.00</li>
                                        </ul>
                                        <div class="action">
                                            <div class="actions_inner">
                                                <ul class="add_to_links">
                                                    <li><a class="cart" href="addtoCart?bookId=${o.id}"><i
                                                            class="bi bi-shopping-bag4"></i></a></li>
                                                    <li><a class="wishlist" href="wishlist.jsp"><i
                                            				class="bi bi-heart-beat"></i></a></li>
                                                    <li><a data-bs-toggle="modal" title="Quick View"
                                                           class="quickview modal-view detail-link"
                                                           href="#productmodal${o.id}"><i class="bi bi-search"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product__hover--content">
                                            <ul class="rating d-flex">
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li class="on"><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- End Single Product -->
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
            </div>
        </div>
    </section>
    <!-- Start BEst Seller Area -->
    <!-- Start NEwsletter Area -->
    <section class="wn__newsletter__area bg-image--2">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 offset-lg-5 col-md-12 col-12 ptb--150">
                    <div class="section__title text-center">
                        <h2>Stay With Us</h2>
                    </div>
                    <div class="newsletter__block text-center">
                        <p>Subscribe to our newsletters now and stay up-to-date with new collections, the latest
                            lookbooks and exclusive offers.</p>
                        <form action="#">
                            <div class="newsletter__box">
                                <input type="email" placeholder="Enter your e-mail">
                                <button>Subscribe</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End NEwsletter Area -->
    <!-- Start Recent Post Area -->
    <section class="wn__recent__post style-two ptb--80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">Our <span class="color--theme">Blog</span></h2>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered lebmid alteration in some ledmid form</p>
                    </div>
                </div>
            </div>
            <div class="row mt--50">
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.jsp">International activities of the Frankfurt Book </a></h3>
                            <p>We are proud to announce the very first the edition of the frankfurt news.We are
                                proud to announce the very first of edition of the fault frankfurt news for us.</p>
                            <div class="post__time">
                                <span class="day">Dec 06, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="#"><i class="bi bi-love"></i>72</a></li>
                                        <li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.jsp">Reading has a signficant info number of benefits</a>
                            </h3>
                            <p>Find all the information you need to ensure your experience.Find all the information
                                you need to ensure your experience . Find all the information you of.</p>
                            <div class="post__time">
                                <span class="day">Mar 08, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="#"><i class="bi bi-love"></i>72</a></li>
                                        <li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.jsp">The London Book Fair is to be packed with exciting </a>
                            </h3>
                            <p>The London Book Fair is the global area inon marketplace for rights negotiation.The
                                year London Book Fair is the global area inon forg marketplace for rights.</p>
                            <div class="post__time">
                                <span class="day">Nov 11, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="#"><i class="bi bi-love"></i>72</a></li>
                                        <li><a href="#"><i class="bi bi-chat-bubble"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Recent Post Area -->
	<jsp:include page="footer.jsp"></jsp:include>
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
        <!-- Modal -->
        <c:forEach items="${productList}" var="o">
        <div class="modal fade" id="productmodal${o.id}" tabindex="-1" role="dialog">
            <div class="modal-dialog modal__container" role="document">
                <div class="modal-content">
                    <div class="modal-header modal__header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <!-- Start product images -->
                            <div class="product-images">
                                <div class="main-image images">
                                    <img alt="big images" src="${o.image}">
                                </div>
                            </div>
                            <!-- end product images -->
                            <div class="product-info">
                                <h1>${o.title}</h1>
                                <div class="rating__and__review">
                                    <ul class="rating">
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                    </ul>
                                    <div class="review">
                                        <a href="#">4 customer reviews</a>
                                    </div>
                                </div>
                                <div class="price-box-3">
                                    <div class="s-price-box">
                                        <span class="new-price">$${o.price}.00</span>
                                        <span class="old-price">$${o.price}.00</span>
                                    </div>
                                </div>
                                <div class="quick-desc">
                                    ${o.description}
                                </div>
                                <div class="social-sharing">
                                    <div class="widget widget_socialsharing_widget">
                                        <h3 class="widget-title-modal">Share this product</h3>
                                        <ul class="social__net social__net--2 d-flex justify-content-start">
                                            <li class="facebook"><a href="#" class="rss social-icon"><i
                                                    class="zmdi zmdi-rss"></i></a></li>
                                            <li class="linkedin"><a href="#" class="linkedin social-icon"><i
                                                    class="zmdi zmdi-linkedin"></i></a></li>
                                            <li class="pinterest"><a href="#" class="pinterest social-icon"><i
                                                    class="zmdi zmdi-pinterest"></i></a></li>
                                            <li class="tumblr"><a href="#" class="tumblr social-icon"><i
                                                    class="zmdi zmdi-tumblr"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="addtocart-btn">
                                    <a href="addtoCart?bookId=${o.id}">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
    <!-- END QUICKVIEW PRODUCT -->
</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<script src="js/vendor/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/active.js"></script>

</body>
</html>