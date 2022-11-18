<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style src="co.css"></style>
   <style>
       
       
       
       .img{
           margin: auto;
           margin-top: 10px;
           width:  800px;
           height: 400px;
           font-size: 25px;
       }
       #img{
           width: 100%;
           height: 100%;
       }
       ul{
        list-style:none;
        margin: auto;
        margin-top: 0px;
       }
       .info{
           display: flex;
           width:  800px;
           height: 400px;
           margin: auto;
           font-size: 17px;
           margin-top: 130px;
           
       }
       h1{
           margin-left: 5%;
       }
       .title{
        font-weight: bolder;
       }
   </style>

   
<script>
    let files = ["../../images/비행기사진1.png", 
             "../../images/비행기사진2.png",
             "../../images/비행기사진3.png",
            ];
         
      
        let index =1;  
         function change( ){     
            
           let obj = document.getElementById("img")    ;
           obj.src= files[index];
           index++;   
           index = index % files.length  ;    
        }


        function show(){
           
            let interval=1500 ;   //1000 1초
            setInterval(change, interval);
        }


</script>

</head>
<form>
<body onload="show()">
    
       
<%@ include file="head.jsp"%>
<%@ include file="nav.jsp"%>
       
    

<hr>
<center><h1>항공기 안내</h1></center>

<div class="img">
    <center>항공기 갤러리</center>
    <hr>
    <img id="img" src="../../images/비행기사진1.png" alt="항공기">
   
    <hr>
</div>

<div class="info">
   
    <ul class="title">
  
        <li>운영좌석</li> 
        <li>항공기 길이</li>
        <li>최대운항거리</li>
        <li>항공기 등록번호</li>
        <li>항공기 등록번호</li>
        <li>항공기 등록번호</li>
        
    </ul>

    <ul>44석 </li> 
        <li>63.73m</li>
        <li>12,61.km</li>
        <li>A.A0001</li>
        <li>A.A0002</li>
        <li>A.A0003</li>
        
    </ul>
    
    <ul class="title">
        <li>좌석 구분</li> 
        <li>날개 폭</li>
        <li>순항속도</li>
        <li>제조 년/월/일</li>
        <li>제조 년/월/일</li>
        <li>제조 년/월/일</li>
    </ul>

    <ul>
        <li>일등석 일반석</li> 
        <li>60.91m</li>
        <li>901km/hr</li>
        <li>2012/01/23</li>
        <li>2015/07/16</li>
        <li>2017/03/30</li>
    </ul>
    
</div>
    

</form>
<%@ include file="footer.jsp"%>
</body>
</html>