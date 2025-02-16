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
@WebServlet("/updatedaccount")
public class equals extends HttpServlet{
	
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   
		String accountno=req.getParameter("accountno");
		
		try
		{
			PrintWriter out =resp.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kavya","root","root");
			String sql="select* from modify  WHERE  accountno=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, accountno);  
			

			ResultSet rs=ps.executeQuery();
			
			if (rs.next()) {  
				
				resp.sendRedirect("updatedaccount.jsp");
			
			}
			
			else
			{
				resp.sendRedirect("TRY AGAIN");
			}
			
			ps.close();
			conn.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	}
