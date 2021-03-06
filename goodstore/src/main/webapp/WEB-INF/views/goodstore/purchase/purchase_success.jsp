<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Purchase Success</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../common/static_link.jsp" %>

<style type="text/css">
.tabLabel {font-weight: bold; font-size: 15px; text-align: center;}
.tdDiv {width: 100%; text-align: center;}
.success {text-align: center; padding-right: 50px; font-size: 20px;}
.logo-1 {margin: 0 auto; margin-bottom: 30px}
.tdPadding {padding: 50px;}
.tdBottom {padding-bottom: 10px;}
</style>
</head>
<body class="animsition">
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/sidebar.jsp" %>


	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Shoping Cart
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<div class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
				<div style="display: flex;">
					<span class="logo-1"><img src="${initParam.staticPath}images/goodstore5.png" style="width: 200px; object-fit:cover"/></span>
				</div>
					<div class="m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							
							
							<table class="table-shopping-cart" style="margin-left: 0px;">
								
								<tr class="table_head">
									<th class="column-1 success" colspan="4">구매가 완료되었습니다.</th>
								</tr>



							<!-- /////////////// 구매상품 ///////////// -->
							
							<c:forEach var="orderedProduct" items="${orderedProduct}">
							<c:set var="i" value="${i+1}"/>
								<tr class="table_row">
									<td style="width: 20px; padding-left: 120px;">${i}</td>
									<td class="column-1" style="margin-left: 120px;">
										<div class="how-itemcart1">
											<a href="${orderedProduct.item_id}"></a> <img src="${initParam.uploadPath}${orderedProduct.image}" alt="IMG">
										</div>
									</td>
									<td class="column-2" style="width: 150px">${orderedProduct.item_name}</td>
									<td class="column-3">${orderedProduct.amount}개</td>
								</tr>
							</c:forEach>
								
								
								<!-- ////////////////////////////////// -->
								
								
								
								<tr class="table_row">
									<td class="column-1" style="padding-bottom: 20px;">
										<label class="tabLabel">배송지 : </label>
									</td>
									<td class="column-2 tdBottom" colspan="3">
											<c:out value="${address}"/>
									</td>
								</tr>
								
								
								<tr class="table_row">
									<td class="column-1" style="padding-bottom: 20px;">
										<label class="tabLabel">구매금액 : </label>
									</td>
									<td class="column-2 tdBottom" colspan="3">
											<fmt:formatNumber value="${totalPrice}" pattern="##,###,###"/>원
											
									</td>
								</tr>
								
							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<input type="button" value="주문내역보기"
							 class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" 
								style="width: 200px; margin: 0 auto; font-size: 20px; margin-top: 30px; margin-bottom: 30px;" id="btn-to-order-list"/>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
		
<%@ include file="../common/footer.jsp" %>
<%@ include file="../common/common_js.jsp" %>
	<script>
		$("#btn-to-order-list").click(function(){
			location.href='http://localhost/goodstore/orderList';
		})
	</script>

</body>
</html>