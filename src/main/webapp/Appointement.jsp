<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointement</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/menu.css">
</head>
<style>
    .card{
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
    span{
        color: #898886;
        font-size: 12px;
        font-weight: bolder;

    }
    small{
        color: #080807;
        /* font-family: 'Courier New', Courier, monospace; */
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        padding: 10px;
    }


    label{
        color: #073c58;
        font-size: 12px;
    }
    button{
        width: 90px;
        display: block;
        height: fit-content;
        padding: 6px 10px;
        border-radius: 50px;
    }
    .ca{

        display: flex;
        flex-direction: column;
        gap: 10px;

    }
    section {
        display: flex;
        justify-content: space-evenly;
        flex-wrap: wrap;
        align-items: center;
        gap: 20px;
    }
    h1{

        text-align: center;
        color: #073c58;
    }
</style>
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
                    <button class="m-2 rounded-1 btn-signup" > Take Appointement</button>
                    <button class="m-2 rounded-1 btn-login" href="login"  >
                        <a id="login" class="nav-link" href="loginForm">Login</a>


                    </button>
                </section>
            </div>
        </div>
    </nav>
</header>
<section class="back">
<h1>Appointement </h1>






    <jsp:useBean id="patients" scope="request" type="java.util.List"/>
    <c:forEach var="patient" items="${patients}"   >

    <div class="card">
        <div>
            <div class="ca">
                <span>UserName :  <small>${patient.name
                }</small> </span>
                <span></span>

            </div>

            <div class="ca">
                <span>Email : <small>${patient.email}</small></span>
                <span></span>

            </div>

            <div class="ca">
                <span>Date :  <small>${patient.date}</small> </span>
                <span></span>

            </div>

        </div>

        <div>
            <div> <span>Status : </span></div>
            <label style="margin-left: 15px; " for="">Done</label>
            <input type="checkbox" name="Done" id="" placeholder="Done">
        </div>

        <button class="edit" type="button" style="background-color: #7696FF;  color: white;  border: #7696FF solid 2px;">Edit</button>
        <button class="cancel" type="button" style="background-color: white;  color: #FF970E; border: #FF970E solid 2px; ">Calcel</button>


    </div>


    </c:forEach>

</section>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</body>
</html>