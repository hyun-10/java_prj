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
            margin: 50px auto;
            border: 1px solid black;
        }
        .box{
            margin-top: 130px;
            margin-bottom: 80px;
            text-align: center;
        }
        .buttons{
        
        	display: flex;
        	
            width: 205px;
            height: 50px;
            
            
            margin-left: 150px;
        }
        .buttons button{
            height: 30px;
            width: 200px;
            
        }

    </style>
</head>
<body>

<%@ include file="head.jsp"%>
<%@ include file="nav.jsp"%>

<div class="overall">
        <div class="box">
            <h1><%=session.getAttribute("id")%>님,</h1>
            <h2>죄송하지만 회원정보가 일치하지 않습니다.</h2> <h2> 다시 시도 부탁드립니다.</h2>
        </div>
        <div class="buttons">
            <button><a href="../findpw.jsp">비밀번호 찾기</a></button>
            <button><a href="../../unlogin/home.jsp">메인화면으로</a></button>
        </div>
</div>


<%@ include file="../../footer.jsp"%>
</body>
</html>