<%-- 
    Document   : savelogindata
    

--%>
<%@page import="java.io.*,java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
  
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
       <title>www.ecareer.in</title>
    </head>
    <body>
    
    <% try {
            String s1 = request.getParameter("username");
  
          String s2 = request.getParameter("password");


         
   session.setAttribute("s1", s1);
            session.setAttribute("s2", s2);
   
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:exam"," "," ");
 
         Statement st = con.createStatement();
    
 
       Statement st2 = con.createStatement();
         
   String stat = "";
     
       ResultSet rs;
         
   rs = st.executeQuery("select * from Login where Username='" + s1 + "' and Password='" + s2 + "'");
     
   %>
   
     <!-- <input type= "hidden" name="id" value ="<%=s1%>">
     
      <input type= "hidden" name="pass" value ="<%=s2%>">-->
        
   <%
            while (rs.next()) {
 
               stat = rs.getString("status");
            } //while
 
           if (stat.equals("s")) 
{
                response.sendRedirect("CandidateHomePage.jsp");
   
         } else if (stat.equals("c")) {

                response.sendRedirect("CompanyHomePage.jsp");
  
          } else if (stat.equals("a")) {
  
              response.sendRedirect("AdminHomePage.jsp");
    
        } else {
                response.sendRedirect("error.html");

        
    }
        }//try
        catch (Exception e) {
            out.println(e);
        }
        %>
        <!-- <input type="hidden" name = "hid" value="<%request.getParameter("username");%>" -->
    </body>
</html>

