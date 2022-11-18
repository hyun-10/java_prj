<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/co.css">
<style>
		header{
				   width:90%;
		           margin: auto;
		           position: relative;
		           margin-top: 30px;
		           
		           
		           /*width:770px;
		           margin:auto;
		           margin-bottom: 10px;*/
		           
		       }
		header b{
		           position: absolute;
		           margin-top: 50px;
		           left: 45%;
		           
		           font-size:50px
		       }
		img{
			width: 200px;
		    height :140px;
		
		    margin-top : 30px;
		    margin-left : 50px; 
		}






		.login{
           position: relative;
           height: 50px;
           width: 90%;
           margin: auto;
       }
       .login1{
           position: absolute;
           
           /*height: 40px;
           width: 220px;*/
           right: 0px;
       }
        .login button{
            height: 40px;
           width: 120px;
           border-radius: 5px;
           right: 10px;
           margin-right: 0%;
        }

</style>

<script>
function mypage(){
	
	
	
	
}
</script>
</head>
<body>
		<header>
			<img src="/p4/images/로고2-1.PNG" onclick="window.location='/p4/jsp/login/home.jsp'">
			<b onclick="window.location='/p4/jsp/login/home.jsp'">A.A항공</b>
		</header>
		
		<div class="login">
			
			<div class="login1">
			<b style="font-size: 20px;"><%=session.getAttribute("id")%>님, 오늘도 즐거운 여행되세요^^ </b>
		         <button style="font-size: 20px;" onclick="window.location='/p4/jsp/unlogin/home.jsp'">로그아웃</button>
		         <button style="font-size: 20px;" onclick="window.location='/p4/getmember'">마이페이지</button> 
	        </div>
	       
	    </div>
</body>
</html>