<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
	<title>GOOD STORE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../common/static_link.jsp" %>
</head>
<body class="animsition">
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/sidebar.jsp" %>

			<!-- Content page -->
      <section class="bg0 p-t-104 p-b-116">
        <div class="container bor10">
          <div class="flex-c">
            <!-- <div class="bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md"> -->
            <div class="p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
              <form action="set_newpassword" id="frm" method="post">
                <h4 class="mtext-105 cl2 txt-center p-b-30 m-tb-50" style="width:25vw">
                  새 비밀번호 설정
                </h4>

						<div class="bor8 m-b-20">
							<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-30" type="password" 
							name="password" placeholder="새 비밀번호" id="password" />
						</div>
            
						<div class="bor8 m-b-30">
              			<input class="stext-111 cl2 plh3 size-116 p-l-20 p-r-30" type="password"
              			  placeholder="새 비밀번호 확인" id="password2" />
						</div>
            			
            			<input type="hidden" id="hid" value="${id}" name="member_id"/>
						<input type="button" value="비밀번호 변경" onclick="passHandle()"
						class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"/>
            
					</form>
				</div>
			</div>
		</div>
	</section>

<%@ include file="../common/footer.jsp" %>
<%@ include file="../common/common_js.jsp" %>	
<script type="text/javascript">


function passHandle(){
	if($("#password").val()==""){
		alert("비밀번호 입력해주세요.");
		$("#password").focus();
		return;
	}
	if($("#password2").val()==""){
		alert("비밀번호 입력해주세요.");
		$("#password2").focus();
		return;
	}
	if($("#password").val()!=$("#password2").val()){
		alert("비밀번호를 확인해주세요.");
		return;
	}
	$("#frm").submit();
}


history.replaceState({},null,location.pathname);
</script>	
</body>
</html>