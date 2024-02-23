<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>shop | Books Library eCommerce Store</title>
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

    <jsp:include page="header.jsp"></jsp:include>
    <!-- Start breadcrumb area -->
    <div class="ht__breadcrumb__area bg-image--6">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__inner text-center">
                        <h2 class="breadcrumb-title">Shop</h2>
                        <nav class="breadcrumb-content">
                            <a class="breadcrumb_item" href="home">Home</a>
                            <span class="brd-separator">/</span>
                            <span class="breadcrumb_item active">Shop</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End breadcrumb area -->
    <!-- Start Shop Page -->
    <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="widget__categories products--cat">
                            <h3 class="widget__title"><a href="shop">Product Categories</a></h3>
                            <ul>
                            	<c:forEach items="${categoryList}" var="o">
                                <li><a href="category?cid=${o.cid}" class="${tagCategory == o.cid ? "active":""}">${o.cname}</a></li>
                                </c:forEach>
                            </ul>
                        </aside>
                        <aside class="widget__categories products--tag">
                            <h3 class="widget__title">Product Tags</h3>
                            <ul>
                                <c:forEach items="${categoryList}" var="o">
                                <li><a href="tag?cid=${o.cid}" class="${tagsCategory == o.cid ? "active":""}">${o.cname}</a></li>
                                </c:forEach>
                            </ul>
                        </aside>
                        <aside class="widget__categories sidebar--banner">
                            <img src="images/others/banner_left.jpg" alt="banner images">
                            <div class="text">
                                <h2>new products</h2>
                                <h6>save up to <br> <strong>40%</strong>off</h6>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-9 col-12 order-1 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12">
                            <div
                                    class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
                                <div class="shop__list nav justify-content-center" role="tablist">
                                    <a class="nav-item nav-link active" data-bs-toggle="tab" href="#nav-grid"
                                       role="tab"><i class="fa fa-th"></i></a>
                                    <a class="nav-item nav-link" data-bs-toggle="tab" href="#nav-list" role="tab"><i
                                            class="fa fa-list"></i></a>
                                </div>
                                <p>Showing 1–12 of 40 results</p>
                                <div class="orderby__wrapper">
                                    <form action="shop" method="post">
	                                    <select class="shot__byselect" name="sort">
	                                        <option value="none">Default sorting</option>
	                                        <option value="title ASC">A - Z</option>
	                                        <option value="title DESC">Z - A</option>
	                                        <option value="price ASC">PRICE ASC</option>
	                                        <option value="price DESC">PRICE DESC</option>
	                                    </select>
	                                    <div class="price--filter">
	                                        <a><input type="submit" value="Filter" style="background: none; border: none; color: white;"></a>
	                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab__container tab-content">
                        <div class="shop tab-pane fade show active" id="nav-grid" role="tabpanel">
                            <div class="row">
                                <!-- Start Single Product -->
                                <c:forEach items="${productList}" var="o">
                                <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
                                    <div class="product__thumb">
                                        <a class="first__img" href="category?cid=${o.id}">
                                        <img src="${o.image}" alt="1"></a>
                                        <a class="second__img animation1" href="detail?pid=${o.id}">
                                        <img src="${o.image}" alt="2"></a>
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
                                </c:forEach>
                                
                                <!-- End Single Product -->
								<ul class="wn__pagination my-5">
									<c:forEach begin="1" end="${end}" var="i">
										<li class="${tag == i ? "active":""}"><a href="shop?index=${i}">${i}</a></li>
									</c:forEach>
                            	</ul>
                            </div>
                        </div>
                        <div class="shop tab-pane fade" id="nav-list" role="tabpanel">
                        	<div class="list__view__wrapper">
                                <!-- Start Single Product -->
                                <c:forEach items="${productList}" var="o">
                                <div class="list__view my-5 product">
                                    <div class="thumb product__thumb">
                                        <a class="first__img" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product images"></a>
                                        <a class="second__img animation1" href="detail?pid=${o.id}"><img
                                                src="${o.image}" alt="product images"></a>
                                        <div class="hot__box">
                                            <span class="hot-label">${o.hot}</span>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <h2><a href="detail?pid=${o.id}">${o.title}</a></h2>
                                        <ul class="rating d-flex">
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li class="on"><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                        </ul>
                                        <ul class="price__box">
                                            <li>$${o.price}.00</li>
                                            <li class="old__price">$${o.price}.00</li>
                                        </ul>
                                        <p>${o.description}</p>
                                        <ul class="cart__action d-flex">
                                            <li class="cart"><a href="addtoCart?bookId=${o.id}">Add to cart</a></li>
                                            <li class="wishlist"><a href="#"></a></li>
                                            
                                        </ul>
                                    </div>
                                </div>
                                </c:forEach>
                                <!-- End Single Product -->
                            </div>
                            <ul class="wn__pagination my-5">
                                <c:forEach begin="1" end="${end}" var="i">
										<li class="${tag == i ? "active":""}"><a href="shop?index=${i}">${i}</a></li>
								</c:forEach>
                            </ul>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Shop Page -->
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