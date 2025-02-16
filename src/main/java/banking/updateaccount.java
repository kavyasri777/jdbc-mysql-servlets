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
@WebServlet("/updateuser")
public class updateaccount extends HttpServlet{
	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   
		String name=req.getParameter("name");
		String mobileno=req.getParameter("mobileno");
		
		
		try
		{
			PrintWriter out =resp.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kavya","root","root");
			String sql="UPDATE modify SET name=?, mobileno=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, name);  
			ps.setString(2, mobileno);
			

			int i=ps.executeUpdate();
			
			if (i>0) {  
				
				resp.sendRedirect("updatedsucess.jsp");
			
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



