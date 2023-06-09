<%-- 
    Document   : cita
    Created on : 19 may. 2023, 05:48:17
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cita</title>
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
                    <h2>Servicios Seleccionados</h2>
                    <p>Despliegue el cuadro Servicios para visualizar la fecha, precios y duracion</p>
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
                                
    <!-- Lista compra -->
                                <div class="studentList">

                                    <div id="accordion-1">
                                        
                                        <div class="card wow fadeInLeft" data-wow-delay="0.1s">
                                            <div class="card-header">
                                                <a class="card-link collapsed" data-toggle="collapse" href="#collapseOne">
                                                    Servicios
                                                </a>
                                            </div>
                                            <div id="collapseOne" class="collapse" data-parent="#accordion-1">
                                                <div class="card-body">
                                                    <CENTER>
                                                        <TABLE BORDER>
                                                            <TR ALIGN=CENTER>
                                                                <TH>Servicio</TH> <TH>Duración</TH> <TH>Precio</TH>
                                                            </TR>
                                                            <TR ALIGN=CENTER>
                                                                <TD>Masaje</TD> <TD>2 horas</TD> <TD>85.00</TD>
                                                            </TR>
                                                            <TR ALIGN=CENTER>
                                                                <TD>Chocoterapia</TD> <TD>1 hora</TD> <TD>70.00</TD>
                                                            </TR>
                                                            <TR ALIGN=CENTER>
                                                                <TD></TD> <TH>Total</TH> <TD>155.00</TD>
                                                            </TR>
                                                        </TABLE>
                                                    </CENTER>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    
                                </div>

    <!-- Fin Lista Compra -->
                                
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
                                    <button class="btn" type="submit" id="sendMessageButton">Comprar</button>
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
