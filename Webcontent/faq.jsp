<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Faq | Books Library eCommerce Store</title>
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
    <div class="ht__breadcrumb__area bg-image--4">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__inner text-center">
                        <h2 class="breadcrumb-title">Faq</h2>
                        <nav class="breadcrumb-content">
                            <a class="breadcrumb_item" href="home">Home</a>
                            <span class="brd-separator">/</span>
                            <span class="breadcrumb_item active">Faq</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End breadcrumb area -->
    <!-- Start Faq Area -->
    <section class="wn__faq__area bg--white pt--80 pb--60">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="wn__accordeion__content">
                        <h2>Below are frequently asked questions, you may find the answer for yourself</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id erat sagittis, faucibus
                            metus malesuada, eleifend turpis. Mauris semper augue id nisl aliquet, a porta lectus
                            mattis. Nulla at tortor augue. In eget enim diam. Donec gravida tortor sem, ac fermentum
                            nibh rutrum sit amet. Nulla convallis mauris vitae congue consequat. Donec interdum nunc
                            purus, vitae vulputate arcu fringilla quis. Vivamus iaculis euismod dui.</p>
                    </div>
                    <div id="accordion" class="wn_accordion" role="tablist">
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingOne">
                                <h5>
                                    <a data-bs-toggle="collapse" href="#collapseOne" role="button" aria-expanded="true"
                                       aria-controls="collapseOne">Mauris congue euismod purus at semper. Morbi et
                                        vulputate massa?</a>
                                </h5>
                            </div>
                            <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne"
                                 data-bs-parent="#accordion">
                                <div class="card-body">Donec mattis finibus elit ut tristique. Nullam tempus nunc
                                    eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam
                                    consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla
                                    ultricies, elit lorem eleifend lorem
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingTwo">
                                <h5>
                                    <a class="collapsed" data-bs-toggle="collapse" href="#collapseTwo" role="button"
                                       aria-expanded="false" aria-controls="collapseTwo">
                                        Djanj sit amet, consectetur adipisicing elit, sed do eiusmod tem pororem ?.
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo"
                                 data-bs-parent="#accordion">
                                <div class="card-body">Donec mattis finibus elit ut tristique. Nullam tempus nunc
                                    eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam
                                    consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla
                                    ultricies, elit lorem eleifend lorem
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingThree">
                                <h5>
                                    <a class="collapsed" data-bs-toggle="collapse" href="#collapseThree" role="button"
                                       aria-expanded="false" aria-controls="collapseThree">
                                        Vestibulum a lorem placerat, porttitor urna vel?</a>
                                </h5>
                            </div>
                            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree"
                                 data-bs-parent="#accordion">
                                <div class="card-body">Donec mattis finibus elit ut tristique. Nullam tempus nunc
                                    eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam
                                    consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla
                                    ultricies, elit lorem eleifend lorem
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingFour">
                                <h5>
                                    <a class="collapsed" data-bs-toggle="collapse" href="#collapseFour" role="button"
                                       aria-expanded="false" aria-controls="collapseFour">
                                        Aenean elit orci, efficitur quis nisl at, accumsan? </a>
                                </h5>
                            </div>
                            <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour"
                                 data-bs-parent="#accordion">
                                <div class="card-body">Donec mattis finibus elit ut tristique. Nullam tempus nunc
                                    eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam
                                    consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla
                                    ultricies, elit lorem eleifend lorem
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingFive">
                                <h5>
                                    <a class="collapsed" data-bs-toggle="collapse" href="#collapseFive" role="button"
                                       aria-expanded="false" aria-controls="collapseFive">
                                        Pellentesque habitant morbi tristique senectus et netus?</a>
                                </h5>
                            </div>
                            <div id="collapseFive" class="collapse" role="tabpanel" aria-labelledby="headingFive"
                                 data-bs-parent="#accordion">
                                <div class="card-body">Donec mattis finibus elit ut tristique. Nullam tempus nunc
                                    eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam
                                    consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla
                                    ultricies, elit lorem eleifend lorem
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingSix">
                                <h5>
                                    <a class="collapsed" data-bs-toggle="collapse" href="#collapseSix" role="button"
                                       aria-expanded="false" aria-controls="collapseSix">
                                        Aenean elit orci, efficitur quis nisl at?</a>
                                </h5>
                            </div>
                            <div id="collapseSix" class="collapse" role="tabpanel" aria-labelledby="headingSix"
                                 data-bs-parent="#accordion">
                                <div class="card-body">Donec mattis finibus elit ut tristique. Nullam tempus nunc
                                    eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam
                                    consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla
                                    ultricies, elit lorem eleifend lorem
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingSeven">
                                <h5>
                                    <a class="collapsed" data-bs-toggle="collapse" href="#collapseSeven" role="button"
                                       aria-expanded="false" aria-controls="collapseSeven">
                                        Morbi gravida, nisi id fringilla ultricies, elit lorem?</a>
                                </h5>
                            </div>
                            <div id="collapseSeven" class="collapse" role="tabpanel" aria-labelledby="headingSeven"
                                 data-bs-parent="#accordion">
                                <div class="card-body">Donec mattis finibus elit ut tristique. Nullam tempus nunc
                                    eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam
                                    consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla
                                    ultricies, elit lorem eleifend lorem
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="acc-header" role="tab" id="headingEight">
                                <h5>
                                    <a class="collapsed" data-bs-toggle="collapse" href="#collapseEight" role="button"
                                       aria-expanded="false" aria-controls="collapseEight">
                                        Djanj sit amet, consectetur adipisicing elit, sed do eiusmod tem pororem ?.
                                    </a>
                                </h5>
                            </div>
                            <div id="collapseEight" class="collapse" role="tabpanel" aria-labelledby="headingEight"
                                 data-bs-parent="#accordion">
                                <div class="card-body">Donec mattis finibus elit ut tristique. Nullam tempus nunc
                                    eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam
                                    consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla
                                    ultricies, elit lorem eleifend lorem
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Faq Area -->
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