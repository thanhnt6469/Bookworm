<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>My Wishlist | Books Library eCommerce Store</title>
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

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">

    <jsp:include page="header.jsp"></jsp:include>
    <!-- Start breadcrumb area -->
    <div class="ht__breadcrumb__area bg-image--5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__inner text-center">
                        <h2 class="breadcrumb-title">Wishlist</h2>
                        <nav class="breadcrumb-content">
                            <a class="breadcrumb_item" href="home">Home</a>
                            <span class="brd-separator">/</span>
                            <span class="breadcrumb_item active">Wishlist</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End breadcrumb area -->
    <!-- cart-main-area start -->
    <div class="wishlist-area section-padding--lg bg__white">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="wishlist-content">
                        <form action="#">
                            <div class="wishlist-table wnro__table table-responsive">
                                <table>
                                    <thead>
                                    <tr>
                                        <th class="product-remove"></th>
                                        <th class="product-thumbnail"></th>
                                        <th class="product-name"><span class="nobr">Product Name</span></th>
                                        <th class="product-price"><span class="nobr"> Unit Price </span></th>
                                        <th class="product-stock-stauts"><span class="nobr"> Stock Status
													</span></th>
                                        <th class="product-add-to-cart"></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="product-remove"><a href="#">×</a></td>
                                        <td class="product-thumbnail"><a href="#"><img
                                                src="images/product/sm-3/1.jpg" alt=""></a></td>
                                        <td class="product-name"><a href="#">Natoque penatibus</a></td>
                                        <td class="product-price"><span class="amount">$165.00</span></td>
                                        <td class="product-stock-status"><span class="wishlist-in-stock">In
														Stock</span></td>
                                        <td class="product-add-to-cart"><a href="#"> Add to Cart</a></td>
                                    </tr>
                                    <tr>
                                        <td class="product-remove"><a href="#">×</a></td>
                                        <td class="product-thumbnail"><a href="#"><img
                                                src="images/product/sm-3/2.jpg" alt=""></a></td>
                                        <td class="product-name"><a href="#">Quisque fringilla</a></td>
                                        <td class="product-price"><span class="amount">$50.00</span></td>
                                        <td class="product-stock-status"><span class="wishlist-in-stock">In
														Stock</span></td>
                                        <td class="product-add-to-cart"><a href="#"> Add to Cart</a></td>
                                    </tr>
                                    <tr>
                                        <td class="product-remove"><a href="#">×</a></td>
                                        <td class="product-thumbnail"><a href="#"><img
                                                src="images/product/sm-3/3.jpg" alt=""></a></td>
                                        <td class="product-name"><a href="#">Quisque fringilla</a></td>
                                        <td class="product-price"><span class="amount">$65.00</span></td>
                                        <td class="product-stock-status"><span class="wishlist-in-stock">In
														Stock</span></td>
                                        <td class="product-add-to-cart"><a href="#"> Add to Cart</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- cart-main-area end -->
    <!-- Footer Area -->
	<jsp:include page="footer.jsp"></jsp:include>
    <!-- //Footer Area -->

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