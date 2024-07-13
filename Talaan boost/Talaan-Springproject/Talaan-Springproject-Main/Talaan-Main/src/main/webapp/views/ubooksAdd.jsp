<!doctype html>
<%@page import="java.sql.*"%>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport"
			content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/views/css/index.css" type="text/css">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
			integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
			crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
			integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
			crossorigin="anonymous"></script>
			<script src="https://kit.fontawesome.com/9211c1028d.js" crossorigin="anonymous"></script>
		<title>Add a Book</title>
		<link rel="shortcut icon" href="/views/favicon.ico" type="image/x-icon" />
	
	</head>
<body>
	<header>
        <div class="leftnav">
            <a href="/index"><img src="${pageContext.request.contextPath}/views/imgs/arctic.png"></a>
            <a href="/user/books"><i class="fa-solid fa-lg fa-store"></i></a>
            
        </div>
        <div class="rightnav">
            <a href="/profile"><i class="fa-solid fa-lg fa-user-astronaut"></i></a>
            <a sec:authorize="isAuthenticated()" href="/logout"><i class="fa-solid fa-right-from-bracket"></i></a>
        </div>
    </header>
	<section class="home" id="home">
        <div class="content content-add">
            <div class="title">
                <h3>Sell a book!</h3>
            </div>
            <span class="divider"></span>
			<form id="request" action="/request" method="post" >
				<div class="row">
					
					<div class="col-12">
						<label for="title" class="form-label">Title</label>
						<input type="text" name="title" class="form-control"  placeholder="Book">
					</div>
				</div>
				<div class="row">
					<div class="col-6">
						<label for="author" class="form-label">Author</label>
						<input type="text" name="author" class="form-control"  placeholder="Author Name">

						<label for="year" class="form-label">Year </label>
						<input type="text" name="year" class="form-control"  placeholder="Year Published">

						<label for="quantity" class="form-label">Quantity</label>
						<input type="text" name="quantity" class="form-control"  placeholder="10">

						<label for="rprice" class="form-label">Price</label>
						<input type="text" name="price" class="form-control"  placeholder="1000">
					</div>
					<div class="col-6"> <br>
						<label for="genre">Select Genre</label> 
						<input type="text" name="genre" class="form-control"  placeholder="Proposed Genre">
						
						<label for="desc" name="description" class="form-label">Description</label>
						<textarea class="form-control" name="desc"  rows="2"></textarea>
						<br>
						<label for="email" class="form-label">Email</label>
						<input type="text" name="email" class="form-control"  placeholder="Contact Info">
					</div>
					</div>
					<br>
						<button type="submit" class="btn">Request</button>
					</div>
				</div>
			</form>
            
        </div>

    </section>	

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>