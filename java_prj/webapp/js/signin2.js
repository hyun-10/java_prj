
function formatK(input){
	var regex = /[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g; 
    input.value = input.value.replace(regex,"");
}

function formatNS(input){
	var regex = /[^0-9|-]/g; 
    input.value = input.value.replace(regex,"");
}

function formatENS2(input){
	var regex = /[^a-z|A-Z|0-9|@.]/g; 
    input.value = input.value.replace(regex,"");
}

function formatEN(input){
	var regex = /[^a-z|A-Z|0-9]/g; 
    input.value = input.value.replace(regex,"");
}

function formatENS(input){
	var regex = /[^a-z|A-Z|0-9|!?^]/g; 
    input.value = input.value.replace(regex,"");
}



function submit(){
	
    	let frm = document.info_singIn;
    	
    	let nameRegExp = /^[가-힣]{2,4}$/; //이름형식
    	let scRegExp = /^[0-9]{6}[-]{1}[0-9]{7}$/; //주민번호형식
    	var telRegExp = /^[0-9]{2,3}[-]{1}[0-9]{3,4}[-]{1}[0-9]{4}$/; //전화번호형식
    	var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9][@]{1}[A-Za-z0-9]+[A-Za-z0-9][.]{1}[A-Za-z]{1,3}$/; //이메일 형식
    	var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 형식
    	var pwRegExp = /^[a-zA-z0-9]{4,12}$/; //비밀번호 형식
    	var answerRegExp = /^[가-힣]{1,100}$/; //본인확인 답 형식
    	
    	
    	//이름 유효성 검사
    	if(frm.m_name.value == ""){
    		alert("이름을 입력해주세요");
    		return;
    	} else if(!nameRegExp.test(frm.m_name.value)){
                alert("아름 형식에 벗어남");
                return;
            }else if(frm.m_socialcode.value == ""){
    		alert("주민등록번호를 입력해주세요");
    		return;
    	}else if(!scRegExp.test(frm.m_socialcode.value)){
                alert("주민번호 형식에 벗어남");
                return;
            }else{
    		//jquery로 태그선택
    		 let sc= $("#m_socialcode").val();
    		
    		
    		$.ajax({
    			type:"get",
    			daType:"text",
    			url:"http://localhost:8090/p4/duplicateSC",
    			data:{"m_socialcode":sc},
    			success:function(data, textStatus){			 
    				 if(data==1){
    					 	//alert(data);
    					 	alert("동일한 주민등록번호의 회원이 있습니다");
    						return;
    				 }else if(frm.m_tel.value == ""){
			    		alert("전화번호를 입력해주세요");
			    		return;
			    	}else{
					//jquery로 태그선택
    				 let tel= $("#m_tel").val();
    				 
    				 
    				 $.ajax({
		    			type:"get",
		    			daType:"text",
		    			url:"http://localhost:8090/p4/duplicateTel",
		    			data:{"m_tel":tel},
		    			success:function(data, textStatus){			 
		    				 if(data==1){
		    					 //alert(data);
		    					 alert("동일한 전화번호의 회원이 있습니다");
		    					return;
		    				 }else if(!telRegExp.test(frm.m_tel.value)){
					                alert("전화번호 형식에 벗어남");
					                return;
					            }else if(frm.m_email.value == ""){
						    		alert("이메일를 입력해주세요");
						    		return;
						    	}else if(!emailRegExp.test(frm.m_email.value)){
					                alert("이메일 형식에 벗어남");
					                return;
					            }else{
						    		//jquery로 태그선택
						    		 let email= $("#m_email").val();
						    		
						    		
						    		$.ajax({
						    			type:"get",
						    			daType:"text",
						    			url:"http://localhost:8090/p4/duplicateEmail",
						    			data:{"m_email":email},
						    			success:function(data, textStatus){			 
						    				 if(data==1){
						    					 //alert(data);
						    					 alert("동일한 이메일의 회원이 있습니다");
						    					 return;
						    				 }else if(frm.m_id.value == ""){
											    		alert("아이디를 입력해주세요");
											    		return;
											    	}else{
											    		//jquery로 태그선택
											    		 let id= $("#m_id").val();
											    		
											    		
											    		$.ajax({
											    			type:"get",
											    			daType:"text",
											    			url:"http://localhost:8090/p4/duplicateId",
											    			data:{"m_id":id},
											    			success:function(data, textStatus){			 
											    				 if(data==1){
											    					 //alert(data);
											    					 alert("동일한 아이디의 회원이 있습니다");
											    					 return;
											    				 }else if(!idRegExp.test(frm.m_id.value)){
													                alert("아이디 형식에 벗어남");
													                return;
													            }else if(frm.m_pw.value == ""){
															    		alert("비밀번호를 입력해주세요");
															    		return;
															    }else if(!pwRegExp.test(frm.m_pw.value)){
													                alert("비밀번호 형식에 벗어남");
													                return;
													            }else if(frm.m_answer.value == ""){
															    		alert("본인확인 답을 입력해주세요");
															    		return;
															    }else if(!answerRegExp.test(frm.m_answer.value)){
													                alert("본인확인 답 형식에 벗어남");
													                return;
													            }else{
																		frm.method="get";
																    	frm.action="/p4/insertmember";
																    	frm.submit();
															    }
															    }
														});
													}
													}
											});
										}
										}
								});
						}
						}
			 	});
		}		
		}
    	
    	



	    	
	    	
	    	
	    	