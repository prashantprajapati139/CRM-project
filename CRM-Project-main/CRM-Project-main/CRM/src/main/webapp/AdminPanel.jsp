<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-transform: capitalize;
            font-family: Arial, Helvetica, sans-serif;
        }
        .main{
            width: 100%;
            height: 100vh;
            background: linear-gradient(180deg,lightgray,aliceblue);
            margin: 0 auto;
            display: flex;
        }
        .main aside{
            width: 25%;
            height: 100vh;
            border-right: 1px solid lightslategray;
        }
        .main .right{
            width: 75%;
            /* height: 100vh; */
        }

        .right header{
            display: flex;
            /* width: 60%; */
            justify-content: space-between;
            align-items: center;
        }

        header .menu  #bars{
            font-size: 25px;
        }
        header .search{
            padding: 0 5px;
            width: 50%;
            background-color: lightgray;
            border: 1px solid darkgray;
            display: flex;
            align-items: center;
            border-radius: 5px;
        }
        header .search input{
            width: 95%;
            border: none;
            outline: none;
            background: transparent;
            padding: 10px;
        }
        header .profile{
            width: 50px;
            height: 50px;
        }
        header .profile img{
            width: 100%;
            border-radius: 100%;
        }

        /* header end  */

        aside .itm .it-box{ 
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
        aside .itm .it-box i{
            font-size: 25px;
        }
        aside .itm .it-box p{
            font-size: 25px;
            padding-left: 20px;
            font-weight: normal;
        }

        .logo{
            padding: 10px 10px;
            margin-bottom: 25px;
        }

        aside .itm .it-box:hover{
            transform: scale(1.05);
        }

        .manage{
            padding: 5% 2%;
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
        }
        .mnbox{
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
        .mnbox span{
            font-size: 28px;
        }
        .mnbox h2{
            font-weight: 100;
            margin: 15px 0px;
            font-size: 1.2em;
        }

    </style>
</head>
<body>
	    <div class="main">
        <aside>
            <div class="logo">
                <img src="./img/crm.png"  height="70" alt="logo">
            </div>

            <div class="itm">
                <div class="it-box" onclick="ck()"> 
                    <i class="fa-solid fa-home"></i>
                    <p>home</p>
                </div>
                <div class="it-box">
                    <i class="fa-solid fa-database"></i>
                    <p>User Data</p>
                    
                </div>
                <div class="it-box">
                    <i class="fa-solid fa-person"></i>
                    <p>Customer Review</p>
                </div>
                <div class="it-box">
                    <i class="fa-solid fa-handshake-simple"></i>
                    <p>Reletionship With Company </p>   
                </div>
                <div class="it-box">
                    <i class="fa-regular fa-comments"></i>
                    <p>Reporting</p>
                </div>
                <!-- <div class="it-box">
                    <i class="fa-solid fa-share"></i>
                    <p>share</p>
                </div> -->
                <div class="it-box">
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
                    <i class="fa-solid fa-search"></i>
                    <input type="text" placeholder="search here">
                </div>
                <div class="profile">
                    <img src="https://img.freepik.com/free-photo/3d-illustration-cute-cartoon-boy-with-backpack-his-back_1142-40542.jpg?t=st=1715413757~exp=1715417357~hmac=e89a6bf91bb3c2f238e36a321e8facdb8709e150b0a008297c56c68eeed25f1f&w=740" alt="">
                </div>
            </header>
            <!-- HEADER END -->
            <div class="manage">
                <div class="mnbox">
                    <span>👨‍⚕️</span>
                    <h2>user data</h2>
                </div>
                <div class="mnbox">
                    <span>👨‍⚕️</span>
                    <h2>

                        customer review
                    </h2>
                </div>
                <div class="mnbox">
                    <span>👨‍⚕️</span>
                    <h2>

                        relationship with company
                    </h2>
                </div>
                <div class="mnbox">
                    <span>👨‍⚕️</span>
                    <h2>

                        customer wise reporting 
                    </h2>
                </div>
            </div>

        </div>
    </div>
	
</body>
</html>