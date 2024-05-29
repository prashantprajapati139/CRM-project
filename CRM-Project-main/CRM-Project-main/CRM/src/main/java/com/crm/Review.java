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
import javax.servlet.http.HttpSession;

@WebServlet("/Review")
public class Review extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String rating = request.getParameter("rating");
		String review = request.getParameter("review");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");		
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CRM","root","123456");
		PreparedStatement pt=con.prepareStatement("insert into review values (?,?,?,?)");
		pt.setString(1, name);
		pt.setString(2, email);
		pt.setString(3, rating);
		pt.setString(4, review);
		
	int	 count =  pt.executeUpdate();
	if(count>0) {
	   
	   RequestDispatcher rd=request.getRequestDispatcher("/CrmHome.jsp");
		rd.forward(request, response);
	}else {
		out.println("Data not added");
	}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	

	}}

