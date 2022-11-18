<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        .overall{
            display:flex;
            flex-wrap: wrap;
            width: 770px;
            height: 300px;
            margin: auto;
        }
        .box1{
            width: 150px;
            height: 300px;
            border: 1px solid black;
            margin-right: 10px;
            border-radius: 25px;
        }
        .box2{
            width: 600px;
            height: 300px;
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
</style>

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
                <button><a href="회원정보조회.jsp">회원정보</a></button>
                <button><a href="예약내역조회.jsp">예매내역</a></button>
            </div>
        </div>
                
        <div class="box2">
            <table>
                <thead>
                    <tr>
                        <th id="serialnum"><h3>일련번호</h3></th>
                        <th id="reservation"><h3>예매내역</h3></th>
                        <th id="cancel"><h3>취소</h3></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="checkbox" class="ckbox"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="checkbox" class="ckbox"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="checkbox" class="ckbox"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="checkbox" class="ckbox"></td>
                    </tr>
                </tbody>
            </table>
            <button id="cancelbtn"><a href="취소확인.jsp">취소</a></button>
        </div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>