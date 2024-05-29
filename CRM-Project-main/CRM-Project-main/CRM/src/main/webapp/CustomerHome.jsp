<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CRM</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<%@ page import="java.sql.*" %>
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
	/* height: 100vh; */
}

.right header {
	display: flex;
	/* width: 60%; */
	justify-content: space-between;
	align-items: center;
}

header .menu  #bars {
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

/* header end  */
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

.give {
	padding: 5% 0%;
	width: 90%;
	margin: 0 auto;
	text-align: center;
}

.give .give-box {
	width: 100%;
	height: 60vh;
}

.give h2 {
	font-size: 3.8vw;
	text-transform: uppercase;
	margin: 2% 0%;
}

.give .give-box p {
	line-height: 28px;
	font-size: 22px;
	height: inherit;
	border: 2px solid black;
	border-radius: 8px;
	text-align: left;
	padding: 2%;
}

.give .give-box button {
	margin: 2% 0%;
	width: 85%;
	padding: 5px;
	font-size: 28px;
	text-transform: uppercase;
	letter-spacing: 5px;
	background: #4caf50;
	color: white;
	border: none;
}

.show {
	display: none;
}

.ch {
	margin: 5% 0%;
	display: flex;
	justify-content: space-between;
}

.hm-chart {
	width: 50%;
}

.hm-chart img {
	width: 100%;
	border-radius: 2px;
}

.hm-chart1 img {
	width: 50%;
	width: 100%;
	border-radius: 1px;
}

.status-chart img {
	align-items: center;
	width: 120%;
	border-radius: 2px;
}
  table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .deals{
        	align: center ;
        	 margin: auto;
        	 text-size-adjust: 14;
        	 background: yellow;
        	
        }
        </style>
</head>
<body>

	<form action="CrmCustomer" method="post">
		<div class="main">
			<aside>
				<div class="logo">
					<img src="./img/crm.png" height="70" alt="logo">
				</div>

				<div class="itm">
					<div class="it-box" id="home">
						<i class="fa-solid fa-home"></i>
						<p>home</p>
					</div>
					<div class="it-box">
						<i class="fa-solid fa-file"></i>
						<p>Estimation</p>

					</div>
					<div class="it-box" id="status">
						<i class="fa-solid fa-chart-pie"></i>
						<p>Check Status</p>
					</div>
					<div class="it-box" id="review" name="review">
						<i class="fa-regular fa-comments"></i>
						<p>Review</p>
					</div>
					<div class="it-box" id="deals">
						<i class="fa-solid fa-handshake-simple"></i>
						<p>Company & Deals</p>
					</div>
					<!-- <div class="it-box">
                    <i class="fa-solid fa-share"></i>
                    <p>share</p>
                </div> -->
					<div class="it-box" id="self">
						<i class="fa-regular fa-lightbulb"></i>
						<p>self thought</p>
					</div>
					<div class="it-box" id="logout">
						<i class="fa-solid fa-right-from-bracket"></i>
						<p>logout</p>
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
							placeholder="search here">
					</div>
					<div class="profile">
						<img
				src="https://img.freepik.com/free-photo/3d-illustration-cute-cartoon-boy-with-backpack-his-back_1142-40542.jpg?t=st=1715413757~exp=1715417357~hmac=e89a6bf91bb3c2f238e36a321e8facdb8709e150b0a008297c56c68eeed25f1f&w=740"
							alt="">
					</div>
				</header>
				<!-- HEADER END -->

				<div class="ch"></div>

				<!-- give self thought  -->
				<!-- <div class="give">
                <h2>give self thought</h2>
                <div class="give-box">
                    <p contenteditable="">
                        enter your   self thought
                    </p>
                    <button>send</button>
                </div>
            </div> -->
				<!-- give self thought  -->


			</div>
		</div>


		<div class="hm-chart">
			<img src="" alt="">
		</div>
	</form>

	<script>
        document.querySelector("#home").addEventListener("click",function(){
            document.querySelector(".right .ch").innerHTML = `
            <div class="hm-chart">
                <img src="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/content-gh/en/_mdb5/standard/web/docs/design-blocks/admin/charts/assets/2.webp" alt="">
            </div>
            <div class="hm-chart1">
                <img src="https://th.bing.com/th/id/OIP.8bI3oxeXtOMAmkUqMptcKwHaDr?w=338&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="">
            </div>

            `
        })

        document.querySelector("#self").addEventListener("click",function(){
            document.querySelector(".right .ch").innerHTML = `
            	<div class="give">
                <h2>Give Self Thought</h2>
                <div class="give-box">
                    <!-- Use a textarea instead of a paragraph -->
                    <textarea id="selfThought" name="selfthougth" placeholder="Enter Userdetails After Enter your self thought" style="resize: both; width: 800px; height: 300px;"></textarea>
                    <button onclick="sendMessage()">Send</button>
                </div>
            </div>


            `
        })
        // Add event listener to the Review button
document.querySelector("#review").addEventListener("click", function() {
    // Redirect to review.jsp page
    window.location.href = "Review.jsp";
});


        document.querySelector("#status").addEventListener("click",function(){
            document.querySelector(".right .ch").innerHTML = `
            <div class="status-chart">
                <img src="https://i.etsystatic.com/38177066/r/il/7ecf54/4291978377/il_794xN.4291978377_2fal.jpg" alt="">
            </div>
            

            `
        })

        
        document.querySelector("#deals").addEventListener("click",function(){
            document.querySelector(".right .ch").innerHTML = `
            	<div class="deals">
                <table>
                    <tr>
                        <th>CustomerID</th>
                        <th>CustomerName</th>
                        <th>CustomerContect</th>
                        <th>Price</th>
                    </tr>
                    <%
                    try {
                        // JDBC Connection variables
                        String url = "jdbc:mysql://localhost:3306/CRM";
                        String username = "root";
                        String password = "123456";

                        // JDBC Connection
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection connection = DriverManager.getConnection(url, username, password);
                        Statement statement = connection.createStatement();
                        String sql = "SELECT * FROM deals";
                        ResultSet resultSet = statement.executeQuery(sql);

                        // Check if the result set is not empty
                        if (!resultSet.isBeforeFirst()) {
                            out.println("<tr><td colspan='4'>No data found</td></tr>");
                        } else {
                            // Iterate over the result set and display data in table rows
                            while(resultSet.next()) {
                                %>
                                <tr>
                                    <td><%= resultSet.getInt("CustomerID") %></td>
                                    <td><%= resultSet.getString("CustomerName") %></td>
                                    <td><%= resultSet.getString("CustomerContect") %></td>
                                    <td><%= resultSet.getDouble("Price") %></td>
                                </tr>
                                <%
                            }
                        }
                        // Close JDBC objects
                        resultSet.close();
                        statement.close();
                        connection.close();
                    } catch (SQLException e) {
                        out.println("SQL Exception: " + e.getMessage());
                        e.printStackTrace();
                    } catch (ClassNotFoundException e) {
                        out.println("Class not found: " + e.getMessage());
                        e.printStackTrace();
                    } catch (Exception e) {
                        out.println("Exception: " + e.getMessage());
                        e.printStackTrace();
                    }
                    %>

                </table>
            </div>

            `
        })
        
        document.querySelector("#logout").addEventListener("click", function() {
    // Redirect to login.jsp page
    window.location.href = "CustomerLogin.jsp";
});

       
    </script>

</body>
</html>