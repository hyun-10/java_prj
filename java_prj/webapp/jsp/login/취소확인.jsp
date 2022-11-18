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
        .box{
            margin-top: 130px;
            margin-bottom: 80px;
            text-align: center;
        }
        .buttons{
            width: 205px;
            height: 50px;
            margin: auto;
        }
        .buttons button{
            height: 30px;
            width: 100px;
        }

    </style>
</head>
<body>

<%@ include file="head2.jsp"%>
<%@ include file="nav2.jsp"%>

<div class="overall">
        <div class="box">
            <h1>취소되었습니다</h1>
        </div>
        <div class="buttons">
            <button><a href="회원정보조회.jsp">내계정</a></button>
            <button><a href="home.jsp">메인화면으로</a></button>
        </div>
</div>


<%@ include file="footer.jsp"%>
</body>
</html>