<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find pw Acorn Air</title>
<link rel="stylesheet" href="../../css/logsign/findpw.css">
    <link rel="stylesheet" href="../../css/logsign/font.css">
    <link rel="stylesheet" href="../../css/logsign/btn.css">
    <style>
    #m_question{
    margin-left: 80px;
    }
    </style>
</head>
<body>
    <main>
    <div onclick="window.location='../unlogin/home.jsp'" id="logo_div"></div>
    
    <div class="wrap_findPw">
        <h2>비밀번호 찾기</h2>
        <form id="info_findPw" method="get" action="/p4/findpw">
            
            <span class="bold">아이디<br></span>
            <div class="smallBlank"></div>
            <input type="text" name="m_id" id="m_id"><br>
            <div class="blank"></div>

            <span class="bold">이메일<br></span>
            <div class="smallBlank"></div>
            <input type="text" name="m_email" id="m_email"><br>
            <div class="blank"></div>

            <span class="bold">본인확인 질문에 대한 답<br></span>
            <div class="smallBlank"></div>
            <p id="m_question">나의 어릴적 시절 별명은?</p>             
            <input type="text" name="m_answer" id="m_answer"><br>
            <div class="blank"></div>

            <button class="btn" id="btn_findPw">비밀번호 찾기</button>
        </form>
        
        
    </div>
    </main>
    
    <%@ include file="../footer.jsp"%>
</body>
</html>