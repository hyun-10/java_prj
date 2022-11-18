<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="/p4/css/co.css" rel="stylesheet">
    <link href="/p4/css/dutyfreep.css" rel="stylesheet">
   
</head>
<body>
    <%@ include file="head.jsp" %>
 <%@ include file="nav.jsp" %>
<div class="mainwrap">
    <h1>국내선 기내 면세품</h1>
    <div id="headdiv">
        <image id="image1" src="/p4/images/dutyfreep.jpg"></image>  
        <div id="headdivi">
      
         </div>  
         <div id="headdivm">
            <br>
            전 노선에서 모든 면세품을 구입할 수 있으며, <br>
            사전 인터넷 예약 주문 시<br>
            온라인 할인 혜택과 함께 기내에서 <br>
            편안하게 전달 받으실 수 있습니다.
            </div>
    </div>

    
    <table>
        <h1>기내 면세품 예약주문제도(Ordering Duty-free Item in Advance)</h1>
        <tr>
            <th>기준</th>
            <th>국내지역</th>
            <th>비고</th>

        </tr>
        <tr>
            <th>전화</th>
            <td>080-0000-0000</td>
            <td rowspan="2">지정시간외 이메일을 통해 접수</td>

        </tr>
        <tr>
            <th>접수시간</th>
            <td>평일 08:00~12:00, 13:00~17:00</td>

        </tr>
        <tr>
            <th>홈페이지</th>
            <td>http://acornair.com</td>
            <td></td>

        </tr>
    </table>
    <ul style="list-style:none"><h1>기내 면세품 마일리지 결제</h1>
    <li>기내 면세품 구입 시 마일리지로 결제 가능하며, 주문은 [AcornAir 기내상품> 마일리지 사용] 에서 가능합니다.</li>
    </ul>   
    <table class="paymenttbl">
        <h1>지불방법 및 신용카드 사용 안내</h1>
        <tr>
            <th>지불방법</th>
            <td><ul>
                <li>기내에서 면세품 구입 시에는 주문품 확인 후 승무원에게 현금 또는 신용카드 결제</li>
                <li>인터넷에서 사전 결제한 손님께서는 기내 결제 불필요 (승무원이 사전주문 면세품 전달)</li>
            </ul></td>
        </tr>
        <tr>
            <th>신용카드</th>
            <td><ul>
                <li>국내 발행 카드에 한해 5만원 이상 결제 시 2~12개월 할부결제 가능.</li>
                <li>사용불가 카드 : 비자 일렉트론 카드(VISA ELECTRON CARD), 이지카드(EASY CARD), 체크카드(CHK CARD),
                    직불카드(DEBIT CARD), 체크 플러스 카드(CHK PLUS CARD), 기프트 카드(GIFT CARD), 체크카드 겸용 신용카드</li>
                <li>신용카드 및 여행자 수표를 사용하시는 분은 신분증 제시(타인명의 카드결제 불가).</li>
            </ul></td>
        </tr>
        <tr>
            <th>현금,여행자 수표</th>
            <td><ul>
                <li>이용가능한 화폐 및 여행자 수표는 USD(미국달러), KRW(한국 원), JPY(일본 엔), EUR(유럽 유로), CNY(중국 위안) 입니다.</li>
            </ul>
            </td>
        </tr>

    </table>
    <ul style="list-style:none"><h1>기내 면세품 교환 및 환불방법</h1>
        <li>상품 하자로 인한 교환/환불은 관세법상 기내에서 처리가 불가하오니 고객센터를 통해 안내 받으시기 바랍니다.
            <ul style="list-style:none" id="ccinfo"><b style="background-color:rgb(236, 236, 236);">고객센터(CUSTOMER CENTER)</b>
                <li>국내 상담문의 : 080-000-0000</li>
                <li>운영시간(평일/주말 포함) : 08:00 ~ 12:00, 13:00~17:00</li>

            </ul>
        </li>
        </ul>   
</div>
 <%@ include file="../footer.jsp" %>
</body>
</html>