<%-- 
    Document   : servicios
    Created on : 19 may. 2023, 05:47:40
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servicios</title>
    </head>
    
    <jsp:include page="../Vistas/header.jsp"></jsp:include>
    
    <body>
        <!-- Nav Bar Start -->
        <div class="nav-bar">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">MENU</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <ul style="list-style-type:none;">
                            <li class="nav-item nav-link active" style="float:left;"><h2>Nuestros Servicios</h2></li>
                        </ul>
                    </div>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="ml-auto">
                            <a class="btn" href="../index.html">Volver al inicio</a>
                        </div>
                    </div>

                </nav>
            </div>
        </div> 
        <!-- Nav Bar End -->      
        
        <!-- Team Start (Team Teacher of Student)-->
        <div class="team">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="../src/img/choc.jpg" alt="Team Image" width="150" height="250">
                            </div>
                            <div class="team-text">
                                <h2>Chocoterapia</h2>
                                <p>Tiempo : 2 horas</p>
                                <p>Precio: S/ 50.00</p>
                            </div> 
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="../src/img/masaje3.jpg" alt="Team Image" width="150" height="250">
                            </div>
                            <div class="team-text">
                                <h2>Masajes</h2>
                                <p>Tiempo : 2 horas</p>
                                <p>Precio: S/ 50.00</p>
                            </div> 
                        </div>
                    </div><div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="../src/img/exf.jpg" alt="Team Image" width="150" height="250">
                            </div>
                            <div class="team-text">
                                <h2>Exfoliacion</h2>
                                <p>Tiempo : 2 horas</p>
                                <p>Precio: S/ 50.00</p>
                            </div> 
                        </div>
                    </div><div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="../src/img/fango.jpg" alt="Team Image" width="150" height="250">
                            </div>
                            <div class="team-text">
                                <h2>Fangoterapia</h2>
                                <p>Tiempo : 2 horas</p>
                                <p>Precio: S/ 50.00</p>
                            </div> 
                        </div>
                    </div>
                                        
                </div>
            </div>
        </div>
        <!-- Team End -->   
    </body>
    
    <jsp:include page="../Vistas/footer.jsp"></jsp:include>
    
</html>
