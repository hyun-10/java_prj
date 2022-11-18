<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/co.css"></style>
   <style>
      
       
       .option{
           width: 90%;
           height: 100px;
           margin: auto;
           margin-top: 50px;
           position: relative;
       }
       .option1{
           position: absolute;
           border-radius: 15px;
           text-align: center;
            appearance: none;
           font-size: 30px;
           height: 100%;
           width: 15%;
       }
       .option2{
           position:absolute;
           border-radius: 15px;
           text-align: center;
           appearance: none;
           font-size: 30px;
           height: 100%;
           width: 15%;
           left: 23%;
       }
       .option3{
           position: absolute;
           border-radius: 15px;
           text-align: center;
           appearance: none;
           font-size: 30px;
        height: 97%;
        width: 15%;
        right: 39%;
       }
       .option4{
         position: absolute;
         border-radius: 15px;
         text-align: center;
         appearance: none;
         font-size: 25px;
           height: 100%;
           width: 15%;
           right: 16%;
       }
       .option button{
           position: absolute;
           border-radius: 15px;
           font-size: 30px;
           height: 100%;
           width: 8%;
           right: 0%;
       }
       .event{
           display: flex;
           margin: auto;
           margin-top: 50px;
           height: 400px;
           width: 90%;
       }
       .event div{
           margin: auto;
           height: 400px;
           width: 40%;
       }
       #img1{
        border-radius: 15px;
          height: 100%;
          width: 100%;
       }
       #img2{
        border-radius: 15px;
          height: 100%;
          width: 100%;
       }
       a{
        text-decoration: none;
        }
        a:visited{
            color: black;
        }
   </style>

<script>  function changeImg(){
        
       
    let sel = document.getElementById("sel1");
    
    let  index  =  sel.selectedIndex  ;
    

    let imgname  = sel.options[index].value;
    

    //
    let img1 = document.getElementById("img1");
     
    img1.src=imgname;
    
    
}

function change(){

let sel = document.getElementById("sel2");

let  index  =  sel.selectedIndex  ;


let imgname  = sel.options[index].value;


//
let img2 = document.getElementById("img2");

img2.src=imgname;

}</script>
</head>
<body>
<%@ include file = "head2.jsp"%>
<%@ include file = "nav2.jsp"%>
<form>
    
    


<hr>

<nav class="option">
    <div>
        
        <select class="option1" id="sel1" onchange="changeImg()">
            
            <option value="../../images/여행사진1.png">출발지</option>
            <option value="../../images/인천.png">인천</option>
            <option value="../../images/제주.png">제주</option>
            <option value="../../images/부산.png">부산</option>
        </select>
    </div>
    <div>
    <select class="option2"  id="sel2"  onchange="change();">      
        <option value="../../images/여행사진2.png">목적지</option>
        <option value="../../images/인천.png" >인천</option>
        <option value="../../images/제주.png">제주</option>
        <option value="../../images/부산.png">부산</option>
    </select>
</div>
    <div>
        <input class="option3" type="date" min="2022-05-01" max="2022-05-10" class="option">
    </div>
   
    <div>
        <select class="option4">
            <option>출발 시간</option>
            <option>05:00</option>
            <option>10:00</option>
            <option>15:00</option>
            <option>20:00</option>
        </select>
    </div>
    <div><button onclick="window.open('login_search.jsp')">검색</button></div>
</nav>

    <div class="event">
        <div>
            
            <img id="img1" src="../../images/여행사진1.png">
        </div>

        <div>
            <img id="img2" src="../../images/여행사진2.png">
        </div>
    </div>
</div>
</form>
<br>
<br>
<br>
<%@ include file="footer.jsp"%>

</body>
</html>