<%-- 
    Document   : car
    Created on : 16 dic 2022, 17:45:57
    Author     : jorge
--%>

<%@page import="Colecciones.ListaCategoria"%>
<%@page import="DAO.ActualizarListas"%>
<%@page import="Modelo.Carrito"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pizzería Don José</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <!-- FONTA Iconos -->
        <script src="https://kit.fontawesome.com/7becde44fc.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./css/estilos.css">
        <style>
            a {
                text-decoration: none;
                color: white;

            }

        </style>
        <!-- Site Icons -->
    <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="./images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="./css/product.css">
     <link rel="stylesheet" href="./css/login.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="./css/responsive.css">
    <!-- color -->
    <link id="changeable-colors" rel="stylesheet" href="./css/colors/orange.css" />

    <!-- Modernizer -->
    <script src="./js/modernizer.js"></script>
    <script src="https://kit.fontawesome.com/493971e1cb.js" crossorigin="anonymous"></script>
    </head>
    <body>         

        <div class="container mt-4">
            <h3>Carrito</h3>
            <br>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>NOMBRES</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ACCION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ArrayList<Carrito> carrito=(ArrayList<Carrito>) request.getAttribute("carrito");
                                ActualizarListas al=new ActualizarListas();
                                al.actualizarCategoria();
                                
                                for (Carrito car : carrito) {                                        
                            %>
                                    <tr class="text-center">
                                        <td><%= car.getItem() %></td>
                                        <td> <img src="./images/productos/<%= ListaCategoria.obtenerNombreCat(car.getIdcat()) %>/<%= car.getIdProducto() %>/principal.jpg" width="100" height="100" alt=""/> <br>
                                            <%= car.getNombres() %></td>
                                        <td><%= car.getDescripcion() %>

                                        </td>
                                        <td><%= car.getPrecioCompra() %></td>
                                        <td>
                                            <input type="hidden" id="idpro" value="<%= car.getIdProducto() %>">
                                            <input type="number" id="Cantidad" value="<%= car.getCantidad() %>" class="form-control text-center" min="1">
                                        </td>
                                        <td><%= car.getSubTotal() %></td>
                                        <td>
                                            <input type="hidden" id="idp" value="<%= car.getIdProducto() %>">
                                                   <a href="#" id="btnDelete" style="color:blue">eliminar</a>

                                        </td>
                                    </tr>
                            <%
                                }
                            %>
                        </tbody>

                    </table>
                </div>

                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">

                            <h3>Generar Compra</h3>

                        </div>

                        <div class="card-body">
                            <label>Subtotal:</label>
                            <input type="text" value="S/ ${totalPagar}0" readonly="" class="form-control">
                            <label>Descuento:</label>
                            <input type="text" value="S/ 0.00" readonly="" class="form-control">
                            <label>Total Pagar:</label>
                            <input type="text" value="S/ ${totalPagar}0" readonly="" class="form-control">

                        </div>
                        <div class="card-body" class="pagos" >
                            <a href="#" class="btn btn-info btn-block">Realizar Pago</a>
                            <a href="Controlador?accion=GenerarCompra" class="btn btn-danger btn-block">Generar Compra</a>
                            <a href="producto.jsp" class="btn btn-danger btn-block">Seguir Comprando</a>

                        </div>


                    </div>
                </div>

            </div>


        </div>
        <script src="js/funciones.js" type="text/javascript"></script>
        
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/funciones.js" type="text/javascript"></script>
        <!-- ALL JS FILES -->
<script src="./js/all.js"></script>
<script src="./js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="./js/custom.js"></script>
    </body>
</html>
