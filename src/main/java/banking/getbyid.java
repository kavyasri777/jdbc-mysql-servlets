package banking;

	import java.io.IOException;
	import java.io.PrintWriter;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;


	@WebServlet("/login")
	public class getbyid extends HttpServlet {


	 @Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		   
		    String adharnumber=req.getParameter("adharnumber");
			
	  
		
			try {
				PrintWriter out =resp.getWriter();
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kavya","root","root");
				 String sql = "SELECT * FROM modify WHERE adharnumber=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				
				ps.setString(1,adharnumber);

				ResultSet rs=ps.executeQuery();
				  out.println("<html><head>");
		            out.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css' rel='stylesheet'>");
		            out.println("<title>User Details</title></head><body>");
		            out.println("<div class='container mt-3'><h2 class='text-center'>User Details</h2>");

				while(rs.next())
				{
					   out.println("<div class='card shadow p-4'>");
		                out.println("<h5 class='card-title'>Account No: " + rs.getString("accountno") + "</h5>");
		                out.println("<p class='card-text'><strong>ID:</strong> " + rs.getInt("id") + "</p>");
		                out.println("<p class='card-text'><strong>Name:</strong> " + rs.getString("name") + "</p>");
		                out.println("<p class='card-text'><strong>Mobile No:</strong> " + rs.getString("mobileno") + "</p>");
		                out.println("<p class='card-text'><strong>Aadhaar No:</strong> " + rs.getString("adharnumber") + "</p>");
		                out.println("<p class='card-text'><strong>Total Balance:</strong> ₹" + rs.getInt("Total balance") + "</p>");
		                out.println("<p class='card-text'><strong>Opening Date:</strong> " + rs.getDate("opening account") + "</p>");
		                out.println("<p class='card-text'><strong>IFSC Code:</strong> " + rs.getString("ifsc code") + "</p>"); // FIXED: Use getString()
		                out.println("<p class='card-text'><strong>Branch:</strong> " + rs.getString("branch") + "</p>");
		                out.println("</div>");	
				}
				 out.println("</div></body></html>");
				ps.close();
				conn.close();
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		}

}
