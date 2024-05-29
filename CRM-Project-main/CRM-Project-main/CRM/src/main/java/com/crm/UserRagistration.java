
package com.crm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/User")
public class UserRagistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = res.getWriter();
		String fname=req.getParameter("first");
		String lname=req.getParameter("last");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String contact=req.getParameter("mobile");
		String gender =req.getParameter("gender");
		

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");		
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CRM","root","123456");
	if(con.isClosed()) {
	System.out.println("S");
	}
	PreparedStatement pt=con.prepareStatement("insert into user values (?,?,?,?,?,?)");
		pt.setString(1, fname);
		pt.setString(2, lname);
		pt.setString(3, email);
		pt.setString(4, password);
		pt.setString(5, contact);
		pt.setString(6, gender);
	int	 count =  pt.executeUpdate();
	if(count>0) {
	   HttpSession  s= req.getSession();
	   s.setAttribute("msg","Register successfully");
	   Thread t1 = new Thread();
	   t1.sleep(3000);
	   RequestDispatcher rd=req.getRequestDispatcher("/Login.jsp");
		rd.forward(req, res);
	   
	}else {
//		HttpSession  s= req.getSession();
		   
		   RequestDispatcher rd=req.getRequestDispatcher("/Ragistration.jsp");
			rd.include(req, res);
	}
	/*
	 * Statement st=con.createStatement(); PreparedStatement
	 * p=con.prepareStatement("select * from customers");
	 */

	  


		
    } catch ( Exception e) {
	res.setContentType("text/html");
	out.print("<h2> Exception occured:"+e.getMessage() +"<h2/>");
	
	RequestDispatcher rd=req.getRequestDispatcher("/Ragistration.jsp");
	rd.include(req, res);		
	
    }
		
		
		
	}

}

