<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>find id Acorn Air</title>
<link rel="stylesheet" href="../../css/logsign/findid.css">
    <link rel="stylesheet" href="../../css/logsign/font.css">
    <link rel="stylesheet" href="../../css/logsign/btn.css">
</head>
<body>
    <main>
    <div onclick="window.location='../unlogin/home.jsp'" id="logo_div"></div>
    <div class="wrap_findId">
        <h2>아이디 찾기</h2>
        <form id="info_findId" method="get" action="/p4/findid">
            
            <span class="bold">이름<br></span>
            <div class="smallBlank"></div>
            <input type="text" name="m_name" id="m_name"><br>
            <div class="blank"></div>
            
            <span class="bold">주민등록번호<br></span>
            <div class="smallBlank"></div>
            <input type="text" name="m_socialcode" id="m_socialcode"><br>
            <div class="blank"></div>

            <span class="bold">이메일<br></span>
            <div class="smallBlank"></div>
            <input type="text" name="m_email" id="m_email"><br>
            <div class="blank"></div>

            <button class="btn" id="btn_findId">아이디 찾기</button>
        </form>
        
        
    </div>
    </main>
    <%@ include file="../footer.jsp"%>
</body>
</html>