<%-- 
    Document   : atencion
    Created on : 19 may. 2023, 05:48:03
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atención</title>
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
        
    <!-- Contact Start -->
        <div class="contact wow fadeInUp">
            <div class="container">
                <div class="section-header text-center">
                    <h2>Organiza tu cita aqui</h2>
                    <p>Complete los espacios con sus datos, nos comunicaremos con usted</p>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="contact-info">
                            <div class="contact-item">
                                <i class="flaticon-address"></i>
                                <div class="contact-text">
                                    <h2>Ubícanos en:</h2>
                                    <p>Av. Ejecito N° 1200 Cayma</p>
                                </div>
                            </div>
                            <div class="contact-item">
                                <i class="flaticon-call"></i>
                                <div class="contact-text">
                                    <h2>Contáctanos a:</h2>
                                    <p>+51 123456789</p>
                                </div>
                            </div>
                            <div class="contact-item">
                                <i class="flaticon-send-mail"></i>
                                <div class="contact-text">
                                    <h2>Escríbenos a:</h2>
                                    <p>spautp@gmail.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="contact-form">
                            <div id="success"></div>
                            <form name="sentMessage" id="contactForm" novalidate="novalidate">
                                <div class="control-group">
                                    <p>Escribe tus nombres
                                        <input type="text" class="form-control" id="nombre" required="required" data-validation-required-message="Ingrese su nombre" />
                                    </p>
                                </div>
                                <div class="control-group">
                                    <p>Escribe tu DNI
                                        <input type="text" class="form-control" id="dni" required="required" data-validation-required-message="Ingrese su DNI" />
                                    </p>
                                </div>
                                <div class="control-group">
                                    <p>Escribe tu correo
                                        <input type="email" class="form-control" id="email" required="required" data-validation-required-message="Ingrese su correo" />
                                    </p>
                                </div>
                                <div class="control-group">
                                    <p>Escribe tu dirección
                                        <input type="text" class="form-control" id="direccion" required="required" data-validation-required-message="Ingrese su direccion" />
                                    </p>
                                </div>
                                <div class="control-group">
                                    <p>Servicios:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <select name="select"> 
                                            <option value="grado" selected>Seleccione Servicio</option>
                                            <option value="grado1">Masaje</option>
                                            <option value="grado2">Exfoliacion</option>
                                            <option value="grado3">Chocoterapia</option>
                                        </select> 
                                    </p>
                                </div>
                                <div class="control-group">
                                    <p>Metodo de pago:&nbsp;&nbsp;&nbsp;
                                        <select name="select"> 
                                            <option value="grado" selected>Seleccione Metodo</option>
                                            <option value="grado1">En tienda</option>
                                            <option value="grado2">Yape</option>
                                            <option value="grado3">Deposito</option>
                                        </select> 
                                    </p>
                                </div>
                                <div>
                                    <button class="btn" type="submit" id="sendMessageButton">Reservar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- Contact End -->
    </body>
    
    <jsp:include page="../Vistas/footer.jsp"></jsp:include>
    
</html>
