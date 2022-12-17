/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import DAO.CRUDProductos;
import Modelo.Carrito;
import Modelo.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jorge
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    List<Carrito> carrito=new ArrayList();
    int item;
    double totalPagar=0.00;
    int cant;
    int idp;
    Carrito car;
    Producto prod;
    CRUDProductos crud=new CRUDProductos();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        
        switch(accion){
            case "AgregarCarrito":
                int pos=0;
                cant=1;
                idp=Integer.parseInt(request.getParameter("id"));
                prod=crud.filtrarProducto(idp);
                
                if (carrito.size()>0) {
                    for (int i = 0; i < carrito.size(); i++) {
                        if (idp==carrito.get(i).getIdProducto()) {
                            pos=i;
                        }
                    }
                    
                    if (idp==carrito.get(pos).getIdProducto()) {
                        cant=carrito.get(pos).getCantidad()+cant;
                        double subtotal=carrito.get(pos).getPrecioCompra()*cant;
                        carrito.get(pos).setCantidad(cant);
                        carrito.get(pos).setSubTotal(subtotal);                        
                    }else{
                        item=item+1;
                        car=new Carrito();
                        car.setItem(item);
                        car.setIdProducto(prod.getIdprod());
                        car.setIdcat(prod.getIdcat());
                        car.setNombres(prod.getNomProd());
                        car.setDescripcion(prod.getDescripcion());
                        car.setPrecioCompra(prod.getPrecio());
                        car.setCantidad(cant);
                        car.setSubTotal(cant*prod.getPrecio());
                        carrito.add(car);
                    }
                }else{
                        item=item+1;//realiza suma de todos los productos
                        car=new Carrito();
                        car.setItem(item);
                        car.setIdProducto(prod.getIdprod());
                        car.setIdcat(prod.getIdcat());
                        car.setNombres(prod.getNomProd());
                        car.setDescripcion(prod.getDescripcion());
                        car.setPrecioCompra(prod.getPrecio());
                        car.setCantidad(cant);
                        car.setSubTotal(cant*prod.getPrecio());
                        carrito.add(car);//almacena
                }
                request.setAttribute("contador", carrito.size());
                request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
                break;
            case "Carrito":
                totalPagar=0.00;
                request.setAttribute("carrito", carrito);
                
                for (int i = 0; i < carrito.size(); i++) {
                    totalPagar=totalPagar+carrito.get(i).getSubTotal();
                }
                request.setAttribute("totalPagar", totalPagar);
                request.getRequestDispatcher("/car.jsp").forward(request, response);
                break;
            case "ActualizarCantidad":
                int idprod = Integer.parseInt(request.getParameter("idp"));
                int cant = Integer.parseInt(request.getParameter("Cantidad"));
                
                for (int i = 0; i < carrito.size(); i++) {
                    if (carrito.get(i).getIdProducto()==idprod) {
                        carrito.get(i).setCantidad(cant);
                        double st = carrito.get(i).getPrecioCompra()*cant;
                        carrito.get(i).setSubTotal(st);
                    }
                }
                break;
            case "Delete":
                int id = Integer.parseInt(request.getParameter("idp"));
                
                for (int i = 0; i < carrito.size(); i++) {
                    if (carrito.get(i).getIdProducto()==id) {
                        carrito.remove(i);
                    }
                }
                break;
            default:
                request.setAttribute("contador", carrito.size());
                request.getRequestDispatcher("/producto.jsp").forward(request, response);
                
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
