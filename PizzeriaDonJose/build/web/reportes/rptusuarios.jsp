<%-- 
    Document   : rpt1
    Created on : 8 dic. 2022, 14:06:18
    Author     : Jose Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import ="java.util.*"%>
<%@page import ="java.io.File"%>
<%@page import ="java.sql.*"%>
<%@page import ="DAO.ConectarDB"%>
<%@page import ="net.sf.jasperreports.engine.JasperRunManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           ConectarDB db=new ConectarDB();
           
          File jasperFile = new File(application.getRealPath("reportes/rpUsuarios.jasper"));
          Map parametro = new HashMap();
          //parametro.put("parametro1", "valor");
          byte[] bytes = JasperRunManager.runReportToPdf(jasperFile.getPath(), 
                                                                            null,db.conexion);
          response.setContentType("application/pdf");
          response.setContentLength(bytes.length);
          
          ServletOutputStream output = response.getOutputStream();
          response.getOutputStream();
          output.write(bytes,0,bytes.length);
          output.flush();
          output.close();
            %>
    </body>
</html>
