<%-- 
    Document   : rech
    Created on : Feb 27, 2020, 11:57:29 AM
    Author     : user
--%>

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
          String name = request.getParameter("name");
          String email = request.getParameter("email");
          String message = request.getParameter("message");
          
         
       try{  
          MyDb db = new MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into rechargers(name,email,message)values('"+name+"','"+email+"','"+message+"') ");
         //out.println("welcome : "+fname);
          String redirectedPage = "/parentPage";
          response.sendRedirect("success.jsp");
      
       }catch(Exception e){
       out.println(e);
       }
        %>
    </body>
</html>
