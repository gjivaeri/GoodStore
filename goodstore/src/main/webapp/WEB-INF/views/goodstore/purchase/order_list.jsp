<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>GOOD STORE</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../common/static_link.jsp" %>
<style type="text/css">
	
.outer.show {
   display: block;
}

.outer {
  
  	display: none;
  	position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    text-align: center;
    font-size: 0;
    /* overflow-y: scroll; */
    background-color: rgba(0,0,0,.4);
    z-index: 10000;
    /* pointer-events: none; */
    /* opacity: 0; */
    transition: opacity .3s;
  
}

.inner {
  /* position: fixed; */
  position: absolute;
  top: 50%;
  left: 50%;

  background-color: #fff;
  /* border: 1px solid #333;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto; */

  width: 700px;  
  height: 600px;

  /* z-index: 1; */
  align-items: center;
  overflow: auto;


  box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
  transform: translateX(-50%) translateY(-50%);
}

.inner.hide {
        display: none;
}




.inner-wrap{
/* overflow: auto; */
margin: auto;
width: 600px;
margin-top: 70px;
/* margin-left: 50px; */
display: flex; 
flex-direction:column; 

/* font-family: Poppins-Bold; */
  font-size: 13px;
  /* font-weight: bold; */
  color: #555;
  /* text-transform: uppercase; */
  line-height: 1.6;
  /* padding-top: 15px;
  padding-bottom: 15px; */
  /* text-align: center; */
  border:1px solid #e6e6e6;
  /* background-color:  #e6e6e6; */
  /* margin-top: 70px; */
  cursor: pointer;
}


.inner1{
	display: none; 
  position: fixed;
  background-color: #fff;
  border: 1px solid #333;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
  width: 650px;  
  height:580px;
 /* z-index: 1; */
  align-items: center;
  overflow: auto;
}
.inner1.show {
        display: block;
}

.inner-wrap1{
/* overflow: auto; */
margin: auto;
width: 500px;
margin-top: 70px;
/* margin-left: 50px; */
display: flex; 
flex-direction:column; 

/* font-family: Poppins-Bold; */
  font-size: 13px;
  /* font-weight: bold; */
  color: #555;
  /* text-transform: uppercase; */
  line-height: 1.6;
  /* padding-top: 15px;
  padding-bottom: 15px; */
  /* text-align: center; */
  /* border:1px solid #e6e6e6; */
  /* background-color:  #e6e6e6; */
  /* margin-top: 70px; */
  cursor: pointer;
}


.row-div{
font-family: Poppins-Regular;
width: 100%;
padding-top: 20px;
padding-bottom: 20px;
padding-left: 40px;
/* margin-right: 20px; */
display: flex; 
flex-direction:row; 
align-items: center;
border-bottom:1px solid #e6e6e6;
}

.product-info{
	margin-left:50px;
}
.product-info1{
	margin-left:80px;
}

.btn-complete-order{
	width: 120px;
	border: 1px solid #e6e6e6;
    border-radius: 22px;
	background-color: #f3f3f3;
	height: 45px;
	font-family: Poppins-Medium;
    font-size: 15px;
    line-height: 1.466667;
    text-transform: uppercase;
	color: #333;
	justify-content: center;
	align-items: center;
	display: flex;
	transition: all 0.4s;
	cursor: pointer;
	margin-bottom: 5px;
	margin-top: 5px;
	padding-right: 15px;
	padding-left: 15px;
}
.btn-complete-order:hover {
    border-color: #717fe0;
    background-color: #717fe0;
    color: #fff;
}

