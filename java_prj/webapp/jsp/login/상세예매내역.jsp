<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        .overall{
            width: 500px;
            height: 400px;
            border-radius: 50px;
            margin: auto;
            border: 1px solid black;
        }
        .infoboxes{
            margin: auto;
            margin-top: 30px;
            width: 320px;
            height: 300px;
            display:flex;
            flex-wrap: wrap;
        }
        .info1{
            width: 110px;
        }
        .info1 h4{
            margin: auto;
            margin-top: 22px;
            display:flex;
            flex-wrap: wrap;
        }
        .info2 input{
            margin-top: 20px;
            width: 200px;
            display:flex;
            flex-wrap: wrap;
        }
        #closebtn{
            margin: 10px 200px 10px 230px;
        }
        
</style>

</head>
<body>
<%@ include file="head2.jsp"%>
<%@ include file="nav2.jsp"%>


<div class="overall">
        <div>
            <div class="infoboxes">
                <div class="info1">
                    <h4>예매번호 :</h4>
                    <h4>예매시간 :</h4>
                    <h4>출발정보 :</h4>
                    <h4>도착정보 :</h4>
                    <h4>팁승인원 :</h4>
                    <h4>좌석등급 :</h4>
                    <h4>좌석위치 :</h4>
                </div>
                <div class="info2">
                    <input type="text" readonly>
                    <input type="text" readonly>
                    <input type="text" readonly>
                    <input type="text" readonly>
                    <input type="text" readonly>
                    <input type="text" readonly>
                    <input type="text" readonly>
                </div>
            </div>
            <button id="closebtn"><a href="예약내역조회.jsp">닫기</a></button>
        </div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>