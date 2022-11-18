<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/co.css">
    <style>
        nav{      
           /*width:770px;
           margin: auto;*/
           border-top:2px solid gray;
           border-bottom:2px solid gray;
           
       }
       

       ul, li{

            width:100%;

            /* 정확한 위치지정을 위해 */
            margin:0px; 
            padding:0px;

            /*리스트 구분자 안보이게 */
            list-style: none;
        }


       .nav_menu{
            display:flex;
       }
       .nav{
           cursor: pointer;
           width:200px;
           height:50px;
           border:1px solid black;
           line-height: 50px;
           text-align: center;
           margin: 10px auto;
       }

        /* 하위메뉴 크기 및 위치구현 */
        .nav_menu .menu1   li{

            width: 200px;
            height: 40px;
            line-height: 40px;

            text-align: center;
            font-weight: 500;

            background-color: #557fc5;

            margin-top: -10px;
            padding: 0px 120px;

       }


       	/* 메뉴창 기능구현 */
        /* 하위메뉴 숨기기 */
        .nav_menu .menu1:hover ul li{
            display: block;
            border-bottom: 0.5pt solid beige;
            margin-left: 30px;
        }
        .nav_menu .menu1 li{
            display: none;
        }


        /*하위메뉴 사이즈구현*/
        /* .nav_menu .menu1:hover ul{  
            position: absolute;
            z-index: 1000;      
        }  */


	li a{
	/* 밑줄제거 */
    text-decoration: none; 
    /* 색깔제거 */
    color: black;
	}



    </style>
</head>
<body>
    <nav>
        <ul class="nav_menu">
            <li class="menu1"> <div class="nav" id="info_aircraft"> <a href="/p4/jsp/login/aircraft.jsp">항공기 안내</a> </div></li>
            <li class="menu1"><div class="nav" id="info_seatClass">좌석 클래스 안내</div>
                <ul>
                    <li><a href="/p4/jsp/login/li_일등석안내.jsp">일등석</a></li>
                    <li><a href="/p4/jsp/login/li_일반석안내.jsp">일반석</a></li>
                </ul>
            </li>
            <li class="menu1"><div class="nav" id="info_service" onclick="window.loaction=''">서비스 안내</div>
            	<ul>
                    <li><a href="/p4/jsp/login/login_service.jsp">기내서비스</a></li>
                    <li><a href="/p4/jsp/login/login_dutyfreep.jsp">기내면세</a></li>
                </ul>
            </li>
        </ul>    

    </nav> 
</body>
</html>