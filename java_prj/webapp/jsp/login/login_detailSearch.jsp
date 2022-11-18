<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="model.SearchAir"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="/p4/css/co.css" rel="stylesheet">
<link href="/p4/css/detailSearch.css" rel="stylesheet">
<script>
	window.addEventListener("load", function() {
		let seat = document.getElementById("seat");
		seat.addEventListener("click", function() {

			window.open("/p4/images/좌석_배치도.jpg", "myWin",
					"width:400px; height:400px;")
					
		});
	});
	
	
	

	let sum = 0;
	function add() {
		let seatgr = document.getElementsByName("seatgr");
		let site1 = document.getElementById("site1").value;
		let site2 = document.getElementById("site2").value;
		let indextbl = document.getElementById("indextbl");

		let trs = indextbl.getElementsByTagName("tr");
		let tr = document.createElement("tr");
		let nor = 100000;
		let prm = 200000;

		if (seatgr[0].checked == true) {

			if (site1 != "일반석") {
				tr.innerHTML = "<td class='price' value='nor' style='background-color:yellow'>일반석</td>"
						+ "<td>"
						+ nor
						+ "</td>"
						+ "<td name='seattd'>"
						+ site1
						+ "</td> <td><button onclick='removeRow(this)'>삭제</button></td>";

				sum += nor;
				indextbl.appendChild(tr);
			} else {
				alert('잘못된 선택입니다.')
			}
		} else if (seatgr[1].checked == true) {
			if (site2 != "일등석") {

				tr.innerHTML = "<td class='price' value='prm' style='background-color:brown'> 일등석</td>"
						+ "<td>"
						+ prm
						+ "</td>"
						+ "<td name='seattd'>"
						+ site2
						+ "</td> <td><button onclick='removeRow(this)'>삭제</button></td>";
				sum += prm;
				indextbl.appendChild(tr);
			} else {
				alert('잘못된 선택입니다.')
			}
		}

		let span = document.getElementById("order_price");
		span.innerHTML = sum;
	}

	function removeRow(obj) {
		let indextbl = document.getElementById("indextbl");
		let tr = obj.parentElement.parentElement;
		if (tr.firstElementChild.innerHTML == "일반석") {
			sum = sum - 100000;
		} else {
			sum -= 200000;
		}
		let span = document.getElementById("order_price");
		span.innerHTML = sum;

		indextbl.removeChild(tr);
	}

	function ck() {
		let cnt = 0;
		let seattd = document.getElementsByName("seattd");
		if (seattd[0] == null) {
			alert("입력된 값이 없습니다.")
		} else {
			for (let i = 0; i < seattd.length - 1; i++) {
				for (let j = i + 1; j < seattd.length; j++) {
					if (seattd[i].innerHTML == seattd[j].innerHTML) {
						cnt++;
					}
				}
			}

			if (cnt >= 1) {
				alert("중복된 값이 있습니다");
			} else {
				
				
				document.getElementById("dpsite").value = '<%=(String) request.getParameter("dpsite")%>';
				document.getElementById("arsite").value = '<%=(String) request.getParameter("arsite")%>';
				document.getElementById("dpdate").value = '<%=(String) request.getParameter("dpdate")%>';
				document.getElementById("ardate").value = '<%=(String) request.getParameter("ardate")%>';
				document.getElementById("dptime").value = '<%=(String) request.getParameter("dptime")%>';
				document.getElementById("artime").value = '<%=(String) request.getParameter("artime")%>';

				let splitStr = "";
				for (let i = 0; i < seattd.length; i++) {
					//console.log(seattd[i].innerHTML);
					document.getElementById("seatt").value += splitStr + seattd[i].innerHTML;
					splitStr = "|";
				}

				

				let frm = document.frm;
				frm.method = "get";
				frm.action = "/p4/insertAirNo"
				
					
			}
		}
		
		
	};
</script>
</head>


