<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
    xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">

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
    <title>Talaan</title>
    <link rel="shortcut icon" href="/views/favicon.ico" type="image/x-icon" />

</head>

<body>
    <header>
        <div class="leftnav">
            <a href="/index"><img src="${pageContext.request.contextPath}/views/imgs/arctic.png"></a>
            <a href="/user/books"><i class="fa-solid fa-lg fa-store"></i></a>
            <a href="/user/books/add"><i class="fa-solid fa-lg fa-boxes-packing"></i></a>
        </div>
        <div class="rightnav">
            <a href="/profileDisplay"><i class="fa-solid fa-lg fa-user-astronaut"></i></a>
            <a sec:authorize="isAuthenticated()" href="/logout"><i class="fa-solid fa-right-from-bracket"></i></a>
        </div>
    </header>

    <section class="home" id="home">
        <div class="content">
            <div class="row">
                <div class="title col-6">
                    <h3>T<img src="${pageContext.request.contextPath}/views/imgs/kohi.png">laan</h3>
                    <p>An online hub written by pinoys, for pinoys!</p>
                    <a href="/user/books" class="btn">See more</a>
                </div>
                <div class="col-6">
                    <img src="${pageContext.request.contextPath}/views/imgs/header.png">
                </div>
            </div>
        </div>

    </section>

    <section class="about" id="about">
        <div class="row">
            <div class="col-3 feature">
                <img src="${pageContext.request.contextPath}/views/imgs/bg2.jpg">
                <h3>Wide catalog of Unique Filipino Books</h3>
            </div>
            <div class="col-3 feature">
                <img src="${pageContext.request.contextPath}/views/imgs/bg3.jpg">
                <h3>Online Book Friendly</h3>
            </div>
            <div class="col-6 content">
                <h3>Why Talaan?</h3>
                <p>Talaan focuses on Filipino writers and artists bringing empowerment to Filipino Culture through books!</p>

            </div>
        </div>

    </section>
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>