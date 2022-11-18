<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alter pw Acorn Air</title>
<link rel="stylesheet" href="../../css/logsign/alterpw.css">
    <link rel="stylesheet" href="../../css/logsign/font.css">
    <link rel="stylesheet" href="../../css/logsign/btn.css">   
<script>
	function ck(){
		let frm = document.info_alterPw;
		
		if(frm.m_pw.value != frm.ckM_pw.value){
			alert('비밀번호를 다시 확인하세요');
		}else{
		
		frm.method="get";
		frm.action="/p4/alterpw.unlogin";
		
		frm.submit();
		}
	}
</script>  
</head>
<body>
    <main>
    <div onclick="window.location='../unlogin/home.jsp'" id="logo_div"></div>
    <div class="wrap_alterPw">
        <h2>비밀번호 변경</h2>
        <form name="info_alterPw" id="info_alterPw" method="get" action="/p4/alterpw.unlogin">

            <span class="bold">변경할 비밀번호<br></span>
            <div class="smallBlank"></div>
            <input type="password" name="m_pw" id="m_pw"><br>
            <div class="blank"></div>

            <span class="bold">비밀번호 확인<br></span>
            <div class="smallBlank"></div>
            <input type="password" name="ckM_pw" id="ckM_pw"><br>
            <div class="blank"></div>
            
            <button type="button" class="btn" id="btn_alterPw" onclick="ck();">비밀번호 변경</button>
        </form>
        
        
    </div>
    </main>
    <%@ include file="../footer.jsp"%>
</body>
</html>