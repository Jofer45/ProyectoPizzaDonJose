<%-- 
    Document   : registro
    Created on : 27 nov 2022, 11:00:30
    Author     : jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">

    <!-- Site Metas -->
    <title>Pizzeria Don José</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- FONT AWESOME-->
    <script src="https://kit.fontawesome.com/493971e1cb.js" crossorigin="anonymous"></script><!-- comment -->
    <!-- Site Icons -->
    <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />
    
    <link rel="apple-touch-icon" href="./images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="./css/style.css">
    
    <link rel="stylesheet" href="./css/login.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href=".css/responsive.css">
    <!-- color -->
    <link id="changeable-colors" rel="stylesheet" href="./css/colors/orange.css" />

    <!-- Modernizer -->
    <script src="./js/modernizer.js"></script>

      <!-- NOTIFY -->
    <link rel="stylesheet" href="./css/alertify.css">
    <script src="./js/alertify.js"></script>
 

</head>
<body>
    <!-- Section: Design Block -->
<section class="background-radial-gradient overflow-hidden">
    
    <div id="loader">
        <div id="status"></div>
    </div>
    <div id="site-header">
        <header id="header" class="header-block-top">
            <div class="container">
                <div class="row">
                    <div class="main-menu">
                        <!-- navbar -->
                        <nav class="navbar navbar-default" id="mainNav">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <div class="logo">
                                    <a class="navbar-brand js-scroll-trigger logo-header" href="#">
                                        <!-- Poner aqui Logo -->
                                        <img src="" alt="">
                                    </a>
                                </div>
                            </div>
                            <div id="navbar" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="./index.jsp">Inicio</a></li>
                                
                                    <li><a href="./producto.jsp">Productos</a></li>
                                   
                                    <li><a href="./index.jsp#gallery">Galeria</a></li>
                                    
                                    <li><a href="./contactanos.jsp">Contactanos </a></li>
                                    <li><a href="./nosotros.jsp">Nosotros </a></li> 
                                    <div class="icons">
                                        <a  href="./login.jsp" class="icon-login">
                                            <i class="fa-solid fa-user"></i>
                                            <span>Login</span>
                                        </a>
                                     
                                    </div>
                                </ul>
                             
                                
                              
                             
                            </div>
                            <!-- end nav-collapse -->
                        </nav>
                        <!-- end navbar -->
                    </div>
                </div>
                <!-- end row -->
            </div>
            <!-- end container-fluid -->
        </header>
        <!-- end header -->
        
    </div>
    <div id="banner" class="banner full-screen-mode parallax">
        <div class="container pr">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="banner-static">
                    
                    <div class="banner-text">
                        
                        <div class="banner-cell">

                            <main class="body-login"> <br>
                                <h1> Pizzeria Don Jose  </h1> <br><br>
         <div class="body-white">
            <div class="container form-container">
                <%@page import="Controlador.RegistroCliente" %>
               
                <form action="RegistroCliente" method="post">
                    <!-- 2 column grid layout with text inputs for the first and last names -->
                    <div class="row">
                        
                         <!-- Ingreso de nombres -->
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <input type="text" id="nombres" class="form-control" name="nombres"/>
                          <label class="form-label" for="form3Example1">Nombres</label>
                        </div>
                      </div>
                         <!-- Ingreso de apellidos -->
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <input type="text" id="apellidos" class="form-control" name="apellidos"/>
                          <label class="form-label" for="form3Example2">Apellidos</label>
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                         <!-- Ingreso de usuario -->
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <input type="text" id="usuario" class="form-control" name="user"/>
                          <label class="form-label" for="form3Example1">Usuario</label>
                        </div>
                      </div>
                         <!-- Ingreso de contraseña -->
                      <div class="col-md-6 mb-4">
                        <div class="form-outline">
                          <input type="password" id="pass" class="form-control" name="pass"/>
                          <label class="form-label" for="form3Example2">Contraseña</label>
                        </div>
                      </div>
                    </div>
      
                    <!-- Email input -->
                    <div class="form-outline mb-4">
                      <input type="email" id="email" class="form-control" name="email"/>
                      <label class="form-label" for="form3Example3">Correo electrónico</label>
                    </div> <br> 
                    
                    <!-- Submit button -->
                    <button type="submit" class="btn login_submit" name="btnRegistrarCliente">
                      Registrar cuenta
                    </button>
                    <br>  
                    <a href="index.jsp" class="btn login_submit">
                      Volver a la página principal
                    </a>
                    
                  </form>




            </div>
         </div>

                        </div>
                        <!-- end banner-cell -->
                    </div>
                    <!-- end banner-text -->
                </div>
                <!-- end banner-static -->
            </div>
            <!-- end col -->
        </div>
        <!-- end container -->
    </div>
    <!-- end banner -->

    <div class="footer-box pad-top-70">
        <div class="container">
            <div class="row">
                <div class="footer-in-main">
                    <div class="footer-logo">
                        <div class="text-center">
                      <!-- Poner aqui Logo -->
                      <img src="" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box-a">
                            <h3>Acerca de Nosotros</h3>
                            <p>Nuestro proposito es vender pizzas de la mejor calidad, enfocadas en relación calidad precio hacia los clientes, para así obtener la recomendación de estas para seguir 
                                posicionándose en el mercado. <br> <br>

                            <b> Siguenos en redes sociales</b> </p>
                            <ul class="socials-box footer-socials pull-left">
                                <li>
                                    <a href="#">
                                        <div class="social-circle-border"><i class="fa  fa-facebook"></i></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="social-circle-border"><i class="fa fa-twitter"></i></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="social-circle-border"><i class="fa fa-google-plus"></i></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="social-circle-border"><i class="fa fa-pinterest"></i></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="social-circle-border"><i class="fa fa-linkedin"></i></div>
                                    </a>
                                </li>
                            </ul>

                        </div>
                        <!-- end footer-box-a -->
                    </div>
                    <!-- end col -->
                   
                    <!-- end col -->
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box-c">
                            <h3>Contactanos</h3>
                            <p>
                                <i class="fa fa-map-signs" aria-hidden="true"></i>
                                <span>xxxx,xxxx, Ate </span>
                            </p>
                            <p>
                                <i class="fa fa-mobile" aria-hidden="true"></i>
                                <span>
                                xxxxxxxxxx
                            </span>
                            </p>
                            
                        </div>
                        <!-- end footer-box-c -->
                    </div>
                    <!-- end col -->
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box-d">
                            <h3>Horario Atención</h3>

                            <ul>
                                <li>
                                    <p>Lunes - Domingo </p>
                                    <span> 12:00 pM - 11:00PM</span>
                                </li>
                               
                            </ul>
                        </div>
                        <!-- end footer-box-d -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end footer-in-main -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
        <div id="copyright" class="copyright-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h6 class="copy-title"> Copyright &copy; 2022  <a href="#" target="_blank"></a> </h6>
                    </div>
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end copyright-main -->
    </div>
    <!-- end footer-box -->
</div>
<!-- end footer-main -->

<a href="#" class="scrollup" style="display: none;">Scroll</a>



<!-- ALL JS FILES -->
<script src="./js/all.js"></script>
<script src="./js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="./js/custom.js"></script>
<!-- JS LOGIN -->
<script src="./js/login.js"></script>
 <!-- Acciones Login -->
 <script src="/js/login.js"></script>
   <%
            if (request.getAttribute("mensaje")!=null) {
                    
               
        %>
        <script>alert('<%= request.getAttribute("mensaje") %>');</script>
        <%
            }
        %>
</body>

</html>