.refund-btn{
	width: 120px;
	border: 1px solid #e6e6e6;
    border-radius: 22px;
	background-color: #f3f3f3;
	height: 45px;
	font-family: Poppins-Medium;
    font-size: 15px;
    line-height: 1.466667;
    text-transform: uppercase;
	color: #333;
	justify-content: center;
	align-items: center;
	display: flex;
	transition: all 0.4s;
	cursor: pointer;
	margin-bottom: 5px;
	margin-top: 5px;
	padding-right: 15px;
	padding-left: 15px;
}
.refund-btn:hover {
    border-color: #717fe0;
    background-color: #717fe0;
    color: #fff;
}
</style>
</head>
<body class="animsition">
	
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/sidebar.jsp" %>
	<!-- Cart -->
	<div class="wrap-header-cart js-panel-cart">
		<div class="s-full js-hide-cart"></div>

		<div class="header-cart flex-col-l p-l-65 p-r-25">
			<div class="header-cart-title flex-w flex-sb-m p-b-8">
				<span class="mtext-103 cl2">
					Your Cart
				</span>

				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>
			
			<div class="header-cart-content flex-w js-pscroll">
				<ul class="header-cart-wrapitem w-full">
					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-01.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								White Shirt Pleat
							</a>

							<span class="header-cart-item-info">
								1 x $19.00
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-02.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Converse All Star
							</a>

							<span class="header-cart-item-info">
								1 x $39.00
							</span>
						</div>
					</li>

					<li class="header-cart-item flex-w flex-t m-b-12">
						<div class="header-cart-item-img">
							<img src="images/item-cart-03.jpg" alt="IMG">
						</div>

						<div class="header-cart-item-txt p-t-8">
							<a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
								Nixon Porter Leather
							</a>

							<span class="header-cart-item-info">
								1 x $17.00
							</span>
						</div>
					</li>
				</ul>
				
				<div class="w-full">
					<div class="header-cart-total w-full p-tb-40">
						Total: $75.00
					</div>

					<div class="header-cart-buttons flex-w w-full">
						<a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10">
							View Cart
						</a>

						<a href="shoping-cart.html" class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10">
							Check Out
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="home-02.html" class="stext-109 cl8 hov-cl1 trans-04">
				???
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				????????????
			</span>
		</div>
	</div>
		

	<!-- ???????????? -->
	<div class="bg0 p-t-75 p-b-85">
		<div class="container" style="align-items: margin: 0px auto;">
			<div class="row">
				<div class="col-lg-10 m-lr-auto m-b-50" style="width: 2000px;">
					
					<div class="m-l-25 m-r--38 m-lr-0-xl"  style="width: 1100px;">
						
						
						
						<div class="wrap-table-shopping-cart-j" id="wrap-table-shopping-cart-j" >
						
							<!-- ??????!! //////////////////////-->
							<%-- <div class="order-info">
								 <span  style="padding-left: 0px;">???????????? </span><span></span>
								<span  style="padding-left: 30px;">???????????? </span><span></span>
							</div>
							
							
							<table class="table-shopping-cart" style="margin-bottom: 80px;">
								<tr class="table_head">
									<td class="column-1-j"></td>
									<th class="column-1">??????</th>
									<th class="column-2">?????????</th>
									<th class="column-3">??????</th>
									<th class="column-3">??????</th>
									<th class="column_4_j">????????????</th>
									<th class="column-5-1"></th>
								</tr>
							<!-- ??????!!///////////////////////////////// -->	
							
							
								<tr class="table_row">
									<td class="column-1-j">1</td>
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="${initParam.staticPath}images/item-cart-04.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2">??????</td>
									<td class="column-3">??????</td>
									<td class="column-3">100???</td>
									<td class="column_4_j">????????????</td>
									<td class="column_5">
										<div class="btn-complete-order" style="width: 120px;" onclick="btnClickHandle(39)">
											????????????
										</div>
										<div class="btn-complete-order" id="refund-btn" 
											style="width: 120px; margin-top: 10px;" 
											onclick="btnClickHandle(40)">
											??????
										</div>
										</td>
									</tr>
								
									
							</table> --%>
							<!-- -///////////////////////////////////////////////////////////// -->
					</div>


						<div class="more-info trans-04" id="more-info" >
							<span> + ?????????</span>
						</div>
						
						
					</div>
				</div>

				
			</div>
		</div>
	</div> 
		


	<!-- ?????????  -->
	<div class="outer">
	
	<!-- ?????? 1 -->
		<div class="inner">
			<div class="inner-wrap">
			
			
				<!-- ?????? ?????? ?????? -->
				<div class="row-div" style="font-family: Poppins-Bold;">
					
					<div id="row-div-info">
					<span>???????????? </span><span style="padding-left: 10px;">20220526ABAB</span>
					<span  style="padding-left: 20px;">???????????? </span><span style="padding-left: 10px;">20220526ABAB</span>
					</div>
					
				</div>

				<div class="row-div" style="font-family: Poppins-Bold; font-weight: bold;">
					<input type="checkbox" name="checkAll" value="chooseAll" style="zoom:1.3;" class="checkAll"/> 
					<span  style="padding-left:10px;">?????? ??????</span>
				</div>	
				
				<!-- ?????? ?????? ?????? --><!-- for -->
				<div id="row-div-m">
					<div class="row-div">
						<input type="checkbox" name="check" value="" style="zoom:1.3;" class="check"/>
						<div class="how-itemcart-j" style="margin-right: 0px;">
							<img src="images/item-cart-04.jpg" alt="IMG">
						</div>
						<div class="product-info">Fresh Strawberries</div>
						<div class="product-info1">35,000???</div>
					</div>	
					
				</div>
				<!-- //////////////////////////////// -->
				

				<div style="display: flex; flex-direction: row; align-items: center; justify-content: center; margin-top: 20px; margin-bottom: 20px;">
					
					<div class="flex-c-m stext-101 cl2 size-118-1 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="width: 110px;" id="complete-purchase">
						????????????
					</div>
					
					<div style="width:20px;"></div>
					
					<div class="refund-btn" style="width: 110px;">
						??????
					</div>
				</div>
		</div>
		</div>



		<!--modal2-->
		<div class="inner1">
			<div class="inner-wrap1">
					<span  style="border-bottom:1px solid #e6e6e6; padding-bottom: 10px; text-align: left;"> > ??????</span>
					<!-- ?????? ?????? ?????? -->
					<div id="refund-list">
					<div class="row-div" >
						<div class="how-itemcart-j1" style="margin-right: 0px;">
							<img src="images/item-cart-04.jpg" alt="IMG">
						</div>
						<div class="product-info">Fresh Strawberries</div>
						<div class="product-info1">35,000???</div>
					</div>	
					</div>
	
					
					<div style="margin-top: 30px;">
						<div class="flex-w flex-r-m p-b-10">
							<div class="size-203 flex-c-m respon6">
								?????? ?????? ??????
							</div>
				
							<div class="size-204 respon6-next">
								<div class="rs1-select2 bor8 bg0" style="z-index: 10001;">
									<select class="js-select2" name="time" id="refund-select">
										<option value="?????? ????????? ??????????????????.">?????? ????????? ??????????????????.</option>
										<option value="?????? ?????? ??????">?????? ?????? ??????</option>
										<option value="?????? ??? ????????? ??????">?????? ??? ????????? ??????</option>
										<option value="?????? ?????? ??????">?????? ?????? ??????</option>
										<option value="????????? ?????????">????????? ?????????</option>
										<option value="?????? ??????">?????? ??????</option>
									</select>
									<div class="dropDownSelect2"></div>
								</div>
							</div>
						</div>
					</div>
				
	
					<div style="display: flex; flex-direction: row; align-items: center; justify-content: center; margin-top: 20px; margin-bottom: 20px;">
						
						<div class="flex-c-m stext-101 cl2 size-118-1 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="width: 110px;" id="refund-complete">
							?????? ??????
						</div>
					</div>
				</div>
			</div>
	
		
	</div>



