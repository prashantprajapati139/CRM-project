<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Login Form</title> 
    <link rel="stylesheet" href="Login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  background:white;
  overflow: hidden;
}
::selection{
  background: rgba(48, 160, 209, 0.3);
}
.container{
  max-width: 440px;
  padding: 0 20px;
  margin: 170px auto;
}
.wrapper{
  width: 100%;
  background: #fff;
  border-radius: 5px;
  box-shadow: 0px 4px 10px 1px rgba(0,0,0,0.1);
}
.wrapper .title{
  height: 90px;
  background: rgba(17, 90, 51, 0.669);
  border-radius: 5px 5px 0 0;
  color: #fff;
  font-size: 30px;
  font-weight: 600;
  display: flex;
  align-items: center;
  justify-content: center;
}
.wrapper form{
  padding: 30px 25px 25px 25px;
}
.wrapper form .row{
  height: 45px;
  margin-bottom: 15px;
  position: relative;
}
.wrapper form .row input{
  height: 100%;
  width: 100%;
  outline: none;
  padding-left: 60px;
  border-radius: 5px;
  border: 1px solid lightgrey;
  font-size: 16px;
  transition: all 0.3s ease;
}
form .row input:focus{
  border-color: #16a085;
  box-shadow: inset 0px 0px 2px 2px rgba(26,188,156,0.25);
}
form .row input::placeholder{
  color: #999;
}
.wrapper form .row i{
  position: absolute;
  width: 47px;
  height: 100%;
  color: #fff;
  font-size: 18px;
  background:  rgba(9, 55, 31, 0.669);
  border: 1px solid  rgba(9, 55, 31, 0.669);
  border-radius: 5px 0 0 5px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.wrapper form .pass{
  margin: -8px 0 20px 0;
}
.wrapper form .pass a{
  color:  rgba(9, 55, 31, 0.669);
  font-size: 17px;
  text-decoration: none;
}
.wrapper form .pass a:hover{
  text-decoration: underline;
}
.wrapper form .button input{
  color: #fff;
  font-size: 20px;
  font-weight: 500;
  padding-left: 0px;
  background:  rgba(9, 55, 31, 0.669);
  border: 1px solid #16a085;
  cursor: pointer;
}
form .button input:hover{
  background:  rgba(9, 55, 31, 0.669);
}
.wrapper form .signup-link{
  text-align: center;
  margin-top: 20px;
  font-size: 17px;
}
.wrapper form .signup-link a{
  color:  rgba(9, 55, 31, 0.669);
  text-decoration: none;
}
form .signup-link a:hover{
  text-decoration: underline;
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
    <div class="container">
      <div class="wrapper">
        <div class="title"><span><b>Customer Login</b></span></div>
        <form action="Login1" method="post">
          <div class="row">
            <i class="fas fa-user"></i>
            <input type="text" name="contect" placeholder="Email or Phone" required>
          </div>
          <div class="row">
            <i class="fas fa-lock"></i>
            <input type="password"  name ="password"placeholder="Password" required>
          </div>
        <!-- <div class="pass"><a href="#">Forgot password?</a></div> -->
         <div class="row button">
            <input type="submit" value="Login" onclick="ck()">
          </div>
          <div class="signup-link">Not a member? <a href="Ragistration.jsp">Signup now</a></div>
        </form>
       	</div>
        
      </div>
    </div>
	 <script>
            
            function ck(){
                setTimeout(function(){
                    var main = document.querySelector(".main")
                    
                    var nw = document.createElement("div")
                    nw.innerHTML = `
                    <h3> Login succesfully</h3>
                    <img src="https://techctice.com/wp-content/uploads/2020/10/Checkmark.gif" alt="">
                    `
                    nw.classList.add("popup")
                    main.appendChild(nw)
                },1000)
               
            }

        </script>

  </body>
</html>