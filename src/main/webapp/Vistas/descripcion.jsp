<%-- 
    Document   : descripcion
    Created on : 19 may. 2023, 05:48:58
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Descripción</title>
        
        <!-- Template Stylesheet -->
        <link rel="stylesheet" href="../src/css/stylecard.css">
        
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
        
    <!-- Card Start -->
            <div class="card">
                <div class="post">
                    <img  style="float:right; margin-right: 15px;"class="post-image" src="../src/img/masaje1.jpg"/>
                  
                  <div class="post-content">
                    <p class="post-header"><h2>&nbsp;&nbsp;&nbsp;&nbsp;Masaje</h2>
                    <p class="post-text">
                      Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, sunt asperiores quaerat doloremque commodi facere dolor. Velit pariatur, enim veniam!
                    </p>
                    <div class="author">
                        <img src="../src/img/t1.jpg" alt="" class="author-image">
                      <div class="author-content">
                        <p class="author-name">Técnico: Name</p>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <div class="card">
                <div class="post">
                  <img  style="float:right; margin-right: 15px;"class="post-image" src="../src/img/masaje1.jpg"/>
                  
                  <div class="post-content">
                    <p class="post-header"><h2>&nbsp;&nbsp;&nbsp;&nbsp;Masaje</h2>
                    <p class="post-text">
                      Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, sunt asperiores quaerat doloremque commodi facere dolor. Velit pariatur, enim veniam!
                    </p>
                    <div class="author">
                      <img src="../src/img/t1.jpg" alt="" class="author-image">
                      <div class="author-content">
                        <p class="author-name">Técnico: Name</p>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
              
    <!-- Card End -->
    </body>
    
    <jsp:include page="../Vistas/footer.jsp"></jsp:include>
    
</html>
