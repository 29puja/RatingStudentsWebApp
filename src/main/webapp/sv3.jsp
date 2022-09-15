<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Student rating</title>
    </head>

    <body>
        <%@ page import="java.sql.*" %>
            <%@ page import="java.util.ArrayList" %>
                <%

String na=request.getParameter("fname");
String sa=request.getParameter("sn");
String ac=request.getParameter("ac");
String sd=request.getParameter("sd");
String po=request.getParameter("po");
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/pooja","root","pooja");  
	Statement stmt=con.createStatement(); 
	stmt.executeUpdate("INSERT INTO `pooja`.`assignments`(`student_name`,`subject`,`assignment_category`,`date_of_submission`,`points`) VALUES("+na+","+sa+","+ac+","+sd+","+po+");");
	  con.close();
	  %>
                    <h4 style="text-align:center; color:green;">Insertion Completed</h1>
                        <% 
	  
	}catch(Exception e)
{ System.out.println(e);}  
%>
    </body>

    </html>