<%@ include file="../common/footer.jsp" %>
<%@ include file="../common/common_js.jsp" %>


<!-- -================================================================================================= -->

<script type="text/javascript">

$(document).ready(function(){
	
	//alert("??????");
	
	// ?????? ?????? ??? ??????
	var listCnt = "<c:out value='${listCnt}'/>";
	//alert(listCnt)
	//alert(listCnt);
	// ?????? ?????????
	var startIndex = 1;	// ????????? ?????????
	var searchStep = 2;	// 5?????? ??????
	
	// ????????? ?????? ??? ??? ??????
	readOrderDetail(startIndex);
	
	// ????????? ?????????
	$('#more-info').click(function(){
		startIndex += searchStep;
		readOrderDetail(startIndex);
	})//click
		
	
	// ????????? ???????????? **
	function readOrderDetail(index){
		//alert("ajax ?????????")
		let endIndex = index+searchStep-1;	// endIndex??????
		
		$.ajax({
			url: "orderList/moreList",
			type: "post",
			async: "false",
			dataType: "json",
			data: {
				startIndex: index,
				endIndex: endIndex
			},
			success: function (json, textStatus) {
				
				
				if(json.flag!=0){
					//alert("???????????????");
					//alert(json);
					//const obj=JSON.parse(json.data[0]);
					//alert(json.data[0].value[0].image)
					
					//alert(JSON.stringify(json.data));
					
					
					
					var orderId="";
					var orderInfo="";
					var tableString="<table class='table-shopping-cart' style='margin-bottom: 80px;'><tr class='table_head'>";
					tableString+="<td class='column-1-j'></td><th class='column-1'>??????</th><th class='column-2'>?????????</th>";
					tableString+="<th class='column-3'>??????</th><th class='column-3'>??????</th><th class='column_4_j'>????????????</th><th class='column-5-1'></th></tr>"
					
					var orderInfo="";
					var trInfo="";
					var cnt=1;
					var NodeList="";
					
					for(var i=0;i<json.data.length;i++){ //length=6
					
					var orderId=json.data[i].order_id;	
					var price=parseInt(json.data[i].price)*parseInt(json.data[i].amount);
					price=price.toLocaleString('ko-KR');
					
					var status=json.data[i].status;
					
					
						if(i+1<json.data.length){
							if(orderId!=json.data[i+1].order_id){//????????? ???????????? ?????????????????? ????????????
								//?????? ??????id????????????
								
								//orderinfo??????---
								orderInfo+="<div class='order-info'><span style='padding-left: 0px;'>????????????&nbsp;&nbsp;&nbsp;"+json.data[i].order_date+"</span><span></span>";
								orderInfo+="<span style='padding-left: 30px;'>????????????&nbsp;&nbsp;&nbsp;"+json.data[i].order_id+"</span><span></span></div>";
								
								
								//str+= tr 
								trInfo+="<tr class='table_row'><td class='column-1-j'>"+cnt+"</td>";
								trInfo+="<td class='column-1'><div class='how-itemcart1'>"
								
								//?????? ???????????????
								trInfo+="<img src='${initParam.uploadPath}"+json.data[i].image+"' alt='IMG'></div></td>";
								trInfo+="<td class='column-2'>"+json.data[i].item_name+"</td>"		
								trInfo+="<td class='column-3'>"+json.data[i].amount+"???</td>"
								trInfo+="<td class='column-3'>"+price+"???</td>"
								
								
								if(status=='????????????'){
									trInfo+="<td class='column_4_j' id='s-"+json.data[i].detail_id+"'>"+status+"</td>";
									trInfo+="<td class='column_5'><div class='btn-complete-order' id='b-"+json.data[i].detail_id+"' style='width: 120px;' onclick='btnClickHandle("+json.data[i].order_id+")'>????????????</div>";
									trInfo+="<div class='btn-complete-order' id='r-"+json.data[i].detail_id+"' style='width: 120px; margin-top: 10px;' onclick='btnClickHandle("+json.data[i].order_id+")'>??????</div></td></tr>";
								}else{
									trInfo+="<td class='column_4_j' id='s-"+json.data[i].detail_id+"'>"+status+"</td></tr>";
								}
								trInfo+="</table>";
								
									//cnt ?????????
									cnt=1;
									
									//str=String+str+</table>
									NodeList=orderInfo+tableString+trInfo;
									
									//$(orderinfo+str).appendTo("#wrap")
									$(NodeList).appendTo($("#wrap-table-shopping-cart-j")).slideDown();
									
									NodeList="";
									//orderId?????????
									//str?????????
									trInfo="";
									//orderInfo ?????????
									orderInfo="";
							}else{
								//str+= <tr></tr>
								//str+= tr 
								trInfo+="<tr class='table_row'><td class='column-1-j'>"+cnt+"</td>";
								trInfo+="<td class='column-1'><div class='how-itemcart1'>"
								
								//?????? ???????????????
								trInfo+="<img src='${initParam.uploadPath}"+json.data[i].image+"' alt='IMG'></div></td>";
								trInfo+="<td class='column-2'>"+json.data[i].item_name+"</td>"		
								trInfo+="<td class='column-3'>"+json.data[i].amount+"???</td>"
								trInfo+="<td class='column-3'>"+price+"???</td>"
								
								
								if(status=='????????????'){
									trInfo+="<td class='column_4_j' id='s-"+json.data[i].detail_id+"'>"+status+"</td>";
									trInfo+="<td class='column_5'><div class='btn-complete-order' id='b-"+json.data[i].detail_id+"' style='width: 120px;' onclick='btnClickHandle("+json.data[i].order_id+")'>????????????</div>";
									trInfo+="<div class='btn-complete-order'id='r-"+json.data[i].detail_id+"'style='width: 120px; margin-top: 10px;' onclick='btnClickHandle("+json.data[i].order_id+")'>??????</div></td></tr>";
								}else{
									trInfo+="<td class='column_4_j' id='s-"+json.data[i].detail_id+"'>"+status+"</td></tr>";
								}
								
								
								//cnt?????????
								cnt++;
								
							}
						}else if(i+1==json.data.length){//????????? ???
							
							//orderinfo??????---
							orderInfo+="<div class='order-info'><span style='padding-left: 0px;'>????????????&nbsp;&nbsp;&nbsp; "+json.data[i].order_date+"</span><span></span>";
							orderInfo+="<span style='padding-left: 30px;'>????????????&nbsp;&nbsp;&nbsp; "+json.data[i].order_id+"</span><span></span></div>";
							
							//str+= tr 
							trInfo+="<tr class='table_row'><td class='column-1-j'>"+cnt+"</td>";
							trInfo+="<td class='column-1'><div class='how-itemcart1'>"
							
							//?????? ???????????????
							trInfo+="<img src='${initParam.uploadPath}"+json.data[i].image+"' alt='IMG'></div></td>";
							trInfo+="<td class='column-2'>"+json.data[i].item_name+"</td>"		
							trInfo+="<td class='column-3'>"+json.data[i].amount+"???</td>"
							trInfo+="<td class='column-3'>"+price+"???</td>"
							
							
							if(status=='????????????'){
								trInfo+="<td class='column_4_j' id='s-"+json.data[i].detail_id+"'>"+status+"</td>";
								trInfo+="<td class='column_5'><div class='btn-complete-order' id='b-"+json.data[i].detail_id+"' style='width: 120px;' onclick='btnClickHandle("+json.data[i].order_id+")'>????????????</div>";
								trInfo+="<div class='btn-complete-order' id='r-"+json.data[i].detail_id+"'style='width: 120px; margin-top: 10px;' onclick='btnClickHandle("+json.data[i].order_id+")'>??????</div></td></tr>";
							}else{
								trInfo+="<td class='column_4_j' id='s-"+json.data[i].detail_id+"'>"+status+"</td></tr>";
							}
							trInfo+="</table>";
							
								//cnt ?????????
								cnt=1;
								
								//str=String+str+</table>
								NodeList=orderInfo+tableString+trInfo;
								
								//$(orderinfo+str).appendTo("#wrap")
								$(NodeList).appendTo($("#wrap-table-shopping-cart-j")).slideDown();
								NodeList="";
								//orderId?????????
								//str?????????
								trInfo="";
								//orderInfo ?????????
								orderInfo="";
							
						}//???????????? else if

						
					
					}//end for
					
				}else{
					
					var noItem="<table class='table-shopping-cart' style='margin-bottom: 80px; height:80px; font-size:15px;'><tr class='table_head'><td class='column-2'>???????????? ????????? ???????????? ????????????.</td></tr><table>";
									
					//var noItem="<h2>???????????? ????????? ???????????? ????????????.</h2>"
					$(noItem).appendTo($("#wrap-table-shopping-cart-j")).slideDown();
				}//end if
					
				
				// ????????? ?????? ??????
				 if(startIndex + searchStep > listCnt){
					$('#more-info').remove();
				}			
			}//success
		});//ajax
		}//function
});
</script>


