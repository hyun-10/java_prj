<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
  <%@ page import="model.SearchAir" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<link rel="stylesheet" href="/p4/css/co.css">
    <link href="/p4/css/search.css" rel="stylesheet">
  <style>
 .cen{
 margin-left:600px;
 }
  </style>
  <script>
  function buy(){
	  let frm=document.frm;
	  frm.submit();
	  
  }
  </script>
</head>
<body>
 <%@ include file = "head2.jsp" %>
 <%@ include file = "nav2.jsp" %>
<main>

 
    <% int totRecords=(Integer)request.getAttribute("totpage"); %>
    
  
<table>
   
 
   
    <tr>
    
    <th>출발지</th>
    <th>출발일자</th>
    <th>출발시간</th>
    <th>도착지</th>
    <th>도착일자</th>
    <th>도착시간</th>
    <th>구매버튼</th>
    </tr>
    <% ArrayList<SearchAir> list=(ArrayList<SearchAir>)request.getAttribute("list1"); %>
  <% for(SearchAir m : list){ %>
  
    <tr>
    
        
        <td><div id="dpsite" name="dpsit"><%=m.getDpsite() %></div></td>
        <td><div id="dpdate" name="dpdat"><%=m.getDpdate() %></div></td>
        <td><div id="dptime" name="dptim"><%=m.getDptime() %></div></td>
        <td><div id="arsite" name="arsit"><%=m.getArsite() %></div></td>
        <td><div id="ardate" name="ardat"><%=m.getArdate() %></div></td>
        <td><div id="artime" name="artim"><%=m.getArtime() %></div></td>
        <td><button onclick="buy();">구매하기</button></td>
     
    </tr>
   
    <% }%>
   <form name="frm" method="get" action="jsp/login/login_detailSearch.jsp">
    <input type="hidden" name="dpsite" value="<%=list.get(0).getDpsite()%>">
    <input type="hidden" name="arsite" value="<%=list.get(0).getArsite()%>">
    <input type="hidden" name="dpdate" value="<%=list.get(0).getDpdate()%>">
    <input type="hidden" name="dptime" value="<%=list.get(0).getDptime()%>">
    <input type="hidden" name="ardate" value="<%=list.get(0).getArdate()%>">
	<input type="hidden" name="artime" value="<%=list.get(0).getArtime()%>">          
    </form>
        
</table>

<div class="cen">
<% int currentPage = (Integer)request.getAttribute("p");



int pageSize=5;
int totalPage=0;

if(totRecords%pageSize==0){
	totalPage=totRecords / pageSize;
}else{
	totalPage=totRecords / pageSize+1;
}

int grpSize = 5; // 그룹의 사이즈 결정 [1] [2] [3] [4] [5]
int currentGrp=0;

if(currentPage%grpSize == 0){
	currentGrp = currentPage / grpSize; //5 /5 ->1그룹
}else{
	currentGrp=currentPage / grpSize+1; //6 /5 ->1+1 ->2그룹
}

int grpStartPage = (currentGrp-1)*grpSize +1; //그룹의 시작번호 현재그룹 2그룹 시작은 :6
int grpEndPage = currentGrp * grpSize; // 그룹의 끝번호 현재그룹 2그룹 끝 :10

if(grpEndPage >totalPage){
	grpEndPage = totalPage; //그룹의 끝번호 총페이지수가 27이면 => [26] [27]에서 끝나야함
}
int index = grpStartPage ;

if( currentGrp>1){  %>

<a href="/p4/search?p=<%=index-1 %>&dpsiteh=<%=list.get(0).getDpsite()%>&arsiteh=<%=list.get(0).getArsite()%>&dpdate=<%=list.get(0).getDpdate()%>&dptime=<%=list.get(0).getDptime()%>" > [이전]</a>
<%
}


while( index  <= grpEndPage ){
%>	

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/p4/search?p=<%=index %>&dpsiteh=<%=list.get(0).getDpsite()%>&arsiteh=<%=list.get(0).getArsite()%>&dpdate=<%=list.get(0).getDpdate()%>&dptime=<%=list.get(0).getDptime()%>" > [<%=index %> ]</a>
<%
  index++;
}

if( index  <= totalPage){
%>

<a href="/p4/search?p=<%=index %>&dpsiteh=<%=list.get(0).getDpsite()%>&arsiteh=<%=list.get(0).getArsite()%>&dpdate=<%=list.get(0).getDpdate()%>&dptime=<%=list.get(0).getDptime()%>" > [다음]</a>

<%} %>

</div>
</main>


</div>
 <%@ include file="../footer.jsp" %>
</body>
</html>