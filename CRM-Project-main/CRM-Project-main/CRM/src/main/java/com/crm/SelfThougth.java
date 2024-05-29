package com.crm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CrmCustomer")
public class SelfThougth extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	    res.setContentType("text/html");
	    PrintWriter out = res.getWriter();
	    String selfThought = req.getParameter("selfthougth");
	    
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CRM","root","123456");
	        PreparedStatement pt = con.prepareStatement("INSERT INTO Selfthought VALUES (?)");
	        pt.setString(1, selfThought);
	        int count = pt.executeUpdate();
	        
	        if(count > 0) {
	            res.sendRedirect("/CustomerHome.jsp");
	        } else {
	            out.println("<h2>Failed to store self thought.</h2>");
	        }
	    } catch (Exception e) {
	        out.println("<h2>Exception occurred: " + e.getMessage() + "</h2>");
	        e.printStackTrace(out);
	    }
	}


}
