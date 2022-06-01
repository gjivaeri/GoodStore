<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>         
<%@ page session="false" %>
<!DOCTYPE html>
<head>
	<title>GOOD STORE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../common/static_link.jsp" %>
<!-- 개별파트 -->
    <link rel='stylesheet' href="css/login.css">  
    <link rel='stylesheet' type='text/css' media='screen' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.min.css'>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js'></script>
    <style>
    body{
		padding-top:0px; 
		}
    
      /* modal창 관련 CSS */
      .background{
        /* 스크롤이 발생하더라도 고정 */
        position: fixed; 
        top:0;
        left:0;
        width:100%;
        height:100%;
        background-color: rgba(0, 0, 0, 0.4);
        /*숨기기*/
        z-index: -1;
        opacity: 0;
		
      }
      .show{
        opacity: 1;
        /* 화면의 맨앞 */
        z-index:1000;
        transition:all 0.5s;
      }
      .window{
        position:relative;
        width: 100%;
        height: 100vh;
        color:#26282b;
      }
      .modal_body{
        position: absolute;
        top: 50%;
        left: 50%;
        background-color: #ffffff;
        box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
        width: 600px;
        height: 350px;
        transform: translate(-50%, -40%);
        text-align: center;
        padding-top:30px;
        
      }
      .show .modal_body{
        transform: translate(-50%, -50%);
        transition: all 0 0.5s;
      }
      .modal_bottom{
        padding-top: 30px;
        height: 35%;
        z-index: -1;
        background-color:rgba(248,214,72);
        display: flex;
        justify-content: center;
        /* background-color:#45436C; */
      }
      .close{
        width:170px;
        height:50px;
        background-color:#26282b;
        color:white;
        font-size:18px;
      }
      .close:hover{
        color:gray;
      }
      
   #btnStyle1{
     width: 150px;
     height:35px; 
     margin: 0px; 
     background-color: rgb(193, 192, 192);
     text-align: center; 
     padding-left: 15px; 
     padding-right: 15px; 
     color: #ffffff;
     }
   #btnStyle2{
     height: 35px; 
     width: 150px; 
     margin: 0px; 
     background-color: rgb(193, 192, 192);
     text-align: center; 
     padding-left: 15px; 
     padding-right: 15px; 
     color: #ffffff;
     }
.multi_select_box{
	width:100%;
	margin-top: 8px;
	margin-bottom: 30px;
	height:50px
}
.multi_select_box select{
    width:100%;
}
.multi_select_box button{
   background-color: #FFFFFF !important;
   color: #333 !important;
   border-color: #c7c6c6;
   padding-left: 20px;
   padding-top:13px;
   padding-bottom:13px;
}
.select-box button{
   background-color: #FFFFFF !important;
   color: #333 !important;
   border-color: #c7c6c6;
   padding-left: 20px;
   padding-top:13px;
   padding-bottom:13px;
   margin-bottom: 20px;
}
</style>
<script type="text/javascript">
   window.history.forward();
   function noBack() { window.history.forward(); }
</script>
<script type="text/javascript">

var emailConfirm=false;
var nickConfirm=false;
function selectAll(selectAll) {
	const checkboxes = document.getElementsByName('clause');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
}//selectAll
function checkSelectAll(checkbox)  {
	  const selectall 
	    = document.querySelector('input[name="clause1"]');
	  
	  if(checkbox.checked === false)  {
	    selectall.checked = false;
	  }
	}
