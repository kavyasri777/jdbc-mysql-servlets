package banking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/deleteaccount")
public class deleteservlet extends HttpServlet{

@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	String accountno=req.getParameter("accountno");
	try {
		PrintWriter pw=resp.getWriter();
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/kavya","root","root");
		String sql= "delete from modify where accountno=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, accountno);
		int i=ps.executeUpdate();
		
		if (i>0) {
			resp.sendRedirect("sucessdelete.jsp");
			
		}
		else
		{
			pw.println("error");
		}
		conn.close();
		ps.close();
	} catch (Exception e) {
		
	}
}
}
