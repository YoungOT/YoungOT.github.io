<%-- 
    Document   : process
    Created on : Feb 21, 2020, 10:37:32 PM
    Author     : user
--%>
<%@ page import="com.javapapers.java.mail.JavaEmail"%>
<%@ page import="javax.mail.MessagingException;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
          <% 
              String message = null;
              String status = null;
              if(request.getParameter("name")!=null){
                  JavaEmail javaEmail = new JavaEmail();
                  javaEmail.setMailServerProperties();
                  String emailSubject = "Contact Form using Java JSP GMail";
                  String emailBody = "";
                  if(request.getParameter("name") != null){
                      emailBody = "Sender Name: " + request.getParameter("name") + "<br>";
                  }
                  if(request.getParameter("email") != null){
                      emailBody = "Sender Email: " + request.getParameter("email") + "<br>";
                  }
                  if(request.getParameter("message") != null){
                      emailBody = "Message: " + request.getParameter("message") + "<br>";
                  }
                  javaEmail.createEmailMessage(emailSubject, emailBody);
                  try{
                      javaEmail.sendEmail();
                      status = "success";
                      message = "Email sent Sucessfully!";
                      response.sendRedirect("../index.html");
                  }catch(MessagingException me){
                      status = "error";
                      message = "Error in sending Email";
                      response.sendRedirect("contact.html");
                  }
              }
          %>   
    </body>
</html>
