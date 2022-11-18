<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList" 
		import = "model.Reservation"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Reservation View</title>

<style>
        .overall{
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
        
        form{
        	margin:30px 0px;
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
        table{
            width: 550px;
            height: 250px;
            border: 1px solid black;
            border-collapse: collapse;
            margin: auto;
            margin-left: 25px;
        }
        #cancelbtn{
            margin: 5px 50px 5px 495px;
        }
        #logo{
            width:250px;
            height:80px;
        }
        th, tr, td{
            border: 1px solid black;
        }
        #serialnum{
            width: 80px;
        }
        #reservation{
            width: 220px;
        }
        #cancel{
            width: 80px;
        }
        .ckbox{
            margin-left: 50px;
        }
        #pagebutton{
        	margin-left:250px;
        }
</style>


<script>

function cancel(){
	
	let frm = document.info_reservation;
	//alert(frm);
	let airno = frm.ckbox.value;
	//alert(airno);
	if(airno==""){
		alert("취소할 예매내역의 버튼을 선택해주세요");
	}else{
	frm.method="get";
	frm.action="/p4/cancel.reservation";
	frm.submit();}
}
</script>
</head>
<body>
<%@ include file="head2.jsp"%>
<%@ include file="nav2.jsp"%>

<main>
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
        <form name="info_reservation">
            <table>
                <thead>
                    <tr>
                        <th id="serialnum"><h3>일련번호</h3></th>
                        <th id="reservation"><h3>예매내역</h3></th>
                        <th id="cancel"><h3>취소</h3></th>
                    </tr>
                </thead>
       
                <tbody>
                <% ArrayList<Reservation> rs= (ArrayList<Reservation>)session.getAttribute("r_list");
					for(int i =0; i <rs.size(); i++){
						Reservation r = rs.get(i);
					%>
                    <tr>
                        <td><%=r.getR_No() %></td>
                        <td><%=r.getR_reserDate() %><br><%=r.getR_airNo() %></td>
                        <td><input type="radio" class="ckbox" name="ckbox" value="<%=r.getR_airNo()%>"></td>
                    </tr>
              <%} %>
                </tbody>
            </table>
            
            
            <span id="pagebutton">
            <% 


int currentPage = (Integer) session.getAttribute("p");
int totRecords = (Integer) session.getAttribute("r_total");


//페이지
int pageSize = 5;
int totalPage = 0;

if( totRecords % pageSize == 0){
	totalPage = totRecords/pageSize;
}else{
	totalPage=totRecords/pageSize+1;
}


//그룹
int grpSize = 3;
int currentGrp=0;

if(currentPage % grpSize ==0){
	currentGrp = currentPage / grpSize;
}else{
	currentGrp = currentPage/ grpSize +1;
}

//그룹의 시작과 끝
int grpStartPage = (currentGrp-1) * grpSize+1; // 그룹의 시작번호
int grpEndPage = currentGrp * grpSize; // 그룹의 끝번호

if(grpEndPage > totalPage){
	grpEndPage = totalPage;
}


//그룹을 보여주기 위한 페이지 이동 버튼
int index = grpStartPage;


if(currentGrp >1){%>

<a href="/p4/list.reservation?p=<%=index-1 %>" > [이전]</a>
<%
}

while (index <= grpEndPage){

%>
<a href="/p4/list.reservation?p=<%=index %>" > [<%=index %> ]</a>	
<%
  index++;
}

if(index <=totalPage){
%>
<a href="/p4/list.reservation?p=<%=index %>" > [다음]</a>

<%} %>
</span>
            <button type="button" id="cancelbtn" onclick="cancel();">취소</button>
     </form>
        </div>
</div>
</main>

<%@ include file="footer.jsp"%>
</body>
</html>