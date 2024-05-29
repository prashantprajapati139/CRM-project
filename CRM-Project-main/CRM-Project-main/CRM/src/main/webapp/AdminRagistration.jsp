<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta
			name="viewport"
			content="width=device-width, initial-scale=1.0"
		/>
		<title>Admin Registration </title>
		<style>
			body {
				font-family: Arial, sans-serif;
				background-color: #f3f3f3;
				margin: 0;
				padding: 0;
				display: flex;
				justify-content: center;
				align-items: center;
				height: 100vh;
			}.d{
                text-align: center;
            }

			.main {
				background-color: #fff;
				border-radius: 15px;
               
				box-shadow: 0 0 20px
					rgba(0, 0, 0, 0.2);
				padding: 20px;
				width: 300px;
			}

			.main h2 {
				color: #4caf50;
				margin-bottom: 20px;
			}

			label {
				display: block;
				margin-bottom: 5px;
				color: #555;
				font-weight: bold;
			}

			input[type="text"],
			input[type="email"],
			input[type="password"],
			select {
				width: 100%;
				margin-bottom: 15px;
				padding: 10px;
				box-sizing: border-box;
				border: 1px solid #ddd;
				border-radius: 5px;
			}

			button[type="submit"] {
				padding: 15px;
				border-radius: 10px;
				border: none;
				background-color: #4caf50;
				color: white;
				cursor: pointer;
				width: 100%;
				font-size: 16px;
			}

            .popup {
                /* background: white,url(https://techctice.com/wp-content/uploads/2020/10/Checkmark.gif); */
                background:white;
                background-repeat: no-repeat;
                background-position: center;
                background-size: 50px;
                text-align: center;
                position: fixed;
                top: 30%;
                left: 0;
                right: 0;
                margin: 0 auto;
                /* left: 50%; */
                width: 30%;
                margin: 0 auto;
                font-size: 20px;
                padding: 5px 20px;
                border: 1px solid black;
            }
            .popup h3{
                /* font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; */
                font-size: 2vw;
                /* -webkit-text-stroke: 1px #4caf50; */
                color: #4caf50;
            }
            .popup img{
                width: 50%;
                height: inherit;
            }
		</style>
		
	</head>

	<body>
	

		<div class="main">
			<h2 class ="d"><b>Admin Registration</b></h2>
			<form action="AdminRagistration" method="post">
				<label for="first"
					>First Name:</label
				>
				<input
					type="text"
					id="first"
					name="first"
					required
				/>

				<label for="last"
					>Last Name:</label
				>
				<input
					type="text"
					id="last"
					name="last"
					required
				/>

				<label for="email">Email:</label>
				<input
					type="email"
					id="email"
					name="email"
					required
				/>

				<label for="password"
					>Password:</label
				>
		<input
					type="password"
					id="password"
					name="password"
				
					title="Password must contain at least one number, 
						one alphabet, one symbol, and be at 
						least 8 characters long"
					required
				/>
		

				

				<label for="mobile"
					>Contact:</label
				>
				<input
					type="text"
					id="mobile"
					name="mobile"
					maxlength="10"
					required
				/>

				<label for="gender"
					>Gender:</label
				>
				<select
					id="gender"
					name="gender"
					required
				>
					<option value="male">
						Male
					</option>
					<option value="female">
						Female
					</option>
					<option value="other">
						Other
					</option>
				</select>

				<button type="submit" onclick="ck()">
				
					Submit
				</button>
			</form>
		</div>


        
        
        <script>
            
            function ck(){
                setTimeout(function(){
                    var main = document.querySelector(".main")
                    
                    var nw = document.createElement("div")
                    nw.innerHTML = `
                    <h3> register succesfully</h3>
                    <img src="https://techctice.com/wp-content/uploads/2020/10/Checkmark.gif" alt="">
                    `
                    nw.classList.add("popup")
                    main.appendChild(nw)
                },1000)
               
            }

        </script>
		
	</body>


</html>