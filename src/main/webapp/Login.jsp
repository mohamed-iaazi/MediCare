<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 20/02/2025
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <!-- Navbar brand -->
            <a class="navbar-brand h1 mb-0 " href="#">DocotrRv</a>

            <!-- Navbar toggler -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon "></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse ps-3" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="appointement">Appointement</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">Services</a>
                    </li>
                </ul>
                <section class="d-flex justify-content-end w-75">
                    <button class="m-2 rounded-1 btn-signup" >
                        <a id="login" class="nav-link" href="./">  Take Appointement</a>
                      </button>
                </section>
            </div>
        </div>
    </nav>
</header>

<section class="back d-block pt-5">
<div class="card pt-5 d-block ms-auto me-auto   ">
    <form  action="login"  method="post">
        <div class="ms-auto me-auto ">
            <h1 class="text-center p-1 text-dark">Login</h1>
            <h4 class="text-center h6  text-secondary">DoctorRv</h4>

            <input class="mt-3" type="text" class="form-control" id="username" name="username" aria-describedby="username" placeholder="User Name">
            <input  class="mt-3" type="password" id="password" name="password" placeholder="Password">
        </div>

        <button  class="mt-4 me-2 d-block ms-auto me-auto " type="submit">Login</button>
    </form>

</div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>
