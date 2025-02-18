<%-- 
    Document   : newjsp
    Created on : 18 févr. 2025, 10:27:23
    Author     : iaazi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Docotr Rv </title>
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
                            <a class="nav-link" href="#appointement">Appointement</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#services">Services</a>
                        </li>
                    </ul>
                    <section class="d-flex justify-content-end w-75">
                        <button class="m-2 rounded-1 btn-signup">Take Appointement</button>
                        <button class="m-2 rounded-1 btn-login">Login</button>
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
              <input class="mt-3" type="password" class="form-control" id="password" name="password" placeholder="Password">
              <input class="mt-3" type="date" id="day" name="date" placeholder="Choose A day">
              <select class="d-block mt-3" aria-label="Default select example">
                <option selected disabled>select doctor</option>
                <option value="1">Mr Mohamed</option>
                <option value="2">Mr kamal</option>
                <option value="3">Mr issam</option>
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