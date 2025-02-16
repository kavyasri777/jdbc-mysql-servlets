package banking;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logindata")
public class insertion extends HttpServlet {


   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	   String fullname=req.getParameter("fullname");
	    String dateofbirth=req.getParameter("dateofbirth");
		String address=req.getParameter("address");
		String  phonenumber=req.getParameter("phonenumber");
		String email=req.getParameter("email");
		
		try {
			PrintWriter out =resp.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kavya","root","root");
			String sql="insert into insertdata(fullname,dateofbirth,address,phonenumber,email) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, fullname);
			ps.setString(2, dateofbirth);
			ps.setString(3, address);
			ps.setString(4, phonenumber);
			ps.setString(5, email);
			

			int i=ps.executeUpdate();
			
			if (i>0) {  
				
				resp.sendRedirect("sucess.jsp");

			}
			
			else
			{

				out.println("error occured");
			}
			ps.close();
			conn.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
   

}