<body onload="calc();">
	<%@ include file = "head2.jsp" %>
 <%@ include file = "nav2.jsp" %>
	<main>
		<form name="frm">
			<input type="hidden" id="dpsite" name="dpsite">
			<input type="hidden" id="arsite" name="arsite">
			<input type="hidden" id="dpdate" name="dpdate"> 
			<input type="hidden" id="ardate" name="ardate"> 
			<input type="hidden" id="dptime" name="dptime"> 
			<input type="hidden" id="artime" name="artime"> 
			<input type="hidden" id="seatt" name="seatt">
			<div class="BigI">
				<div id="leftIndex" style='background-color: black;'>
					<div id="infobox" style='background-color: black;'>
						<p style="background-color: brown; color: white;">출발정보</p>
						<div id="dp" style='background-color: black;'>

							<div class="info" id="dpsite" name="dpsite"><%=(String) request.getParameter("dpsite")%></div>
							<div class="info" id="dpdate" name="dpdate" style="font-size: 20px;"><%=(String) request.getParameter("dpdate")%></div>
							<div class="info" id="dptime" name="dptime"><%=(String) request.getParameter("dptime")%>시</div>
						</div>
						<p style="background-color: brown; color: white;">도착정보</p>
						<div id="ar" style='background-color: black;'>
							<div class="info" id="arsite" name="arsite"><%=(String) request.getParameter("arsite")%></div>
							<div class="info" id="ardate" name="ardate"style="font-size: 20px;"><%=(String) request.getParameter("ardate")%></div>
							<div class="info" id="artime" name="artime"><%=(String) request.getParameter("artime")%>시</div>
						</div>
						<div class="info" id="airno" name="airno"style="background-color: black;"></div>
					</div>

				</div>
				<div id="rightIndex" style='background-color: rgb(255, 247, 236);'>

					<table id="indextbl">
						<tr id="indexline">
							<th style='background-color: black; color: white;'>구분</th>
							<th style='background-color: black; color: white;' colspan="2">등급(원/좌석)</th>
							<!---->

							<th style='background-color: black; color: white;'>등록/삭제</th>

						</tr>
						<tr>
							<td style='background-color: black; color: white;'>승객</td>
							<td colspan="2" id="index">
								<input type="radio" name="seatgr" id="seatn">
								<select id="site1" >
									<option>일반석</option>
									<option>A-4</option>
									<option>A-5</option>
									<option>A-6</option>
									<option>C-4</option>
									<option>C-5</option>
									<option>C-6</option>
									<option>D-4</option>
									<option>D-5</option>
									<option>D-6</option>
									<option>F-4</option>
									<option>F-5</option>
									<option>F-6</option>
								</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="seatgr" id="seatp">
								<select id="site2" >
									<option>일등석</option>
									<option>A-1</option>
									<option>A-2</option>
									<option>A-3</option>
									<option>C-1</option>
									<option>C-2</option>
									<option>C-3</option>
									<option>D-1</option>
									<option>D-2</option>
									<option>D-3</option>
									<option>F-1</option>
									<option>F-2</option>
									<option>F-3</option>
								</select>
							</td>
							<td>
								<button onclick="add();" type="button" >등록</button>
							</td>
						</tr>

					</table>
					<button id="seat" type="button">좌석배치도</button>
					<div id="rightboxfoot">
						<div style='background-color: rgb(255, 247, 236);'>
							<b style='background-color: rgb(255, 247, 236);'>총 구매금액 </b>
							 <span id="order_price">0</span>원
							<button onclick="ck();">구매하기</button>
		</form>
		</div>
		</div>
		<div id="searchbtn"></div>

		</div>


	</main>
	</div>
	<button id="searchbtn" type="button"
		onclick="window.location='home.jsp'" style="margin-left: 800px;">검색화면으로
	</button>
	<%@ include file="../footer.jsp"%>
</body>
</html>