$(function(){
	
	
	$("#toIndex").click(function(){
		if(confirm("회원 가입을 그만두시겠습니까?")){
			location.replace("http://211.63.89.132/templates/home/index.jsp");
		}
	})
	
    $('.multi_select').selectpicker();
    
    
	$("#email").keyup(function(){
		emailConfirm=false;
		$("#spanEmail").css("display","none");
	})
	
	$("#nick").keyup(function(){
		nickConfirm=false;
		$("#spanNick").css("display","none");
	})
	
	
	
   $(".complete-btn").click(function(){
    	
/* 	$(".clause").change(function(){
	        if($(".clause").is(":checked")){
	            alert("체크박스 체크했음!");
	        }else{
	            alert("체크박스 체크 해제!");
	        }
	 });   */
    	//모든 필수 칸이 채워지고 
	    var name=$("#name").val();
	    var tel=$("#tel").val();
	    var email=$("#email").val();
	    var pass1=$("#pass1").val();
	    var pass2=$("#pass2").val();
	    var nick=$("#nick").val();
	    var business=$("#businessSelect").val();
	    var agreement="";
	    
	    var pattern=/\s/g;
	    
	    let reg_name1 = /^[가-힣]+$/; // 한글만
	    let reg_mobile = /^\d{3}-\d{3,4}-\d{4}$/; // 휴대폰 번호
	    let reg_email =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/; // 길이까지 확실한 검증
	    let reg_pw2 = /(?=.*[a-zA-ZS])(?=.*?[#?!@$%^&*-]).{8,}/; // 문자와 특수문자 조합의 6~24 자리
	    let reg_nick1 = /^[가-힣a-zA-Z0-9_-]{4,20}$/; // 닉네임
	    
	    var telConfirm=false;
	    
	    //---------------이름 유효성 검사--------------
	    if(name==""){
	    	alert("이름을 입력해주세요.");
	    	$("#name").focus();return;
	    }
	    
	    if(name.match(pattern)){
	    	alert("이름을 정확히 입력해주세요.");
	    	$("#name").focus();return;
	    }
	    
	    if(!reg_name1.test(name)){
	    	alert("이름을 정확히 입력해주세요.");
	    	$("#name").focus();return;
	    }
	   
	  //---------------전화번호 유효성 검사--------------
	    if(tel==""){
	    	alert("전화번호를 입력해주세요.");
	    	$("#tel").focus();return;
	    }
	 	
	  	if(tel.match(pattern)){
	    	alert("전화번호를 정확히 입력해주세요.");
	    	$("#tel").focus();return;
	    
	  	}
	  	if(!reg_mobile.test(tel)){
	    	alert("전화번호를 정확히 입력해주세요.");
	    	$("#tel").focus();
	    	return;
	    }
    	 $.ajax({
     		  url:"http://211.63.89.132/templates/account/telConfirmation.jsp",
     		  data:{tel:$("#tel").val()},
     		  dataType:"json",
     		  type:"get",
     		  async:false,
     		  error:function(xhr){
     			  alert(xhr.status);
     			  
     		  },
     		  success:function(jsonObj){
     			telConfirm=jsonObj.flag;
     		  }
     	  });//ajax 
	    
		  	if(telConfirm){
		  		alert("이미 가입된 핸드폰 번호입니다.");
		  		return;
		  	}
	    if(email==""){//-------------이메일 유효성 검사--------------
	    	alert("이메일을 입력해주세요.");
	    	$("#email").focus();return;
	    }
	   	if(email.match(pattern)){
	    	alert("이메일을 정확히 입력해주세요.");
	    	$("#email").focus();return;
	    }
	   	
	   	if(!reg_email.test(email)){
	    	alert("이메일을 정확히 입력해주세요.");
	    	$("#email").focus();return;
	    }
	   
	    //-------------비밀번호 유효성 검사--------------
	    if(pass1==""){
	    	alert("비밀번호를 입력해주세요.");
	    	$("#pass1").focus();return;
	    }
	    if(pass1.match(pattern)){
	    	alert("비밀번호를 정확히 입력해주세요.");
	    	$("#pass1").focus();return;
	    }
	    if(!reg_pw2.test(pass1)){
	    	alert("문자와 특수문자, 숫자를 조합하여 8자 이상의 비밀번호를 입력해주세요.");
	    	$("#pass1").focus();return;
	    }
	    
	    //-------------비밀번호 확인 유효성 검사--------------
	    if(pass2==""){
	    	alert("비밀번호를 확인해주세요.");
	    	$("#pass2").focus();return;
	    }
	    if(pass2.match(pattern)){
	    	alert("비밀번호를 확인해주세요.");
	    	$("#pass1").focus();return;
	    }
	    if(pass1!=pass2){
	    	alert("비밀번호를 확인해주세요.");
	    	$("#pass2").focus();return;
	    }
	    
		//-------------닉네임 유효성 검사--------------
	    if(nick==""){
	    	alert("닉네임을 입력해주세요.");
	    	$("#nick").focus();
	    	return;
	    }
		
		if(nick.match(pattern)){
	    	alert("닉네임에는 공백이 들어갈 수 없습니다.");
	    	$("#nick").focus();return;
	    }
		
		if(!reg_nick1.test(nick)){
	    	alert("닉네임은 한글, 영어, 숫자, _, - 로만 입력 가능합니다.");
	    	$("#nick").focus();
	    	return;
	    }
	   
		
		//--------------약관 유효성 검증-----------------------
        if(!value.includes("필수1")||!value.includes("필수2")||!value.includes("필수3")){
        	alert("필수 항목에 동의하지 않을 시 회원가입이 불가합니다.");
        	return;
        }
        
        chkNull();
    });//click
    
});//ready
function chkNull(){
	if(!emailConfirm){
		alert("이메일 중복확인이 필요합니다.");
		return;
	}else if(!nickConfirm){
		alert("닉네임 중복확인이 필요합니다.");
		return;
	}
	
	$("#frm").submit();
}
</script>

</head>
<body class="animsition">
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/sidebar.jsp" %>

    <body onload="noBack();" 
   onpageshow="if (event.persisted) noBack();" onunload="">


    <div class="register-step2">
        <div style="text-align: center;">
           <!-- <a href="http://211.63.89.132/templates/home/index.jsp"> -->
                <div class="logo-div" style="margin-bottom: 30px; cursor: pointer;" id="toIndex"></div>
           <!--  </a> -->
        </div>

        <div class="register-box2">
            <div class="register-last">
            <!-- //////////////////form////////////////// -->
                <form action="http://211.63.89.132/templates/account/register_action.jsp" method="get" name="frm" id="frm">
                    <h1 style="text-align:center;">회원가입</h1>
                    <div class="regi-div">
                        <div class="requirement">이름<label>&nbsp;*</label></div>
                        <input type="text" placeholder="이름을 입력해주세요." name="name" id="name" />
                    </div>
                    <div class="regi-div">
                        <div class="requirement">휴대폰 번호<label>&nbsp;*</label></div>
                        <input type="text" placeholder="예시) 000-0000-0000" name="tel" id="tel" />
                    </div>
                    <div class="regi-div">
                        <div class="requirement">이메일<label>&nbsp;*</label><span id="spanEmail" style="float: right; color:#0000FF; display: none;">사용 가능</span></div>
                        <input type="text" name="email" placeholder="이메일을 입력해주세요." style="margin-bottom: 8px;" id="email" />
                        <div style="float: right;">
                          <input type="button" value="이메일 중복확인" class="confirm-exists show"  id="btnStyle1"/>
                        </div>
                    </div><br/><br/>

                    <!-- Modal Design -->
                    <div class="background">
                      <div class="window">
                        <div class="modal_body">
                          <!-- <span class="material-icons" style="font-size:130px; color:#ab0000;">highlight_off</span> -->
                          <span class="material-icons-outlined" style="font-size:130px; color:#f0c04f;">outlet</span>
                          <h2>회원정보 존재</h2>
                          <h5>입력하신 계정은 이미 존재하는 계정입니다</h5><br/>
                          <div class="modal_bottom">
                            <button type="button" class="close btn">닫기</button>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="regi-div">
                        <div class="requirement">비밀번호<label>&nbsp;*</label></div>
                        <input type="password" placeholder="문자와 특수문자, 숫자를 조합하여 입력해주세요." style="margin-bottom: 3px;"  name="pass1" id="pass1"/>
                        <input type="password" placeholder="비밀번호를 한번 더 입력해주세요." name="pass2" id="pass2"/>
                       <span id="d" style="float: right; color:#0000FF; display: none;">비밀</span> 
                    </div>
                    
                    <div class="regi-div">
                        <div class="requirement">닉네임<label>&nbsp;*</label><span id="spanNick" style="float: right; color:#0000FF; display: none;">사용 가능</span></div>
                        <input type="text" placeholder="한글, 영어, 숫자, _ , - 로 입력가능합니다." style="margin-bottom: 8px;" name="nick" id="nick" />
                        <div style="float: right;">
                            <input type="button" value="닉네임 중복확인" class="confirm-exists show" id="btnStyle2"/>
                        </div><br/><br/>
                    </div>

                    <div class="regi-div">
                      <div class="requirement">주소<label>&nbsp;*</label></div>
                      <input type="text" placeholder="우편번호" style="margin-bottom: 8px;" name="zipcode" id="zipcode" />
                      <input type="text" placeholder="주소를 입력해주세요" style="margin-bottom: 8px;" name="address1" id="address1" />
                      <input type="text" placeholder="상세주소" style="margin-bottom: 8px;" name="address2" id="address2" />
                  </div>
                
                    <!-- //////////////////////////////////////////////////////////////// -->
                    <div class="agreement-box">
                        <div class="agree-all">
                            <input type="checkbox" id="agree-all" name="clause1" value="selectAll" onclick="selectAll(this)" />
                            <span>모두 동의합니다.</span>
                        </div>
                        <div class="agreements" style="margin-top: 15px;" >
                            <input type="checkbox" name="clause" class="clause" value="필수1" onclick='checkSelectAll(this)'/>
                            <span>만 14세 이상입니다.</span>
                            <span class="red-text">(필수)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" name="clause" class="clause" value="필수2"  onclick='checkSelectAll(this)'/>
                            <span>서비스 이용약관에 동의합니다.</span>
                            <span class="red-text">(필수)</span>
                        </div>
                        <div class="agreements">
                            <input type="checkbox" name="clause" class="clause" value="필수3"  onclick='checkSelectAll(this)'/>
                            <span>개인정보 수집/이용에 동의합니다.</span>
                            <span class="red-text">(필수)</span>
                        </div>                        
                    </div>

                    <input class="complete-btn"  id="complete-btn" type="button"  value="버튼만 누르면 가입완료!" />
                </form>

            </div>
        </div>

    </div>


    <!-- Modal JS -->
    <script>
	
    
      
      function show(){//이메일 중복확인
    	  $("#spanEmail").css("display","none");
    	  
    	  $.ajax({
    		  url:"http://211.63.89.132/templates/account/emailConfirmation.jsp",
    		  data:{email:$("#email").val()},
    		  dataType:"json",
    		  type:"get",
    		  error:function(xhr){
    			  alert(xhr.status);
    		  },
    		  success:function(jsonObj){
    			  
    			  if(jsonObj.validation=="isNotEmail"){
    				  alert("올바른 이메일을 입력해주세요");
    			  }else{
    				  
    				 if(jsonObj.flag){ //이메일이 기존에 있다면 
    				 	$(".background").attr("class","background show");
    			  	 
    				 }else{
    					 emailConfirm=true;
    			  		$("#spanEmail").css("display","block");
    			  	 }//end else
    			  }//end else
    			  
    		  }//success
    		  
    	  });//ajax
    	  
      }//show
      
      
      function show2(){ //닉네임 중복확인
    	  $("#spanNick").css("display","none");
    	  
    	  $.ajax({
    		  url:"http://211.63.89.132/templates/account/nickConfirmation.jsp",
    		  data:{nick:$("#nick").val()},
    		  dataType:"json",
    		  type:"get",
    		  error:function(xhr){
    			  alert(xhr.status);
    		  },
    		  success:function(jsonObj){
    			  
    			  if(jsonObj.validation=="isNotNick"){
    				  alert("올바른 닉네임을 입력해주세요.");
    			  }else if(jsonObj.validation=="length"){
    				  alert("닉네임은 5자 이상이어야 합니다.");
    			  }else{
    				  
    				 if(jsonObj.flag){ // 기존에 있다면 
    				 	$(".background").attr("class","background show");
    			  	 
    				 }else{ //사용가능
    					nickConfirm=true;
    			  		$("#spanNick").css("display","block");
    			  	 }//end else
    			  }//end else
    			  
    		  }//success
    		  
    	  });//ajax
    	  
      }//show
      
      
      function close(){
        $(".background").attr("class","background");
      }
      $("#btnStyle1").click(show);
      $("#btnStyle2").click(show2);
      //$(".show").click(show);
      $(".close").click(close);
    </script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/
	twitter-bootstrap/4.6.1/js/bootstrap.bundle.min.js"> 
</script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/
	bootstrap-select/1.13.18/js/bootstrap-select.min.js"> 
</script>
<script type="text/javascript">
$("#complete-btn").mouseover(function(){
	$("#complete-btn").css("background-color","#4C4C4C");
	$("#complete-btn").css("color","#FFFFFF");
})
$("#complete-btn").mouseout(function(){
	$("#complete-btn").css("background-color","#e4e5ed");
	$("#complete-btn").css("color","#9a9ba7");
})
</script>
<!-- 개별파트 end -->
<%@ include file="../common/footer.jsp" %>
<%@ include file="../common/common_js.jsp" %>		
</body>
</html>