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
            <h1><%=session.getAttribute("name")%>님,</h1>
            <h2>회원님의 아이디는 <%=session.getAttribute("id")%> 입니다.</h2>
        </div>
        <div class="buttons">
            <button><a href="../login.jsp">로그인하기</a></button>
            <button><a href="../../unlogin/home.jsp">메인화면으로</a></button>
        </div>
</div>


<%@ include file="../../footer.jsp"%>
</body>
</html>