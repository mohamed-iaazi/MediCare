<%--
    Document   : newjsp
    Created on : 18 févr. 2025, 10:27:23
    Author     : iaazi
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docotr Rv </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">

</head>
<style>
    :root {
        --blue : #096096;
        --text-lightBlack-color: #383636;
        --font:'Segoe UI', Tahoma, Verdana, sans-serif;
    }

    button {
        padding: 4px 10px;
        border: #09609646 2px solid;
        background-color: var(--blue);
        color: white;
        font-size: 13px;
    }
    .line{
        background-color: var(--blue);
        height: 2px;
        opacity: 0.05;
        width: 99%;

    }
    header{
        /* background-color: #09609646; */
        background-color: rgb(255, 255, 255);
    }
    .card{
        width: 300px;
        /* position: relative;
        top: 20%;
        left: 10%; */
        margin-left: 10%;
    }

    input ,select , option{
        padding: 4px 6px;
        outline: #26caf326 solid 2px;
        background-color:#26caf326;
        border: none;
        border-radius: 4px;
        color: #8d8b8b;
        width: 250px;
    }
    form div {
        width: 250px;
    }
    button {
        background-color: #0a58ca;
        border: 1px transparent solid;
        border-radius: 4px;
        padding: 8px 10px;
        margin-bottom: 10px;
    }

    .back {
        height: 100vh;
        background: linear-gradient(to top, rgba(0, 37, 246, 0.29), rgba(52, 167, 245, 0.65)), url('https://i.ibb.co/9HjLLFdm/img.jpg') no-repeat top center ;
        background-size: cover;



    }
    .back h1 {
        color: white;
        font-size: 30px;
        padding: 20px 10px;
        font-weight: bolder;
        text-align: center;

    }
    p{
        text-align: center;
        color: white;
    }
    .discover{
        background-color: white;
        color: rgba(52, 167, 245, 0.65);
        border: rgba(52, 167, 245, 0.65) 1.5px solid;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
        font-size: 12px;
        margin: 10px 0;
        margin-bottom: 10px;
    }
    button:hover{
        color: rgba(52, 167, 245, 0.65);
        background-color: white;
        border: rgba(52, 167, 245, 0.65) solid 0.1px;

    }
    .discover:hover{
        background-color: rgba(52, 167, 245, 0.65);
        color: white;



    }

    footer {
        background-color: #09609646;
        color: white;
        height: 100px;
    }
    span{
        color: rgba(52, 167, 245, 0.65);
        font-size: 10px;
        font-weight: bold;
        font-family: var(--font), cursive;
    }


    .cards{
        border: solid 1px rgba(52, 80, 223, 0.295);
        width: fit-content;
        height: 70px;
        border-radius: 5px;
        box-shadow: 0 0 10px 0 rgb(241, 235, 235);
        padding: 10px;
        display: flex;
        gap: 40px;
        align-items: center;
        border-bottom: #0ecfff solid 10px;

    }
</style>
<body>
<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <!-- Navbar brand -->
            <a class="navbar-brand h1 mb-0 " href="#">DocotrRv..</a>

            <!-- Navbar toggler -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon "></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse ps-3" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item">
                        <a class="nav-link" href="appointment">Appointement</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">Services</a>
                    </li>
                </ul>
                <section class="d-flex justify-content-end w-75">
                    <button class="m-2 rounded-1 btn-signup" > Take Appointement</button>
                    <button class="m-2 rounded-1 btn-login" href="login"  >
                        <a id="login" class="nav-link" href="loginForm">Login</a>


                    </button>
                </section>
            </div>
        </div>
    </nav>
</header>
<div class="line ms-auto me-auto"></div>


<section class="back d-block">

    <h1>Providing An Exeptional <br> Patient Experience</h1>
    <div class="row me-0">
        <div class="card p-3  col-sm-12 col-md-4 col-lg-4 col-xl-4">
            <form  action="insert"  method="post">
                <div class="ms-auto me-auto ">

                    <input class="mt-3" type="text" class="form-control" id="username" name="username" aria-describedby="username" placeholder="User Name">
                    <input class="mt-3" type="email" class="form-control" id="email" name="email" placeholder="Email">
                    <input class="mt-3" type="date" id="day" name="date" placeholder="Choose A day">
                    <select name="doctor" class="d-block mt-3" aria-label="Default select">
                        <option selected  disabled>select doctor</option>
                        <option value="mohamed">Mr Mohamed</option>
                        <option value="kamal">Mr kamal</option>
                        <option value="issam">Mr issam</option>
                    </select>
                </div>

                <button  class="mt-4 me-2 d-block ms-auto me-auto " type="submit">Take Appointement</button>
            </form>

        </div>

        <div class=" p-3 ms-4  col-sm-12 col-md-6 col-lg-6 col-xl-6">
            <p class="m-lg-4 ps-3 pe-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum ratione nam iusto facere odit optio ut impedit facilis dignissimos reiciendis. Omnis, animi. Repellendus recusandae placeat corporis, nihil fugiat dolores impedit?</p>
            <button class="m-2 discover d-block ms-auto me-auto">Discover More</button>

        </div>
    </div>

</section>
<footer class="d-flex justify-content-center align-items-center ">
    <p>CopyRight &copy; 2025 <span>Made By Medo</span></p>

</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</body>
</html>