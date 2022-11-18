<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

  .images{
      width: 800px;
      height: 500px;
  }
  .section{
      width: 800px;
      margin: auto;
  }
       
</style>

</head>
<body>

<%@ include file="head2.jsp"%>
<%@ include file="nav2.jsp"%>


<hr>
    <div class="section">
        <h1>일반석</h1>
        <h3>최고의 서비스를 제공해드리겠습니다.</h3>
        <image src="../../images/economyseat.jpeg" class="images"></image>
    </div>
    <div class="section">
        <h1>기내 서비스</h1>
        <h2>기내식</h2>
        <h3>좋은 식재료를 사용한 건강한 식사를 제공하고 있습니다.</h3>
        <image src="../../images/economyfood.jpeg" class="images"></image>
        <image src="../../images/economyfood2.jpeg" class="images"></image>
        <image src="../../images/economyfood3.png" class="images"></image>
        <h3>식사와 어울리는 와인과 차 등을 즐겨보세요.</h3>
        <image src="../../images/wine.jpeg" class="images"></image>
        <image src="../../images/teaset.jpg" class="images"></image>
        <h2>엔터테인먼트</h2>
        <h3>최신영화, 음악, 게임 등 다양한 컨텐츠를 즐겨보세요.</h3>
        <image src="../../images/fcentertainment.jpeg" class="images"></image>
    </div>
    
<%@ include file="footer.jsp"%>
</body>
</html>