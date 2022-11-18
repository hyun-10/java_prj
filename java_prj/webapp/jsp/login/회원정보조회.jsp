<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        .overall{
            display:flex;
            flex-wrap: wrap;
            width: 770px;
            height: 300px;
            margin: auto;
        }
        .box1{
            width: 150px;
            height: 300px;
            border: 1px solid black;
            margin-right: 10px;
            border-radius: 25px;
        }
        .box2{
            width: 600px;
            height: 300px;
            border: 1px solid black;
            display:flex;
            flex-wrap: wrap;
            border-radius: 25px;
        }
        #circle{
            width: 100px;
            height: 100px;
            border-radius: 50px;
            border: 1px solid black;
            margin-top: 25px;
            margin-left: auto;
            margin-right: auto;
        }
        .buttons{
            width: 150px;
            height: 50px;
            margin-top: 50px;
        }
        .buttons button{
            display:flex;
            flex-wrap: wrap;
            margin: auto;
            margin-bottom: 5px;
        }
        .infoboxes{
            margin: 30px 140px 0px 140px;
            width: 320px;
            height: 205px;
            display:flex;
            flex-wrap: wrap;
        }
        .info1{
            width: 100px;
        }
        .info1 h4{
            margin: auto;
            margin-top: 20px;
            display:flex;
            flex-wrap: wrap;
        }
        .info2 input{
            margin-top: 20px;
            width: 200px;
            display:flex;
            flex-wrap: wrap;
        }
        #changebtn{
            margin: auto;
            margin-bottom: 30px;
        }
    </style>

</head>
<body>

<%@ include file="head2.jsp"%>
<%@ include file="nav2.jsp"%>


<div class="overall">
        <div class="box1">
            <div>
                <div id="circle"></div>
            </div>
            <div class="buttons">
                <button><a href="회원정보조회.jsp">회원정보</a></button>
                <button><a href="예약내역조회.jsp">예매내역</a></button>
            </div>
        </div>
                
        <div class="box2">
            <div class="infoboxes">
                <div class="info1">
                    <h4>아이디 :</h4>
                    <h4>이름 :</h4>
                    <h4>전화번호 :</h4>
                    <h4>이메일 :</h4>
                </div>
                <div class="info2">
                    <input type="text" readonly>
                    <input type="text" readonly>
                    <input type="text" readonly>
                    <input type="text" readonly>
                </div>
            </div>
            <button id="changebtn"><a href="회원정보수정.jsp">변경</a></button>
        </div>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>