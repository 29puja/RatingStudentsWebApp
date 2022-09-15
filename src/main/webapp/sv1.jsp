<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
String we=request.getParameter("po");
response.setContentType("text/html");
//out.print("It already exist");
ArrayList<String> Distribution= new ArrayList<String>();
try {
	Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/pooja","root","pooja");  
		Statement stmt=con.createStatement(); 
		ResultSet rs=stmt.executeQuery("select * from `pooja`.`distributions`;");
		while(rs.next()) {  
			Distribution.add(rs.getString(2));  
		}
		con.close();  
	 }
	 catch(Exception e) {
		 System.out.println(e);
   }
if(Distribution.contains(na.toString())) {
	%>
                    <h4 style="text-align:center; color:red;">Its Already exist</h1>
                        <% 
}
else {
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/pooja","root","pooja");  
	Statement stmt=con.createStatement(); 
	stmt.executeUpdate("INSERT INTO `pooja`.`distributions`(`Assignment_Category`,`Weight`) VALUES("+na+","+we+");");
	  con.close();
	  %>
                            <h4 style="text-align:center; color:green;">Insertion Completed</h1>
                                <% 
	  
	}catch(Exception e)
{ System.out.println(e);}  
} 
%>
    </body>

    </html>