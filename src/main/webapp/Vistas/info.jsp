<%-- 
    Document   : info
    Created on : 19 may. 2023, 05:34:13
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre nosotro</title>
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
                        <div class="ml-auto">
                            <a class="btn" href="../index.html">Volver al inicio</a>
                        </div>
                    </div>

                </nav>
            </div>
        </div> 
        <!-- Nav Bar End --> 
        
    <!-- Information Start -->
        <div class="register wow fadeInUp">
                <div class="container">
                    <div class="row">                        
                        <div class="col-md-4">
                            <div class="register-form">
                                <div class="register-item">
                                    <div class="register-text">
                                        <h2>Nosotros</h2><br />
                                        <p align="justify">El SPA UTP nace a partir de la necesidad 
                                            de quienes buscan recuperarse del estrés de la vida cotidiana, 
                                            encontrando un equilibrio de mente, cuerpo y espíritu en las 
                                            diversas actividades que ofrece el spa en sus distintas sedes 
                                            de Arequipa. Por otro lado, la empresa cuenta con técnicos 
                                            especializados y preparados para ofrecer un servicio de calidad 
                                            y profesionalismo en diversos tipos de tratamientos naturales.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="register-form">
                                <div class="register-item">
                                    <div class="register-text">
                                        <img src="../src/img/masaje1.jpg" width="550" height="300">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="register-info">
                                <div class="register-item">
                                    <div class="register-text">
                                        <h2>Vision</h2><br />
                                            <p align="justify">Ser de los mejores centros de salud natural 
                                                y terapia de la región Arequipa, con servicios e instalaciones 
                                                modernas y lograr fidelizar a nuestros clientes a través de la 
                                                mejora y calidad que tengan nuestros servicios.</p>
                                    </div>   
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="register-form">
                                <div class="register-item">
                                    <div class="register-text">
                                        <h2>Misión</h2><br />
                                        <p align="justify">Garantizar una experiencia inolvidable y 
                                            de calidad con terapias que unen los cuatro elementos: 
                                            tierra, agua, fuego y aire; de este modo poder dar un 
                                            equilibrio de mente, cuerpo y espíritu.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>            
    <!-- Information End -->   
    </body>
    
    <jsp:include page="../Vistas/footer.jsp"></jsp:include>
    
</html>
