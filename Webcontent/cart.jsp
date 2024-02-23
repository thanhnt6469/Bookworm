<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shopping Cart | Books Library eCommerce Store</title>
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
    <div class="ht__breadcrumb__area bg-image--3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__inner text-center">
                        <h2 class="breadcrumb-title">Shopping Cart</h2>
                        <nav class="breadcrumb-content">
                            <a class="breadcrumb_item" href="home">Home</a>
                            <span class="brd-separator">/</span>
                            <span class="breadcrumb_item active">Shopping Cart</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End breadcrumb area -->
    <!-- cart-main-area start -->
    <div class="cart-main-area section-padding--lg bg--white">
        <div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 ol-lg-12">
						<form action="updateCart" method="post">
							<div class="table-content wnro__table table-responsive">
								<table>
									<thead>
										<tr class="title-top">
											<th class="product-thumbnail">ID</th>
											<th class="product-thumbnail">Image</th>
											<th class="product-name">Product</th>
											<th class="product-price">Price</th>
											<th class="product-quantity">Quantity</th>
											<th class="product-subtotal">Total</th>
											<th class="product-remove">Remove</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${order.items}" var="item">
											<tr>
												<td class="product-thumbnail">${item.book.id}</td>
												<td class="product-thumbnail"><a href="#"><img
														src="${item.book.image}"></a></td>
												<td class="product-name"><a href="#">${item.book.title}</a></td>
												<td class="product-price"><span class="amount">$${item.price}.00</span></td>
												<td class="product-quantity">
													<input type="number" name="quantity_${item.book.id}" min="1" value="${item.quantity}">

												</td>
												<td class="product-subtotal">$${item.quantity*item.book.price}.00</td>
												<td class="product-remove"><a
													href="removeCart?bookId=${item.book.id}">X</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="cartbox__btn">
								<ul
									class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-end">
									<li><button type="submit" class="btn btn-outline-danger px-5 py-3 fs-5 me-5">Update
											Cart</button></li>
									<li><button class="btn btn-outline-success"><a href="checkout.jsp" class="px-5 fs-5" style="background:none;">Check Out</a></button></li>
								</ul>
							</div>
						</form>
					</div>
				</div>
				<div class="row">
                <div class="col-lg-6 offset-lg-6">
                    <div class="cartbox__total__area">
                        <div class="cart__total__amount">
                            <span>Grand Total</span>
                            <c:set var="total" value="${sessionScope.total}"/>
                         	<span>$${total}0</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- cart-main-area end -->
    <jsp:include page="footer.jsp"></jsp:include>

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