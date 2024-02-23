<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Header -->
    <header id="wn__header" class="oth-page header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-7 col-lg-2">
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
    <!-- Header -->
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
    