<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alter MemberInfo</title>

<style>
        .overall{
        
        	position:relative;
            display:flex;
            flex-wrap: wrap;
            width: 770px;
            height: 400px;
            margin: 50px auto;
        }
        .box1{
            width: 150px;
            height: 400px;
            border: 1px solid black;
            margin-right: 10px;
            border-radius: 25px;
        }
        .box2{
            width: 600px;
            height: 400px;
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
            margin: 5px 140px 10px 140px;
            width: 320px;
            height: 250px;
            display:flex;
            flex-wrap: wrap;
        }
        .info1{
        	position:absolute;
        	
        	top:50px;
            width: 110px;
        }
        .info1 h4{
            margin: auto;
            margin-top: 20px;
            display:flex;
            flex-wrap: wrap;
        }
        .info2{
        	position:absolute;
        	
        	top:50px;
        	right:150px;
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
<script>

function altermember(){
	let frm = document.info_altermember;
	
	if(frm.m_pw.value != frm.m_ckPw.value){
		alert("비밀번호를 다시 확인해주세요");
	}else{ 
	frm.method="get";
	frm.action="/p4/updateinfo";
	frm.submit();
	}
}
</script>
</head>
<body>

<%@ include file="head2.jsp"%>
<%@ include file="nav2.jsp"%>

<form name="info_altermember" method="get" action="/p4/updateinfo">
<div class="overall">
        <div class="box1">
            <div>
                <div id="circle"></div>
            </div>
             <div class="buttons">
                <button type="button" onclick="window.location='/p4/getmember'">회원정보</button>
                <button type="button" onclick="window.location='/p4/list.reservation?p=1'">예매내역</button>
            </div>
        </div>
                
        <div class="box2">
            <div class="infoboxes">
                <div class="info1">
                    <h4>아이디 :</h4>
                    <h4>비밀번호 :</h4>
                    <h4>비밀번호 확인:</h4>
                    <h4>이름 :</h4>
                    <h4>전화번호 :</h4>
                    <h4>이메일 :</h4>
                </div>
                <div class="info2">
                <% Member m = (Member)session.getAttribute("member"); %>
                    <input type="text" name="m_id" value="<%=m.getM_id()%>" readonly>
                    <input type="password" name="m_pw" value="">
                    <input type="password" name="m_ckPw">
                    <input type="text" name="m_name" value="<%=m.getM_name()%>">
                    <input type="text" name="m_tel" value="<%=m.getM_tel()%>">
                    <input type="text" name="m_email" value="<%=m.getM_email()%>">
                </div>
            </div>
            <button type="button" id="changebtn" onclick="altermember();">변경적용</button>
        </div>
</div>
</form>


<%@ include file="footer.jsp"%>
</body>
</html>