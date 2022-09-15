<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
        <title>Student rating</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/signup.css">
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
    </head>

    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <!-- <a class="nav-link m-1" href="#">Home</a>-->
                    </li>
                    <li class="nav-item">
                        <!--<a class="nav-link m-1" href="#">Covid-19 Test</a>-->
                    </li>
                    <li class="nav-item">
                        <!--<a class="nav-link m-1" href="#">Oxygen Supplier</a>-->
                    </li>
                    <li class="nav-item">
                        <!--<a class="nav-link m-1" href="#">Vaccination</a>-->
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link m-1" href="#">About Us</a>-->
                    </li>
                </ul>
            </div>
            <div class="mx-auto order-0">
                <a class="navbar-brand mx-auto" href="#"><span style="color: palevioletred; font-size: 30px; font-family: Arial, Helvetica, sans-serif;">Student</span> Rating Webapp</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                <span class="navbar-toggler-icon"></span>
              </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <!--<button type="button" class="btn btn-outline-danger  m-1 fw-bold">Sign in</button>-->
                    </li>
                    <li class="nav-item">
                        <!--<button type="button" class="btn btn-outline-danger  m-1 fw-bold">Log in</button>-->
                    </li>
                </ul>
            </div>
        </nav>
        <div class="signup-form">

            <!--<h5 style="text-align: center; margin-bottom: 1rem;font-size: 30px;"><span class="footer-logo">PORTAL</span> FOR DOCTORS</h5>-->
            <h2 style="text-align: center;"> Student Data</h2>

            <hr>
            <%@ page import="java.sql.*" %>
                <%@ page import="java.util.ArrayList" %>
                    <%@ page import="java.util.Arrays" %>
                        <%
String na=request.getParameter("fname");
ArrayList<String> sub=new ArrayList<String>();
ArrayList<ArrayList<String> > Distribution= new ArrayList<ArrayList<String> >(); 
ArrayList<ArrayList<String> > Assignments= new ArrayList<ArrayList<String> >();
ArrayList<ArrayList<String> > Assign= new ArrayList<ArrayList<String> >();
try {
		Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/pooja","root","pooja");  
			Statement stmt=con.createStatement(); 
			ResultSet rs=stmt.executeQuery("select * from `pooja`.`distributions`;");
			System.out.println("Assignment Category---Weignt(%)");
			while(rs.next()) {  
				Distribution.add(new ArrayList<String>(Arrays.asList(rs.getString(2).toString(),rs.getString(3).toString())));  
			}
			con.close();  
		 }
		 catch(Exception e) {
			 System.out.println(e);
	   }
try {
		// Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/pooja","root","pooja");  
			Statement stmt=con.createStatement(); 
			ResultSet rs=stmt.executeQuery("select * from `pooja`.`assignments`;");
			//System.out.println("Srno---student_name---subject---assignment_category---date_of_submission---points");
			while(rs.next()) {  
			//System.out.println(rs.getInt(1)+"---"+rs.getString(2)+"---"+rs.getString(3)+"---"+rs.getString(4)+"---"+rs.getString(5)+"---"+rs.getString(6));  
				Assignments.add(new ArrayList<String>(Arrays.asList(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6))));
			}
			con.close();  
		 }
		 catch(Exception e) {
			 System.out.println(e);
	   }
	 for(int i=0;i<=Assignments.size()-1;i++) {
		 if(Assignments.get(i).get(0).toString().equals(na)) {
			 if(sub.contains(Assignments.get(i).get(1))) {
				continue;
			 }
			 else {
				 sub.add(Assignments.get(i).get(1).toString());
			 }
		 }
	 }
	 for(int k=0;k<=sub.size()-1;k++) {
		ArrayList<String> val=new ArrayList<String>();
		val.add(sub.get(k));
		for(int j=0;j<=Distribution.size()-1;j++) {
				
			double sc=0;
			double n1=0,n2=0,n3=0;
	 for(int i=0;i<=Assignments.size()-1;i++) {
		
		if(Assignments.get(i).get(0).toString().equals(na)) {
			if(Assignments.get(i).get(1).toString().equals(sub.get(k).toString())) {
				//System.out.println("ok");
		       if(Assignments.get(i).get(2).toString().equals(Distribution.get(j).get(0).toString())) {
		    	  
		    	  n1=Double.parseDouble(Distribution.get(j).get(1).toString());
		    	  n2=Double.parseDouble(Assignments.get(i).get(4).toString());
		    	  n3++;
		    	 // System.out.println(n1);
		    	  //System.out.println(n3);
		    	  //System.out.println(sc);
		       }
		    
			}
			
		}
		if(n3!=0) {
		sc=n1/n3;
		sc*=n2;
		}
	 }
	//sc=n1/n3;
	//sc*=n2;
	 sc/=100;
val.add(String.valueOf(sc));

		}
		Assign.addAll(Arrays.asList(val));
		
	 }
	 for(int i=0;i<=Assign.size()-1;i++) {
		 double or=0;
		 for(int j=1;j<=Assign.get(i).size()-1;j++) {
			 or=or+Double.parseDouble(Assign.get(i).get(j).toString());
		 }
		 Assign.get(i).add(String.valueOf(or));
	 }
	 
%>
                            <center>
                                <table>
                                    <tr>
                                        <th>Subject</th>
                                        <% for(int i=0;i<=Distribution.size()-1;i++) { %>
                                            <th>
                                                <%out.print(Distribution.get(i).get(0).toString()+"---"); %>
                                            </th>
                                            <%} %>
                                                <th>Overall Rating</th>
                                    </tr>

                                    <%
for(int i=0;i<=Assign.size()-1;i++){
	%>
                                        <tr>
                                            <% 
	for(int j=0;j<=Assign.get(i).size()-1;j++){
		%>
                                                <td style="text-align:center;">
                                                    <%out.print(Assign.get(i).get(j).toString()); %>
                                                </td>
                                                <% 
	}
	%>
                                        </tr>
                                        <% 
}
%>
                                </table>
    </body>

    </html>