<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
     <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
          <a class="sidebar-brand brand-logo kmong-title" href="${initParam.middlePath }/admin_index">
            <i class="mdi mdi-baby-face text-warning"></i>
            <span>Store Admin</span>
          </a>
          <a class="sidebar-brand brand-logo-mini" href="#void"><i class="mdi mdi-baby-face"></i></a>
        </div>

        <!-- 목록창 -->
        <ul class="nav">
          <li class="nav-item profile">

          <!-- 프로필시작 -->
            <div class="profile-desc">

              <div class="profile-pic">

                <div class="profile-name">
                  <h5 class="mb-0 font-weight-normal">Admin</h5>
                  <span>Administrator</span>
                </div>
              </div>

            </div>
          </li>


          <li class="nav-item nav-category">
            <span class="nav-link">Navigation</span>
          </li>

          <!-- 대시보드 -->
          <li class="nav-item menu-items" id="nav-dashboard">
            <a class="nav-link" href="${initParam.middlePath }/admin_index">
              <span class="menu-icon">
                <i class="mdi mdi-speedometer"></i>
              </span>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>

          <!-- products -->
          <li class="nav-item menu-items" id="nav-product">
            <!-- <a class="nav-link" data-toggle="collapse" href="#ui-post" aria-expanded="false" aria-controls="ui-basic"> -->

            <a class="nav-link" data-toggle="collapse" data-target="#ui-product" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-calendar-text"></i>
              </span>
              <span class="menu-title">Products</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-product">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${initParam.middlePath }/admin/products/">Product List</a></li>
              </ul>
            </div>
          </li>
          
          <!-- 게시판관리 -->
          <li class="nav-item menu-items" id="nav-posts">
            <!-- <a class="nav-link" data-toggle="collapse" href="#ui-post" aria-expanded="false" aria-controls="ui-basic"> -->

            <a class="nav-link" data-toggle="collapse" data-target="#ui-post" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-calendar-text"></i>
              </span>
              <span class="menu-title">Posts</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-post">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${initParam.middlePath }/admin/posts/">Post List</a></li>
              </ul>
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${initParam.middlePath }/admin/comment/">Comment</a></li>
              </ul>
            </div>
          </li>

          <!-- 회원관리 -->
          <li class="nav-item menu-items" id="nav-users">
            <a class="nav-link" data-toggle="collapse" href="#ui-user" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-contacts"></i>
              </span>
              <span class="menu-title">Users</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-user">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${initParam.middlePath }/admin/users/">Users</a></li>
              </ul>
            </div>
          </li>

          <!-- 결제관리 -->
          <li class="nav-item menu-items" id="nav-orders">
            <a class="nav-link" data-toggle="collapse" href="#ui-order" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-basket"></i>
              </span>
              <span class="menu-title">Orders</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-order">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${initParam.middlePath }/admin/orders/">Order Status</a></li>
              </ul>
            </div>
          </li>

          <!-- 서비스관리 -->
          <li class="nav-item menu-items" id="nav-category">
            <a class="nav-link" data-toggle="collapse" href="#ui-category" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-wrench"></i>
              </span>
              <span class="menu-title">Categories</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-category">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${initParam.middlePath }/admin/categories/">Category List</a></li>
              </ul>
            </div>
          </li>
          <!-- coupon -->
          <li class="nav-item menu-items" id="nav-coupon">
            <a class="nav-link" data-toggle="collapse" href="#ui-coupon" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-wrench"></i>
              </span>
              <span class="menu-title">Coupon</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-coupon">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${initParam.middlePath }/admin/coupon/">Coupon List</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item menu-items" id="nav-company">
            <a class="nav-link" data-toggle="collapse" href="#ui-company" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-wrench"></i>
              </span>
              <span class="menu-title">Company</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-company">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="${initParam.middlePath }/admin/company/">Company List</a></li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>