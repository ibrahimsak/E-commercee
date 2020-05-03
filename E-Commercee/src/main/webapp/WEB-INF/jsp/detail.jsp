<%@ page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="static/css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="css/style.min.css" rel="stylesheet">

<meta charset="ISO-8859-1">
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
				<a class="nav-item nav-link active" href="#">Ürün Ekle <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="#">Ürün Listesi</a>
			</div>
		</div>
	</nav>
	<!--Main layout-->
	<main class="mt-5 pt-4">
	<div class="container dark-grey-text mt-5">

		<!--Grid row-->
		<div class="row wow fadeIn">
			
			<!--Grid column-->
			<div class="col-md-6 mb-4">

				<img src="${product.picture}" class="img-fluid" alt="..."/>

			</div>
			<!--Grid column-->

			<!--Grid column-->
			<div class="col-md-6 mb-4">

				<!--Content-->
				<div class="p-4">
					<div class="mb-3">
						<a href=""> <span class="badge purple mr-1">${product.name}</span>
						</a> <a href=""> <span class="badge blue mr-1"></span>
						</a> <a href=""> <span class="badge red mr-1"></span>
						</a>
					</div>
					<div class="mb-3">
						<p class="lead font-weight-bold">${product.name}</p>

					</div>



					<p class="lead">
						<span class="mr-1"> <del>$200</del>
						</span> <span>${products.price}</span>
					</p>

					<p class="lead font-weight-bold">Description</p>

					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Et
						dolor suscipit libero eos atque quia ipsa sint voluptatibus!
						Beatae sit assumenda asperiores iure at maxime atque repellendus
						maiores quia sapiente.</p>

					<form class="d-flex justify-content-left">
						<!-- Default input -->
						<input type="number" value="1" aria-label="Search"
							class="form-control" style="width: 100px">
						<button class="btn btn-primary btn-md my-0 p" type="submit">
							Add to cart <i class="fas fa-shopping-cart ml-1"></i>
						</button>

					</form>

				</div>
				<!--Content-->

			</div>
			<!--Grid column-->

		</div>
		<!--Grid row-->

		<hr>

		<!--Grid row-->
		<div class="row d-flex justify-content-center wow fadeIn">

			<!--Grid column-->
			<div class="col-md-6 text-center">

				<h4 class="my-4 h4">Additional information</h4>

				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Natus suscipit modi sapiente illo soluta odit voluptates, quibusdam
					officia. Neque quibusdam quas a quis porro? Molestias illo neque
					eum in laborum.</p>

			</div>
			<!--Grid column-->

		</div>
		<!--Grid row-->

		<!--Grid row-->
		<div class="row wow fadeIn">

			<!--Grid column-->
			<div class="col-lg-4 col-md-12 mb-4">

				<img
					src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/11.jpg"
					class="img-fluid" alt="">

			</div>
			<!--Grid column-->

			<!--Grid column-->
			<div class="col-lg-4 col-md-6 mb-4">

				<img
					src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/12.jpg"
					class="img-fluid" alt="">

			</div>
			<!--Grid column-->

			<!--Grid column-->
			<div class="col-lg-4 col-md-6 mb-4">

				<img
					src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg"
					class="img-fluid" alt="">

			</div>
			<!--Grid column-->

		</div>
		<!--Grid row-->

	</div>
	</main>
	<!--Main layout-->
	<img src="${products.picture}" class="card-img-top" alt="..." /> Ürün
	Adi:
	<p>${products.name}</p>
	Açıklaması:
	<p>${products.description}</p>
	Markası:
	<p>${products.brand}</p>
	Üretildiği Ülke:
	<p>${products.madein}</p>
	Fiyat:
	<p>${products.price}</p>

</body>
</html>