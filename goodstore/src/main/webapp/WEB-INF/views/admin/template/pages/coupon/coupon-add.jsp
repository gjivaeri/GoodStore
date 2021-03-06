<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Store Admin</title>
    <!-- plugins:css -->
    <!-- 아이콘관련 -->
    <link rel="stylesheet" href="${initParam.staticPath}assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${initParam.staticPath}assets/vendors/css/vendor.bundle.base.css">

    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="${initParam.staticPath}assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="${initParam.staticPath}assets/images/favicon.png" />
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
  </head>
  <script type="text/javascript">
 
  function chkNull() {
  	
  	if ( $("#number").val() === "" ) {
  		alert("숫자를 입력해주세요!");
  		$("#number").focus();
  		return;
  	}
  	if ( $("#name").val() === "" ) {
  		alert("이름을 입력해주세요!");
  		$("#name").focus();
  		return;
  	}
  	
  	if ( $("#discount_rate").val() === "" ) {
  		alert("할인률을 입력해주세요!");
  		$("#discount_rate").focus();
  		return;
  	}
  	if ( $("#discount_rate").val() < 0 ) {
  		alert("할인률은 0보다 작을 수 없습니다.");
  		$("#discount_rate").focus();
  		return;
  	}
  	if ( $("#discount_rate").val() > 100 ) {
  		alert("할인률은 100보다 클 수 없습니다.");
  		$("#discount_rate").focus();
  		return;
  	}
  	
  	if ( $("#discount_price").val() === "" ) {
  		alert("할인가격을 입력해주세요!");
  		$("#discount_price").focus();
  		return;
  	}
  	
  	
  	if ( $("#start_date").val() === "" ) {
  		alert("시작날짜를 입력해주세요!");
  		$("#start_date").focus();
  		return;
  	}
  	
  	if ( $("#end_date").val() === "" ) {
  		alert("끝 날짜를 입력해주세요!");
  		$("#end_date").focus();
  		return;
  	}
  	
		  $("#couponFrm").submit();
  	
  }
  
  $(function() {
	  $("#frmBtn").click(function(){
		  chkNull()
	  })
  })
  </script>
  <body>
    <div class="container-scroller">
      <!-- partial:../../partials/_sidebar.jsp -->
<%@ include file="../../include/leftnavi.jsp" %>
<%@ include file="../../include/topnavi.jsp" %>


      
<!----------------------------------------------------- 여기까지 좌,상단 nav bar ---------------------------------------------------------->

        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- 여기에 본문 내용 채울 것. -->


            <div class="page-header">
              <h3 class="page-title"> Coupon </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="coupons.jsp">Coupon</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Coupon List</li>
                  <li class="breadcrumb-item active" aria-current="page">Coupon Add</li>
                </ol>
              </nav>
            </div>
            <div class="row">

              <!-- 표 테이블 시작 . JSP에서 자동화할것-->
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Coupon Add</h4>
                      <p class="card-description">Coupon Add </p>

                      <!-- 이름, 작성자 -->
                          <form method="post" id="couponFrm" name="couponFrm" action="http://${initParam.domain}${initParam.middlePath}/admin/coupon/add">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">쿠폰개수</label>
                            <div class="col-sm-9" style="margin-bottom: 10px">
                              <input type="number" class="form-control" placeholder="개수를 입력해주세요" id="number" name="number"/>
                            </div>
                            <label class="col-sm-3 col-form-label">쿠폰이름</label>
                            <div class="col-sm-9" style="margin-bottom: 10px">
                              <input type="text" class="form-control" id="name" name="name"/>
                            </div>
                            <label class="col-sm-3 col-form-label">할인율</label>
                            <div class="col-sm-9" style="margin-bottom: 10px" >
                              <input type="number"  min="0" max="100" class="form-control" id="discount_rate" name="discount_rate"/>
                            </div>
                            <label class="col-sm-3 col-form-label">할인금액</label>
                            <div class="col-sm-9" style="margin-bottom: 10px">
                              <input type="number" class="form-control" id="discount_price" name="discount_price"/>
                            </div>
                            <label class="col-sm-3 col-form-label">쿠폰적용시작일</label>
                            <div class="col-sm-9" style="margin-bottom: 10px">
                              <input type="date" class="form-control" placeholder="yyyy-MM-dd" id="start_date" name="start_date"/>
                            </div>
                            <label class="col-sm-3 col-form-label">쿠폰적용마감일</label>
                            <div class="col-sm-9" style="margin-bottom: 10px">
                              <input type="date" class="form-control" placeholder="yyyy-MM-dd" id="end_date" name="end_date"/>
                            </div>
                          </div>
                        </div>
                      </div>
                            </form>

                      
                   
                      <button type="button" class="btn btn-outline-primary btn-icon-text" id="frmBtn">
                        <i class="mdi mdi-file-check btn-icon-prepend"></i> Submit </button>
                          &emsp;
                         
                        


                    </form>
                  </div>
                </div>
              </div>







        </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.jsp -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="${initParam.staticPath}assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="${initParam.staticPath}assets/js/off-canvas.js"></script>
    <script src="${initParam.staticPath}assets/js/hoverable-collapse.js"></script>
    <script src="${initParam.staticPath}assets/js/misc.js"></script>
    <script src="${initParam.staticPath}assets/js/settings.js"></script>
    <script src="${initParam.staticPath}assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <!-- End custom js for this page -->
  </body>
</html>