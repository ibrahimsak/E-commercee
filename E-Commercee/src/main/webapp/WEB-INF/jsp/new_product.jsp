<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="static/css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body>

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Product Manager</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/newproduct">Yeni Ürün Ekle</a></li>
					<li><a href="all-tasks">Ürün listesi</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class=container>
		<h1>Ürün Ekle</h1>
		<hr>
		<div class="row">
			<div class="col-md-8">
				<form:form action="/save" modelAttribute="product" method="POST"
					class="form-horizontal">
					<!-- need to associate this data with customer id -->

					<form:hidden path="id" />
					<div class="form-group">
						<label for="default" class="col-sm-2 control-label">Ürün
							Adi:</label>
						<div class="col-sm-10">
							<form:input path="name" class="form-control" id="default"
								placeholder="Enter name" />
						</div>
					</div>
					<div class="form-group">
						<label for="default" class="col-sm-2 control-label">Açıklaması:</label>
						<div class="col-sm-10">
							<form:textarea path="description" class="form-control"
								id="default" placeholder="Enter Description" />
						</div>
					</div>
					<div class="form-group">
						<label for="default" class="col-sm-2 control-label">Markası:</label>
						<div class="col-sm-10">
							<form:input path="brand" class="form-control" id="default"
								placeholder="Enter name" />
						</div>

					</div>
					<div class="form-group">
						<label for="default" class="col-sm-2 control-label">Üretim
							Yeri:</label>
						<div class="col-sm-10">
							<form:input path="madein" class="form-control" id="default"
								placeholder="Enter name" />
						</div>

					</div>
					<div class="form-group">
						<label for="default" class="col-sm-2 control-label">Fiyati</label>
						<div class="col-sm-10">
							<form:input path="price" class="form-control" id="default"
								placeholder="Enter name" />
						</div>

					</div>
					<div class="form-group">

						<label for="inputState">State</label>

						<form:select id="inputState" class="form-control" path="category" items="${categories}" itemLabel="categoryName" itemValue="id"></form:select>

					


					</div>


					<input type="submit" value="Ekle" class="btn btn-primary" />
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>