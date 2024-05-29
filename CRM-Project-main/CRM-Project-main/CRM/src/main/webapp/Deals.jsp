<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Display Data</title>
    <style>
        /* Add your CSS styles here */
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2>Data from Database</h2>

<%
// JDBC Connection variables
String url = "jdbc:mysql://localhost:3306/CRM";
String username = "root";
String password = "123456";

// JDBC Connection
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(url, username, password);
    Statement statement = connection.createStatement();
    String sql = "SELECT * FROM deals";
    ResultSet resultSet = statement.executeQuery(sql);
    
   
%>
<table>
    <tr>
        <th>CustomerID</th>
        <th>CustomerName</th>
        <th>Price</th>
    </tr>
    <% while(resultSet.next()) { %>
    <tr>
        <td><%= resultSet.getInt("CustomerID") %></td>
        <td><%= resultSet.getString("CustomerName") %></td>
        <td><%= resultSet.getString("Price") %></td>
    </tr>
    <% } %>
</table>


<%
    // Close JDBC objects
    resultSet.close();
    statement.close();
    connection.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>

</body>
</html>
