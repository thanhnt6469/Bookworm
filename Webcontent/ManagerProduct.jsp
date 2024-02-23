<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Manager Product</title>
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


<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<style>
    body {
        color: #566787;
        background: #f5f5f5;
        font-family: 'Varela Round', sans-serif;
        font-size: 13px;
    }
    .table-responsive {
        margin: 30px 0;
    }
    .table-wrapper {
        background: #fff;
        padding: 20px 25px;
        border-radius: 3px;
        min-width: 1000px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .table-title {        
        padding-bottom: 15px;
        background: #435d7d;
        color: #fff;
        padding: 16px 30px;
        min-width: 100%;
        margin: -20px -25px 10px;
        border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
        margin: 5px 0 0;
        font-size: 24px;
    }
    
    .table-title .btn {
        color: #fff;
        float: right;
        font-size: 13px;
        border: none;
        min-width: 50px;
        border-radius: 2px;
        border: none;
        outline: none !important;
        margin-left: 10px;
    }
    .table-title .btn i {
        float: left;
        font-size: 21px;
        margin-right: 5px;
    }
    .table-title .btn span {
        float: left;
        margin-top: 2px;
    }
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
        padding: 12px 15px;
        vertical-align: middle;
    }
    table.table tr th:first-child {
        width: 60px;
    }
    table.table tr th:last-child {
        width: 100px;
    }
    table.table-striped tbody tr:nth-of-type(odd) {
        background-color: #fcfcfc;
    }
    table.table-striped.table-hover tbody tr:hover {
        background: #f5f5f5;
    }
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
        opacity: 0.9;
        font-size: 22px;
        margin: 0 5px;
    }
    table.table td a {
        font-weight: bold;
        color: #566787;
        display: inline-block;
        text-decoration: none;
        outline: none !important;
    }
    table.table td a:hover {
        color: #2196F3;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
    }
    table.table .avatar {
        border-radius: 50%;
        vertical-align: middle;
        margin-right: 10px;
    }
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.acitve a.page-link{
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
    .pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    
    /* Modal styles */
    .modal .modal-dialog {
        max-width: 400px;
    }
    .modal .modal-header, .modal .modal-body, .modal .modal-footer {
        padding: 20px 30px;
    }
    .modal .modal-content {
        border-radius: 3px;
        font-size: 14px;
    }
    .modal .modal-footer {
        background: #ecf0f1;
        border-radius: 0 0 3px 3px;
    }
    .modal .modal-title {
        display: inline-block;
    }
    .modal .form-control {
        border-radius: 2px;
        box-shadow: none;
        border-color: #dddddd;
    }
    .modal textarea.form-control {
        resize: vertical;
    }
    .modal .btn {
        border-radius: 2px;
        min-width: 100px;
    }	
    .modal form label {
        font-weight: normal;
    }	
</style>

</head>
<body>

<div class="wrapper" id="wrapper">
<jsp:include page="header.jsp"></jsp:include>
<!-- Start breadcrumb area -->
    <div class="ht__breadcrumb__area bg-image--6">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__inner text-center">
                        <h2 class="breadcrumb-title">Manager Product</h2>
                        <nav class="breadcrumb-content">
                            <a class="breadcrumb_item" href="home">Home</a>
                            <span class="brd-separator">/</span>
                            <span class="breadcrumb_item active">Manager Product</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End breadcrumb area -->
<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Manage <b>Product</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>						
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						
						<th>ID</th>
						<th>Name</th>
                        <th>Image</th>
						<th>Price</th>
						<th>Desciption</th>
						<th>Hot</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${productPage}" var="o">
					<tr>
						<td>${o.id}</td>
						<td>${o.title}</td>
						<td><img src="${o.image}" width="50px"></td>
						<td>$${o.price}.00</td>
						<td>${o.description}</td>
                        <td>${o.hot}</td>
						<td>
							<a href="#editEmployeeModal${o.id}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
							<a href="#deleteEmployeeModal${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="clearfix">
				<ul class="pagination">
				<c:forEach begin="1" end="${end}" var="i">
					<li class="page-item d-flex ${tag == i ? "active":""}">
						<a href="managerProduct?index=${i}" class="page-link">${i}</a>
					</li>
				</c:forEach>
				</ul>
			</div>
		</div>
	</div>        
</div>

<!-- Add Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="add" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">Add Product</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group mb-2">
						<label>Name</label>
						<input name="name" type="text" class="form-control" required>
					</div>
					<div class="form-group mb-2">
						<label>Image</label>
						<input name="image" type="text" class="form-control" required>
					</div>
                    <div class="form-group mb-2">
						<label>Price</label>
						<input name="price" type="text" class="form-control" required>
					</div>
					<div class="form-group mb-2">
						<label>Desciption</label>
						<textarea name="description" class="form-control" required></textarea>
					</div>
                    <div class="form-group mb-2">
						<label>Hot</label>
						<select name="hot" class="form-control">
                            <option value="HOT">HOT</option>
                            <option value="BEST SELLER">BEST SELLER</option>
                        </select>
					</div>
                    <div class="form-group">
						<label>Category</label>
						<select name="category" class="form-control">
                            <c:forEach items="${categoryList}" var="o">
                            	<option value="${o.cid}">${o.cname}</option>
                            </c:forEach>
                        </select>
					</div>	
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-success" value="Add">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- Edit Modal HTML -->
<c:forEach items="${productList}" var="o">
<div id="editEmployeeModal${o.id}" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="edit" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">Edit Product</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-group mb-2">
						<label>ID</label>
						<input value="${o.id}" name="id" type="text" readonly class="form-control" required>
					</div>				
					<div class="form-group mb-2">
						<label>Name</label>
						<input value="${o.title}" name="name" type="text" class="form-control" required>
					</div>
					<div class="form-group mb-2">
						<label>Image</label><br>
						<input value="${o.image}" name="image" type="text" class="form-control" required>
					</div>
                    <div class="form-group mb-2">
						<label>Price</label>
						<input value="${o.price}" name="price" type="text" class="form-control" required>
					</div>	
					<div class="form-group mb-2">
						<label>Desciption</label>
						<textarea name="description" class="form-control" required>${o.description}</textarea>
					</div>
					<div class="form-group mb-2">
						<label>Hot</label><br>
						<select name="hot" class="form-control">
                            <option value="${o.hot}">${o.hot}</option>
                        </select>
					</div>
					<div class="form-group">
						<label>Category</label>
						<select name="category" class="form-control">
                            <c:forEach items="${categoryList}" var="c">
                            	<option ${o.categoryID == c.cid ? "selected":""} value="${c.cid}">${c.cname}</option>
                            </c:forEach>
                            
                        </select>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-info" value="Save">
				</div>
			</form>
		</div>
	</div>
</div>
</c:forEach>
<!-- Delete Modal HTML -->
<c:forEach items="${productList}" var="o">
<div id="deleteEmployeeModal${o.id}" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="delete?pid=${o.id}" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">Delete Product</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>Are you sure you want to delete these Records?</p>
					<p class="text-warning"><small>This action cannot be undone.</small></p>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-danger" value="Delete">
				</div>
			</form>
		</div>
	</div>
</div>
</c:forEach>

<jsp:include page="footer.jsp"></jsp:include>
</div>
<!-- JS Files 
<script src="js/vendor/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/vendor/bootstrap.min.js"></script>-->
<script src="js/plugins.js"></script>
<script src="js/active.js"></script>
</body>
</html>