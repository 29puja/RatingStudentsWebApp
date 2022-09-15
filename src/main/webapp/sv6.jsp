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
                <%@ page import="java.util.Arrays" %>
                    <%
String sna=request.getParameter("fname");
ArrayList<String> sub=new ArrayList<String>();
ArrayList<ArrayList<String> > Assign= new ArrayList<ArrayList<String> >();
ArrayList<ArrayList<String> > Distribution= new ArrayList<ArrayList<String> >(); 
ArrayList<ArrayList<String> > Assignments= new ArrayList<ArrayList<String> >();
try {
		// Class.forName("com.mysql.jdbc.Driver");  
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
	 if(Assignments.get(i).get(1).toString().equals(sna)) {
		 if(sub.contains(Assignments.get(i).get(0))) {
			continue;
		 }
		 else {
			 sub.add(Assignments.get(i).get(0).toString());
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
	
	if(Assignments.get(i).get(1).toString().equals(sna)) {
		if(Assignments.get(i).get(0).toString().equals(sub.get(k).toString())) {
			//System.out.println("ok");
	       if(Assignments.get(i).get(2).toString().equals(Distribution.get(j).get(0).toString())) {
	    	  
	    	  n1=Double.parseDouble(Distribution.get(j).get(1).toString());
	    	  n2=Double.parseDouble(Assignments.get(i).get(4).toString());
	    	  n3++;
	    	  //System.out.println(n1);
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
                                    <th>Student Name</th>
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