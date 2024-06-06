<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRM</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-transform: capitalize;
	font-family: Arial, Helvetica, sans-serif;
}

.main {
	width: 100%;
	height: 100vh;
	background: linear-gradient(180deg, lightgray, aliceblue);
	margin: 0 auto;
	display: flex;
}

.main aside {
	width: 25%;
	height: 100vh;
	border-right: 1px solid lightslategray;
}

.main .right {
	width: 75%;
}

.right header {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

header .menu #bars {
	font-size: 25px;
}

header .search {
	padding: 0 5px;
	width: 50%;
	background-color: lightgray;
	border: 1px solid darkgray;
	display: flex;
	align-items: center;
	border-radius: 5px;
}

header .search input {
	width: 95%;
	border: none;
	outline: none;
	background: transparent;
	padding: 10px;
}

header .profile {
	width: 50px;
	height: 50px;
}

header .profile img {
	width: 100%;
	border-radius: 100%;
}

aside .itm .it-box {
	width: 80%;
	border: 1px solid rgba(0, 0, 0, 0.398);
	padding: 10px;
	display: flex;
	align-items: center;
	margin: 10px auto;
	border-radius: 5px;
	box-shadow: 0px 10px 10px -6px rgba(0, 0, 0, 0.3);
	cursor: pointer;
	transition: all 0.1s linear;
}

aside .itm .it-box i {
	font-size: 25px;
}

aside .itm .it-box p {
	font-size: 25px;
	padding-left: 20px;
	font-weight: normal;
}

.logo {
	padding: 10px 10px;
	margin-bottom: 25px;
}

aside .itm .it-box:hover {
	transform: scale(1.05);
}

.manage {
	padding: 5% 2%;
	width: 100%;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: center;
}

.mnbox {
	width: 32%;
	height: 150px;
	background: #efefef;
	display: flex;
	flex-direction: column;
	text-align: center;
	justify-content: center;
	padding: 20px 0px;
	margin: 25px 0px;
	box-shadow: 0px 10px 10px -6px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
}

.mnbox span {
	font-size: 28px;
}

.mnbox h2 {
	font-weight: 100;
	margin: 15px 0px;
	font-size: 1.2em;
}

.status-chart img {
	width: 100%;
	border-radius: 5px;
}

table {
	width: 80%; /* Adjust as needed */
	margin: 50px auto 0; /* Top margin, center horizontally */
	border-collapse: collapse;
	border: 1px solid #ddd; /* Add border */
}

