<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Member" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
            margin: 30px 140px 0px 140px;
            width: 320px;
            height: 205px;
            display:flex;
            flex-wrap: wrap;
        }
        .info1{
        
        	position:absolute;
        	top:60px;
            width: 100px;
        }
        .info1 h4{
            margin: auto;
            margin-top: 20px;
            display:flex;
            flex-wrap: wrap;
        }
        .info2{
        	position:absolute;
        	top:60px;
        	right:150px;
        }
        .info2 input{
            margin-top: 20px;
            width: 200px;
            display:flex;
            flex-wrap: wrap;
        }
        #changebtn{
        
        	position:absolute;
            
            width:100px;
            
            left:50%;
            bottom:50px;
        }
    </style>
<script>
	function alterview(){
		
		let frm = document.viewMember;
		
		frm.method="post";
		
		frm.action="/p4/getmember";
		
	}
</script>
</head>
<body>

<%@ include file="head2.jsp"%>
<%@ include file="nav2.jsp"%>


<div class="overall">
        <div class="box1">
            <div>
                <div id="circle"></div>
            </div>
            <div class="buttons">
                <button onclick="window.location='/p4/getmember'">회원정보</button>
                <button onclick="window.location='/p4/list.reservation?p=1'">예매내역</button>
            </div>
        </div>
                
        <div class="box2">
        
        	<form name="viewMember">
            <div class="infoboxes">
                <div class="info1">
                
                    <h4>아이디 :</h4>
                    <h4>이름 :</h4>
                    <h4>전화번호 :</h4>
                    <h4>이메일 :</h4>
                </div>
                <div class="info2">
                <%	
                	Member m2 = (Member)session.getAttribute("member");%>
                    <input type="text" value="<%=m2.getM_id()%>"readonly>
                    <input type="text" value="<%=m2.getM_name()%>"readonly>
                    <input type="text" value="<%=m2.getM_tel()%>"readonly>
                    <input type="text" value="<%=m2.getM_email()%>"readonly>
                </div>
            </div>
            <button type="button" id="changebtn" onclick="window.location='회원정보수정.jsp'">변경</button>
            </form>
        </div>
        
</div>

<%@ include file="footer.jsp"%>
</body>
</html>