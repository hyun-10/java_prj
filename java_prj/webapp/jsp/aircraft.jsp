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
       header{
           width:90%;
           margin: auto;
           position: relative;
           margin-top: 30px;
       }
       header b{
           position: absolute;
           margin-top: 50px;
           left: 45%;
       }
       .login{
           position: relative;
           height: 50px;
           width: 90%;
           margin: auto;
       }
       .login1{
           position: absolute;
           
           height: 40px;
           width: 220px;
           right: 0px;
       }
        .login button{
            height: 40px;
           width: 100px;
           border-radius: 5px;
           right: 10px;
           margin-right: 0%;
        }
       nav{
           display:flex;
           flex-wrap: wrap;
       }
       .nav{
           cursor: pointer;
           width:200;
           height:50px;
           font-weight: bolder;
           line-height: 50px;
           text-align: center;
           margin: auto;
       }
       .img{
           margin: auto;
           margin-top: 10px;
           width:  800px;
           height: 400px;
           font-size: 25px;
       }
       img{
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
           margin-top: 100px;
           
       }
       h1{
           margin-left: 5%;
       }
       .title{
        font-weight: bolder;
       }
   </style>

   
<script>
    let files = ["../images/???????????????1.png", 
             "../images/???????????????2.png",
             "../images/???????????????3.png",
            ];
         
      
        let index =1;  
         function change( ){     
            
           let obj = document.getElementById("img")    ;
           obj.src= files[index];
           index++;   
           index = index % files.length  ;    
        }


        function show(){
           
            let interval=1500 ;   //1000 1???
            setInterval(change, interval);
        }


</script>

</head>
<form>
<body onload="show()">
    <div class="wrap">
       
    <header>
        <image src="../images/??????1-1.PNG" style="width:250px; height:140px;"></image>
        <b style="font-size:50px">A.A??????</b>
        
</header>
    <div class="login">
        <div class="login1">
         <button style="font-size: 20px;">?????????</button>
         <button style="font-size: 20px;">????????????</button>
        </div>
    </div>
<nav>
    <div class="nav">????????? ??????</div>    
<div class="nav">?????? ????????? ??????</div>    
<div class="nav">????????? ??????</div>    
</nav>

<hr>
<h1>????????? ??????</h1>

<div class="img">
    ????????? ?????????
    <hr>
    <img id="img" src="../images/???????????????1.png" alt="?????????">
    <hr>
</div>

<div class="info">
    
    <ul class="title">
        <li>????????????</li> 
        <li>????????? ??????</li>
        <li>??????????????????</li>
        <li>????????? ????????????</li>
        <li>????????? ????????????</li>
        <li>????????? ????????????</li>
        
    </ul>

    <ul>44??? </li> 
        <li>63.73m</li>
        <li>12,61.km</li>
        <li>A.A0001</li>
        <li>A.A0002</li>
        <li>A.A0003</li>
        
    </ul>
    
    <ul class="title">
        <li>?????? ??????</li> 
        <li>?????? ???</li>
        <li>????????????</li>
        <li>?????? ???/???/???</li>
        <li>?????? ???/???/???</li>
        <li>?????? ???/???/???</li>
    </ul>

    <ul>
        <li>????????? ?????????</li> 
        <li>60.91m</li>
        <li>901km/hr</li>
        <li>2012/01/23</li>
        <li>2015/07/16</li>
        <li>2017/03/30</li>
    </ul>
    
</div>
    

</form>
</body>
</html>