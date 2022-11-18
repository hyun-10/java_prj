<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login Acorn Air</title>
<link rel="stylesheet" href="../../css/logsign/login.css">
<link rel="stylesheet" href="../../css/logsign/font.css">
<link rel="stylesheet" href="../../css/logsign/btn.css">
<script>
	function ok(){
		let frm = document.info_login;
		
		frm.method = "get";
		
		frm.action = "/p4/loginok";
		
		frm.submit();
	}
</script>    

</head>
<body>
    <main>
    <div onclick="window.location='../unlogin/home.jsp'" id="logo_div"></div>
    <div class="wrap_login">
        <h2>로그인</h2>
        <form name="info_login" id="info_login">
            <span class="bold">아이디<br></span>
            <div class="smallBlank"></div>
            <input type="text" name="m_id" id="m_id"><br>
            <div class="blank"></div>
            <span class="bold">비밀번호<br></span>
            <div class="smallBlank"></div>
            <input type="password" name="m_pw" id="m_pw"><br>
            <div onclick="ok()" class="btn" id="btn_login">로그인</div>
        </form>
        <div class="find_account"><a href="findid.jsp">아이디찾기</a>  |  <a href="findpw.jsp">비밀번호찾기</a> </div>
        <div class="btn" id="btn_signIn" onclick="window.location='signin.jsp'">회원가입</div>
    </div>
    </main>
    <%@ include file="../footer.jsp"%>
</body>
</body>
</html>