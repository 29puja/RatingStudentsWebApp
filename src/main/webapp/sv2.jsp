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
try{  
	            String k=request.getParameter("po");
				Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/pooja","root","pooja");  
				Statement stmt=con.createStatement(); 
				stmt.executeUpdate("DELETE FROM `pooja`.`distributions` WHERE `id`="+Integer.parseInt(k)+";");
				%>
                    <h1 style="text-align:center;color:red;">Deletion Complete</h1>
                    <% 
				  con.close();
				}catch(Exception e)
			{ System.out.println(e);}  
		   
%>
    </body>

    </html>