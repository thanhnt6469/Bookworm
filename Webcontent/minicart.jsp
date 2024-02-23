<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-md-8 col-sm-8 col-5 col-lg-2">
	<ul
		class="header__sidebar__right d-flex justify-content-end align-items-center">
		<li class="shop_search"><a class="search__active" href="#"></a></li>
		<li class="wishlist"><a href="wishlist.jsp"></a></li>
		<li class="shopcart"><a class="cartbox_active" href="#"><span
				<c:set var="size" value="${sessionScope.size}"/> class="product_qun">${size}</span></a>
			<!-- Start Shopping Cart -->
			<div class="block-minicart minicart__active">
				<div class="minicart-content-wrapper">
					<div class="micart__close">
						<span>close</span>
					</div>
					<div class="mini_action checkout">
						<a class="checkout__btn" href="addtoCart">Go to Checkout</a>
					</div>
					<c:forEach items="${order.items}" var="item">
						<div class="single__items">
							<div class="miniproduct">
								<div class="item01 d-flex">
									<div class="thumb">
										<a href="detail?pid=${item.id}"><img
											src="${item.book.image}" alt="product images" class="w-50"></a>
									</div>
									<div class="content">
										<h6>
											<a href="detail?pid=${item.id}">${item.book.title}</a>
										</h6>
										<span class="price">$${item.price}.00</span>
										<div class="product_price d-flex justify-content-between">
											<span class="qun">Qty: ${item.quantity}</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
			</div> <!-- End Shopping Cart --></li>
		<li class="setting__bar__icon"><a class="setting__active"
			href="#"></a>
			<div class="searchbar__content setting__block">
				<div class="content-inner">
					<div class="switcher-currency">
						<strong class="label switcher-label"> <c:if
								test="${sessionScope.acc == null}">
								<span>My Account: </span>
							</c:if> <c:if test="${sessionScope.acc != null}">
								<span>My Account: ${sessionScope.acc.user}</span>
							</c:if>
						</strong>
						<div class="switcher-options ms-3">
							<div class="switcher-currency-trigger">
								<div class="setting__menu">
									<c:if test="${sessionScope.acc == null}">
										<span><a href="sign-in.jsp">Sign In</a></span>
										<span><a href="sign-up.jsp">Create An Account</a></span>
									</c:if>
									<c:if test="${sessionScope.acc.isAdmin == 1}">
										<span><a href="managerAccount"><b>Manager Account</b></a></span>
									</c:if>
									<c:if test="${sessionScope.acc.isSell == 1}">
										<span><a href="managerProduct"><b>Manager
													Product</b></a></span>
									</c:if>
									<c:if test="${sessionScope.acc != null}">
										<span><a href="logout"><b>Logout</b></a></span>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div></li>
	</ul>
</div>