th, td {
	padding: 12px 15px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

/* Style for table header */
th {
	background-color: #f2f2f2;
}

/* Style for alternating rows */
tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* Style for the title */
.title {
	text-align: center;
	margin-top: 20px;
	font-size: 24px;
}

</style>
</head>
<body>
	<div class="main">
		<aside>
			<div class="logo">
				<img src="https://t4.ftcdn.net/jpg/08/12/12/59/240_F_812125937_65hZ8s5N0mPQrJ2B62PY3eKH08zBW5b9.jpg" height="70" alt="logo">
			</div>
			<div class="itm">
				<div class="it-box" id="home">
					<i class="fa-solid fa-home"></i>
					<p>home</p>
				</div>
				<div class="it-box" id="userData">
					<i class="fa-solid fa-database"></i>
					<p>User Data</p>
				</div>
				<div class="it-box" id="customerReview">
					<i class="fa-solid fa-person"></i>
					<p>Customer Review</p>
				</div>
				<div class="it-box" id="relationshipWithCompany">
					<i class="fa-solid fa-handshake-simple"></i>
					<p>Relationship With Company</p>
				</div>
				<div class="it-box" id="reporting">
					<i class="fa-regular fa-comments"></i>
					<p>Reporting</p>
				</div>
				<div class="it-box" id="logout">
					<i class="fa-solid fa-right-from-bracket"></i>
					<p>Logout</p>
				</div>
			</div>
		</aside>
		<div class="right">
			<header>
				<div class="menu">
					<i class="fa-solid fa-bars" id="bars"></i>
				</div>
				<div class="search">
					<i class="fa-solid fa-search"></i> <input type="text"
						placeholder="Search here">
				</div>
				<div class="profile">
					<img
						src="https://img.freepik.com/free-photo/3d-illustration-cute-cartoon-boy-with-backpack-his-back_1142-40542.jpg?t=st=1715413757~exp=1715417357~hmac=e89a6bf91bb3c2f238e36a321e8facdb8709e150b0a008297c56c68eeed25f1f&w=740"
						alt="">
				</div>
			</header>
			<div class="manage">
				<div class="mnbox">
					<span>👨‍⚕️</span>
					<h2>User Data</h2>
				</div>
				<div class="mnbox">
					<span>👨‍⚕️</span>
					<h2>Customer Review</h2>
				</div>
				<div class="mnbox">
					<span>👨‍⚕️</span>
					<h2>Relationship With Company</h2>
				</div>
				<div class="mnbox">
					<span>👨‍⚕️</span>
					<h2>Customer Wise Reporting</h2>
				</div>
			</div>
		</div>
	</div>
	<script>
        document.querySelector("#home").addEventListener("click", function() {
            document.querySelector(".right").innerHTML = `
            <div class="status-chart">
                <img src="https://i.etsystatic.com/38177066/r/il/7ecf54/4291978377/il_794xN.4291978377_2fal.jpg" alt="" height="600px" >
            </div>`;
        });

		document.querySelector("#userData").addEventListener("click", function() {
            document.querySelector(".right").innerHTML = `
            	<div class="title">User Details</div>
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
            	    String sql = "SELECT * FROM customer";
            	    ResultSet resultSet = statement.executeQuery(sql);
            	    
            	%>
            	<table>
                <tr>
                    <th>customer_id</th>
                    <th>name</th>
                    <th>Email</th>
                    <th>contact</th>
                    <th>password</th>
                    <th>Gender</th>
                    <th>Action</th>
                </tr>
                <% while(resultSet.next()) { %>
                <tr>
                    <td><%= resultSet.getInt("customer_id") %></td>
                    <td><%= resultSet.getString("name") %></td>
                    <td><%= resultSet.getString("Email") %></td>
                    <td><%= resultSet.getString("contact") %></td>
                    <td><%= resultSet.getString("password") %></td>
                    <td><%= resultSet.getString("Gender") %></td>
                    <td><a href="admindelete.jsp?id=<%= resultSet.getInt("customer_id") %>">Delete</a></td>
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
            
            `;
        });

		document.querySelector("#customerReview").addEventListener("click", function() {
            document.querySelector(".right").innerHTML = `
           
            	<div class="title">Customer review</div>
            	<%
            	/* // JDBC Connection variables
            	String url = "jdbc:mysql://localhost:3306/CRM";
            	String username = "root";
            	String password = "123456";

            	// JDBC Connection */
            	try {
            	    Class.forName("com.mysql.jdbc.Driver");
            	    Connection connection = DriverManager.getConnection(url, username, password);
            	    Statement statement = connection.createStatement();
            	    String sql = "SELECT * FROM review";
            	    ResultSet resultSet = statement.executeQuery(sql);
            	    
            	   
            	%>
            	<table>
            	    <tr>
            	        
            	        <th>name</th>
            	        <th>Email</th>
            	        <th>rating</th>
            	        <th>review</th>
            	 

            	    </tr>
            	    <% while(resultSet.next()) { %>
            	    <tr>
            	        <td><%= resultSet.getString("name") %></td>
            	        <td><%= resultSet.getString("Email") %></td>
            	        <td><%= resultSet.getString("rating") %></td>
            	        <td><%= resultSet.getString("review") %></td>
            	     
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
            

            `;
        });

		document.querySelector("#relationshipWithCompany").addEventListener("click", function() {
            document.querySelector(".right").innerHTML = `
            
            	<div class="title">relationshipWithCompany</div>
            	<%
            	/* // JDBC Connection variables
            	String url = "jdbc:mysql://localhost:3306/CRM";
            	String username = "root";
            	String password = "123456";

            	// JDBC Connection */
            	try {
            	    Class.forName("com.mysql.jdbc.Driver");
            	    Connection connection = DriverManager.getConnection(url, username, password);
            	    Statement statement = connection.createStatement();
            	    String sql = "SELECT * FROM deals";
            	    ResultSet resultSet = statement.executeQuery(sql);
            	    
            	   
            	%>
            	<table>
            	    <tr>
            	        
            	        <th>CustomerId</th>
            	        <th>CustomerName</th>
            	        <th>CompanyName</th>
            	        <th>CustomerContact</th>
            	        <th>DealsDetails</th>
            	        <th>Price</th>

            	 

            	    </tr>
            	    <% while(resultSet.next()) { %>
            	    <tr>
            	        <td><%= resultSet.getInt("CustomerId") %></td>
            	        <td><%= resultSet.getString("CustomerName") %></td>
            	        <td><%= resultSet.getString("CompanyName") %></td>
            	        <td><%= resultSet.getString("CustomerContact") %></td>
            	        <td><%= resultSet.getString("DealsDetails") %></td>
            	        <td><%= resultSet.getInt("Price") %></td>

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
            

            
            `;
        });

		document.querySelector("#reporting").addEventListener("click", function() {
            document.querySelector(".right").innerHTML = `
            <div class="status-chart">
                <img src="https://i.etsystatic.com/38177066/r/il/7ecf54/4291978377/il_794xN.4291978377_2fal.jpg" alt="" height="600px" >
            </div>`;
        });
		
		 document.querySelector("#logout").addEventListener("click", function() {
			    // Redirect to login.jsp page
			    window.location.href = "AdminLogin.jsp";
			});
		
    </script>
</body>
</html>
