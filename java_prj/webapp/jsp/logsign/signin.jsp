<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign in Acorn Air</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/logsign/signin.css">
    <link rel="stylesheet" href="../../css/logsign/font.css">
    <link rel="stylesheet" href="../../css/logsign/btn.css">
    <style>
    #m_question{
    margin-left: 80px;
    }
    
     button{
            margin-left:20px;
        }
     .explain{
     margin-left:10px;
     color:gray;
     font-size:8pt;
     }
    </style>
    <script src="/p4/js/signin2.js"></script>
</head>
<body>
    <main>
    <div onclick="window.location='../unlogin/home.jsp'" id="logo_div"></div>
    <div class="wrap_signIn">
        <h2>회원가입</h2>
        <form name="info_singIn" id="info_singIn">

            <span class="bold">이름</span><span class="explain">한글만 입력가능합니다. (형식 : 2~4자리의 한글)</span>
            <div class="smallBlank"></div>
            <input type="text" name="m_name" id="m_name" onkeyup="formatK(this)"><br>
            <div class="blank"></div>
            
            <span class="bold">주민등록번호</span><span class="explain">숫자와 -만 입력가능합니다. (형식 : 6자리 숫자 - 7자리 숫자)</span>
            <div class="smallBlank"></div>
            <input type="text" name="m_socialcode" id="m_socialcode" onkeyup="formatNS(this)"><br>
            <div class="blank"></div>

            <span class="bold">전화번호</span><span class="explain">숫자와 -만 입력가능합니다. (형식 : 2~3자리숫자 - 3~4자리숫자 - 4자리숫자)</span>
            <div class="smallBlank"></div>
            <input type="text" name="m_tel" id="m_tel"  onkeyup="formatNS(this)"><br>
            <div class="blank"></div>

            <span class="bold">이메일</span><span class="explain">영어,숫자와 특수기호(@ .)만 입력가능합니다. (형식 : 영어,숫자 @ 영어,숫자 . 영어 1~3자리 )</span>
            <div class="smallBlank"></div>
            <input type="text" name="m_email" id="m_email"  onkeyup="formatENS2(this)"><br>
            <div class="blank"></div>

            <span class="bold">아이디</span><span class="explain">숫자와 영어만 입력가능합니다. (형식 : 4~12자리 영어,숫자 )</span><br>
            <div class="smallBlank"></div>
            <input type="text" name="m_id" id="m_id"  onkeyup="formatEN(this)"><br>
            <div class="blank"></div>

            <span class="bold">비밀번호</span><span class="explain">숫자와 영어, 특수기호(!?^)만 입력가능합니다. (형식 : 4~12자리 영어,숫자 )</span>
            <div class="smallBlank"></div>
            <input type="password" name="m_pw" id="m_pw" onkeyup="formatENS(this)"><br>
            <div class="blank"></div>
            
            <span class="bold">본인확인 질문과 답</span><span class="explain">한글만 입력가능합니다. (형식 : 1~100자리 한글 )</span><br>
            <p id="m_question">나의 어릴적 시절 별명은?</p>        
            <input type="text" name="m_answer" id="m_answer" onkeyup="formatK(this)"><br>
            <div class="blank"></div>
            <div class="btn" id="btn_signIn" onclick="submit();">회원가입</div>
        </form>
        
    </div>
    </main>
    <%@ include file="../footer.jsp"%>
</body>
</html>