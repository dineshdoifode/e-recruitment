<%-- 
    Document   : Com
    
--%>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;" session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.ecareer.in</title>
    </head>
    <body>
        <% try
          {
           String c=(String)session.getAttribute("CUsername");
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:exam"," "," ");
           Statement st=con.createStatement();
          // Statement st2=con.createStatement();                    
           st.executeQuery("Delete from Com where CUsername='"+c+"'");
          // st2.executeQuery("Delete from Login");
           }
        
           catch(Exception e)
                   {
                   }
        
        %>
    </body>
</html>