<!--===============================================================================================-->
	<script>
		$(".checkAll").click(function(){
				$(".check").prop('checked',this.checked);
		})
	</script>
<!--===============================================================================================-->
	<script>
		const body = document.querySelector('body');
		const outer = document.querySelector('.outer');
		const inner = document.querySelector('.inner');
		const inner1 = document.querySelector('.inner1');
		const btnCompleteOrder = document.querySelector('.btn-complete-order');
		//const btnRefund = document.getElementById('refund-btn');
		const refundBtn = document.querySelector('.refund-btn');
		const completePurchase = document.getElementById('complete-purchase');
		const refundComplete = document.getElementById('refund-complete');
		const checkAll = document.getElementById('checkAll');
	

		
	//?????? ?????? ???????????? ????????? ??? 
		refundBtn.addEventListener('click', () => {
			
			var chk=false;
			
			var checkArr=[]; //?????? ?????????
			$("input:checkbox[name=productCheck]:checked").each(function(index){
				chk=true;
				checkArr.push($(this).val()); //??????????????? ????????? push
			})
			
			if(chk){
				
					$.ajax({
						url:"orderList/refund",
						data:{valueArr:checkArr},
						async:false,
						type:"post",
						dataType:"json",
						error:function(xhr){
							alert(xhr.status+"/"+xhr.statusText);
						},
						success:function(json){
							
							if(json.flag==1){
								//alert(JSON.stringify(json.data));
								
								var list="";
								for(var i=0; i<json.data.length;i++){
									
									var price=parseInt(json.data[i].price)*parseInt(json.data[i].amount);
									price=price.toLocaleString('ko-KR');
									
									list+="<div class='row-div' ><div class='how-itemcart-j1' style='margin-right: 0px;'>";
									//?????? ?????? ?????????!!!!!!
									list+="<img src='${initParam.uploadPath}"+json.data[i].image+"' alt='IMG' style='width:60px;margin-right:60px;'></div>";
									list+="<div class='product-info' style='width:150px;margin-left:20px;'>"+json.data[i].item_name+"</div>";
									list+="<div class='product-info1'>"+price+"???</div></div>";
									list+="<input type='hidden' name='refundId' value='"+json.data[i].detail_id+"'/>";
	    
								}//end for 
								
								document.getElementById('refund-list').innerHTML=list;
								// outer.classList.toggle('show');
								document.querySelector(".inner").style.display='none';
								document.querySelector(".inner1").style.display='block';
							 
								if (outer.classList.contains('show')) {
								document.querySelector(".inner").style.display='none';
								document.querySelector(".inner1").style.display='block';
								}//out if
							}//flag if
						
						}//success
						
					});//ajax
				
			//alert("?????? ??????");
		  
			
			}else{
				alert("???????????? ????????? ??????????????????.")
			}//end else
			
		});//click

	
  
		outer.addEventListener('click', (event) => {
		  if (event.target === outer) {
			outer.classList.toggle('show');
			if (!outer.classList.contains('show')) {
				
				document.querySelector(".inner").style.display='none';
		  		document.querySelector(".outer").style.display='none';
			 	body.style.overflow = 'auto';
			 	$(".checkAll").prop('checked',false);
			}
		  }
		});
  

		
		//?????? ???????????? ?????? ?????????
		completePurchase.addEventListener('click', (event) => {
			
			var chk=false;
			
			var checkArr=[]; //?????? ?????????
			$("input:checkbox[name=productCheck]:checked").each(function(index){
				chk=true;
				checkArr.push($(this).val()); //??????????????? ????????? push
			})
			
			if(chk){
				if(confirm("?????? ????????? ????????? ?????????????????????????")){
					
					$.ajax({
						url:"orderList/status",
						data:{valueArr:checkArr},
						async:false,
						type:"post",
						dataType:"json",
						error:function(xhr){
							alert(xhr.status+"/"+xhr.statusText);
						},
						success:function(json){
							if(json.success==1){
								for(var i=0; i<checkArr.length;i++){
								var id="s-"
								var btn="b-"
								var refund="r-"
									id=id+checkArr[i];
									btn=btn+checkArr[i];
									refund=refund+checkArr[i];
									document.getElementById(id).innerHTML='????????????'
									document.getElementById(btn).style.display='none';
									document.getElementById(refund).style.display='none';
									
									
								}
									alert('????????? ?????????????????????.')
							}
						}//success
						
					});
					
				}
				document.querySelector(".inner").style.display='none';
				  document.querySelector(".outer").style.display='none';
				  //document.getElementById("buttons").innerHTML='';
				  body.style.overflow = 'auto';
			}else{
				alert("????????? ???????????? ????????? ??????????????????.")
				
			} 
		 /*  document.querySelector(".inner").style.display='none';
		  document.querySelector(".outer").style.display='none';
		  document.getElementById("buttons").innerHTML='';
		  body.style.overflow = 'auto';
			 */
		  
		});
  

		
		
		//?????? ?????? ??????
		refundComplete.addEventListener('click', (event) => {
			
			$(".checkAll").prop('checked',false);
			
			
			if(document.getElementById("refund-select").selectedIndex==0){
				alert("?????? ????????? ??????????????????.")
				return;
			}///
			
			
			var selectIndex=0;;
			selectIndex=document.getElementById("refund-select").selectedIndex;
			//alert(selectIndex+"index")
			
			var checkArr=[];
			$("input:hidden[name=refundId]").each(function(index){
				//alert($(this).val());
				checkArr.push($(this).val()); //??????????????? ????????? push
			})
			
			if(confirm("????????? ?????????????????????????")){
				
				$.ajax({
					url:"orderList/refund/status",
					data:{valueArr:checkArr, selectIndex:selectIndex},
					async:true,
					type:"post",
					dataType:"json",
					error:function(xhr){
						alert(xhr.status+"/"+xhr.statusText);
					},
					success:function(json){
						 if(json.success==1){
							//alert("??????")
							for(var i=0; i<checkArr.length;i++){
							var id="s-"
							var btn="b-"
							var refund="r-"
								id=id+checkArr[i];
								btn=btn+checkArr[i];
								refund=refund+checkArr[i];
								document.getElementById(id).innerHTML='??????'
								document.getElementById(btn).style.display='none';
								document.getElementById(refund).style.display='none';
							}
						alert('?????????????????????.')
						} 
					}//success
					
				});
				
			}
			
		  document.querySelector(".inner").style.display='none';
		  document.querySelector(".outer").style.display='none';
		  document.getElementById("buttons").innerHTML='';
		  document.getElementById("col").innerHTML='??????';
		  body.style.overflow = 'auto';
		  
		});

		

		function btnClickHandle(order_id){ //?????????????????? ??????????????? ???
			
			//alert(order_id);
		
			//ajax??? ?????? order_id??? ?????? ????????? ????????????	
			$.ajax({
					url:"orderList/check",
					data:{order_id:order_id},
					async:false,
					type:"get",
					dataType:"json",
					error:function(xhr){
						alert(xhr.status+"/"+xhr.statusText);
					},
					success:function(json){
						if(json.flag!=0){
							//alert("???????????????");
							//alert(json.data);
							//alert(JSON.stringify(json));
							
							//$("#row-div-info").empty(); //???????????? ?????? ?????????
							var sentence1="<span>???????????? </span><span style='padding-left: 10px;'>"+json.data[0].order_date+"</span>";
							sentence1+="<span style='padding-left: 20px;'>???????????? </span>"+
										"<span style='padding-left: 10px;'>"+json.data[0].order_id+"</span>";

							//???????????? ?????? ??????			
							document.getElementById('row-div-info').innerHTML=sentence1
								
							var sentence2=""
							
							for(var i=0;i<json.data.length;i++){
								//alert(json.data[i].detail_id);
								var p=parseInt(json.data[i].amount)*parseInt(json.data[i].price);
								var price=p.toLocaleString('ko-KR');
								sentence2+="<div class='row-div'>"+
									"<input type='checkbox' name='productCheck' value='"+json.data[i].detail_id+"' style='zoom:1.3;' class='check'/>";
								sentence2+="<div class='how-itemcart-j' style='width:60px;margin-right: 50px;margin-left: 20px;'>"
								//?????? ?????? ?????????????????? json.data[i].image???
								sentence2+="<img src='${initParam.uploadPath}"+json.data[i].image+"' alt='IMG' style='width:60px;'></div>"
								sentence2+="<div class='product-info' style='width:150px;margin-left:20px;'>"+json.data[i].item_name+"</div>"
								sentence2+="<div class='product-info1' style='margin-left:30px;'>"+json.data[i].amount+"???</div>"
								sentence2+="<div class='product-info1' style=' margin-right:20px;'>"+price+"???</div></div>"
								
							}
								document.getElementById('row-div-m').innerHTML=sentence2;
							
							
						}//end if
					}
				});
		
			
			document.querySelector(".outer").style.display='block';
			document.querySelector(".inner").style.display='block';
			document.querySelector(".inner1").style.display='none';
			
			outer.classList.toggle('show');
  
		  if (outer.classList.contains('show')) {
			  body.style.overflow = 'auto';
			  
		  }
		}
	  </script>




</body>
</html>