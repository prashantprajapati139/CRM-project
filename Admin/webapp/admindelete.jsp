<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String url = "jdbc:mysql://localhost:3306/CRM";
    String username = "root";
    String password = "123456";

    int customerId = Integer.parseInt(request.getParameter("id"));

    // JDBC Connection
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url, username, password);
        Statement statement = connection.createStatement();
        String sql = "delete from customer where customer_id = " + customerId;
        int count = statement.executeUpdate(sql);
        if (count > 0) {
            out.println("<script>alert('Customer deleted successfully!'); window.location.href='adminpanel.jsp';</script>");
        } else {
            out.println("<script>alert('Failed to delete customer!'); window.location.href='adminpanel.jsp';</script>");
        }
        statement.close();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
