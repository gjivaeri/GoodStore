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
		<div class="container bor7">
			<div class="flex-c">
				<!-- <div class="bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md"> -->
				<div class="p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md txt-center">
						<h4 class="mtext-105 cl2 m-tb-50">
							회원님의 이메일
						</h4>

						<div class="bor7 m-b-20 cl1 p-t-55" style="height:160px; width:600px; font-size:2rem; background-color:white;">
              <c:choose>
				<c:when test="${check eq 1}">
             	 <span class="flex-c-m"><c:out value="${email}"/></span>
				</c:when>              
				<c:otherwise>
				 <span class="flex-c-m">해당하는 회원이 존재하지 않습니다.</span>
				</c:otherwise>
              </c:choose>
						</div>
            
            <div class="flex-c-m cl0 size-121 p-lr-15 m-t-50">
              <a class="m-lr-10 cl2" href=signin_page>로그인</a>
              <a class="m-lr-10 cl2" href="password">비밀번호 찾기</a>
            </div>
					</form>
				</div>
			</div>
		</div>
	</section>	
	
<%@ include file="../common/footer.jsp" %>
<%@ include file="../common/common_js.jsp" %>
		
</body>
</html>