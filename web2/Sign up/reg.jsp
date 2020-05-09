<%-- 
    Document   : reg
    Created on : Feb 16, 2020, 6:53:48 PM
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
       
          String fname = request.getParameter("fname");
          String lname = request.getParameter("lname");
          String email = request.getParameter("email");
          String phone = request.getParameter("phone");
          String pass = request.getParameter("pass");
          String passw = request.getParameter("passw");
          
        try{  
          MyDb db = new MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into sregister(fname,lname,email,phone,pass,passw)values('"+fname+"','"+lname+"','"+email+"','"+phone+"','"+pass+"','"+passw+"') ");
         //out.println("welcome : "+fname);
          String redirectedPage = "/parentPage";
          response.sendRedirect("registrationsuccess.jsp");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
