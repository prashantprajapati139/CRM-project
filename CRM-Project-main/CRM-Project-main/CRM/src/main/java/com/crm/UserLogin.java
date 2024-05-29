package com.crm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/Login1")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

	   PrintWriter out=res.getWriter();
		String contect=req.getParameter("contect");
		String pass=req.getParameter("password");
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CRM","root","123456");
			PreparedStatement p=con.prepareStatement("select * from user where contact =? and Password=?");
			p.setString(1,contect );
			p.setString(2, pass);
			
		
		
			ResultSet rs=p.executeQuery();
			
			if(rs.next()) {
				   
				   res.setContentType("text/html");
				   Thread t1 = new Thread();
				   t1.sleep(3000);
				   RequestDispatcher rd=req.getRequestDispatcher("/CustomerHome.jsp");
					rd.include(req, res);
				   
				}else {
					res.setContentType("text/html");
					   out.println("<h2> email and password is wrong </h2>");
					   
					   RequestDispatcher rd=req.getRequestDispatcher("/Login.jsp");
						rd.include(req, res);
				}
		
		} catch (Exception e) {
			res.setContentType("text/html");
			out.print("<h2> Exception occured:"+e.getMessage() +"<h2/>");
			
			RequestDispatcher rd=req.getRequestDispatcher("/Login.jsp");
			rd.include(req, res);
		}
	
	}

}
