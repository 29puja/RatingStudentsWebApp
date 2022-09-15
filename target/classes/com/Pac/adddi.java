

import java.io.IOException;
import jakarta.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adddi
 */
public class adddi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public adddi() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String na=request.getParameter("fname");
		String we=request.getParameter("po");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("It already exist");
		ArrayList<String> Distribution= new ArrayList<String>();
		try {
			Class.forName("com.mysql.jdbc.Driver");  
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/sube","root","1234");  
				Statement stmt=con.createStatement(); 
				ResultSet rs=stmt.executeQuery("select * from `sube`.`distributions`;");
				while(rs.next()) {  
					Distribution.add(rs.getString(2));  
				}
				con.close();  
			 }
			 catch(Exception e) {
				 System.out.println(e);
		   }
		if(Distribution.contains(na.toString())) {
			out.println("It already exist");
		}
		else {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3309/sube","root","1234");  
			Statement stmt=con.createStatement(); 
			stmt.executeUpdate("INSERT INTO `sube`.`distributions`(`Assignment_Category`,`Weight`) VALUES("+na+","+we+");");
			  con.close();
			  out.println("Insertion Completed");
			}catch(Exception e)
		{ System.out.println(e);}  
		} 
	}

}
