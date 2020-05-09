<%-- 
    Document   : log
    Created on : Feb 18, 2020, 10:10:52 PM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="archsPackage.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        MyDb db = new MyDb();
        Connection con =db.getCon();    
        Statement stmt = con.createStatement();
        
        String name = request.getParameter("username");
        String fname = request.getParameter("fname");
        String pass = request.getParameter("pass");
        
//        if(name.equals("otigba"))  
//        if(name != null){
//              response.sendRedirect("welcome.jsp");
        
        if(name.equals("lori") && pass.equals("12345")){
            response.sendRedirect("index.html");
        }else
        if(name != null){
            response.sendRedirect("welcome.jsp");    
        }
        
        else {
            response.sendRedirect("LoginForm.html");
        }
        
        
        %>
    </body>
</html>