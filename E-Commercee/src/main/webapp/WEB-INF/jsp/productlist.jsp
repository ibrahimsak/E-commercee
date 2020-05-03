<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Product Manager</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="/newproduct">Ürün Ekle
					<span class="sr-only">(current)</span>
				</a> <a class="nav-item nav-link" href="/productlist">Ürün Listesi</a>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="table-responsive-sm">
			<table class="table ">
				<thead>
					<tr>
						<th scope="col">Resmi</th>
						<th scope="col">Adı</th>
						<th scope="col">Açıklaması</th>
						<th scope="col">Markası</th>
						<th scope="col">Üretildiği Ülke</th>
						<th scope="col">Fiyati</th>
						<th scope="col">Kategorisi</th>
						<th scope="col"></th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="product" items="${products}">
						<tr>
							<td><img src="${product.picture}" witdh="45px" height="45px" /></td>
							<td>${product.name}</td>
							<td>${product.description}</td>
							<td>${product.brand}</td>
							<td>${product.madein}</td>
							<td>${product.price}</td>
							<td>${product.category.categoryName}</td>
							<td><a href="edit/?id=${product.id}" class="btn btn-primary">
									Güncelle</a></td>
							<td><a href="delete/${product.id}" class="btn btn-danger">
									Sil</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>