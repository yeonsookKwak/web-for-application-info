<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="net.adminschedule.db.MemberBean"%>
<%@ page import="net.adminschedule.db.MemberDAO"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%
	// MemberInfoAction에서 넘긴 회원정보를 추출한다.
	ArrayList<MemberBean> memberList = (ArrayList<MemberBean>) request.getAttribute("memberList");
%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="/webproject0510-1/admin/img/favicon.png">

<title>Basic Table | Creative - Bootstrap 3 Responsive Admin
	Template</title>

<!-- Bootstrap CSS -->
<link href="/webproject0510-1/admin/css/bootstrap.min.css"
	rel="stylesheet">
<!-- bootstrap theme -->
<link href="/webproject0510-1/admin/css/bootstrap-theme.css"
	rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="/webproject0510-1/admin/css/elegant-icons-style.css"
	rel="stylesheet" />
<link href="/webproject0510-1/admin/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- Custom styles -->
<link href="/webproject0510-1/admin/css/style.css" rel="stylesheet">
<link href="/webproject0510-1/admin/css/style-responsive.css"
	rel="stylesheet" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

<!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body>
	<section id="container" class="">


		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a href="/webproject0510-1/admin/adminmain.jsp" class="logo">Admin
				<span class="lite">Page</span>
			</a>
			<!--logo end-->

			<div class="top-nav notification-row">
				<!-- notificatoin dropdown start-->
				<ul class="nav pull-right top-menu">

					<!-- task notificatoin start -->
					<li id="task_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-task-l"></i>
					</a></li>
					<!-- task notificatoin end -->
					<!-- inbox notificatoin start-->
					<li id="mail_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-envelope-l"></i>
					</a></li>
					<!-- inbox notificatoin end -->
					<!-- alert notification start-->
					<li id="alert_notificatoin_bar" class="dropdown"><a
						data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
							class="icon-bell-l"></i>

					</a></li>
					<!-- alert notification end-->
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<img alt="" src="/webproject0510-1/admin/img/test.png">
						</span> <span class="username">Admin</span> <b class="caret"></b>
					</a></li>
					<!-- user login dropdown end -->
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class="active"><a class=""
						href="/webproject0510-1/admin/adminmain.jsp"> <i
							class="icon_house_alt"></i> <span>홈</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_document_alt"></i> <span>일정관리</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class=""
								href="/webproject0510-1/admin/scheduleinsert.jsp">일정입력</a></li>
							<li><a class=""
								href="/webproject0510-1/admin/scheduleupdate.admin">일정수정</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_table"></i> <span>회원</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class=""
								href="/webproject0510-1/admin/membermanage.admin">회원관리</a></li>
						</ul></li>
					<li><a class=""
						href="<%=request.getContextPath()%>/MemberLogin.lo"> <i
							class="icon_genius"></i> <span>로그아웃</span>
					</a></li>


					<!-- <ul class="sub">
              <li><a class="" href="profile.html">Profile</a></li>
              <li><a class="" href="login.html"><span>Login Page</span></a></li>
              <li><a class="" href="contact.html"><span>Contact Page</span></a></li>
              <li><a class="" href="blank.html">Blank Page</a></li>
              <li><a class="" href="404.html">404 Error</a></li>
            </ul>
          </li>
 -->
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-table"></i> Table
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a
								href="/webproject0510-1/admin/adminmain.jsp">Home</a></li>
							<li><i class="fa fa-table"></i>Table</li>
							<li><i class="fa fa-th-list"></i>Basic Table</li>
						</ol>
					</div>
				</div>
				<!-- page start-->
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> MEMBER Table </header>

							<table class="table table-striped table-advance table-hover">
								<tr>
									<th><i class="icon_profile"></i> ID</th>
									<th><i class="icon_calendar"></i> PW</th>
									<th><i class="icon_mail_alt"></i> NAME</th>
									<th><i class="icon_pin_alt"></i> 주민앞자리</th>
									<th><i class="icon_mobile"></i> 주민뒷자리</th>
									<th><i class="icon_cogs"></i> 이메일앞자리</th>
									<th><i class="icon_cogs"></i> 이메일뒷자리</th>
									<th><i class="icon_cogs"></i> 모바일</th>
									<th><i class="icon_cogs"></i> 핸드폰</th>
									<th><i class="icon_cogs"></i> 우편번호</th>
									<th><i class="icon_cogs"></i> 주소1</th>
									<th><i class="icon_cogs"></i> 주소2</th>
									<th><i class="icon_cogs"></i> 권한</th>


								</tr>
								<%
									for (MemberBean member : memberList) {
								%>
								<tr>
									<td><%=member.getMEMBER_ID()%></td>
									<td><%=member.getMEMBER_PW()%></td>
									<td><%=member.getMEMBER_NAME()%></td>
									<td><%=member.getMEMBER_JUMIN1()%></td>
									<td><%=member.getMEMBER_JUMIN2()%></td>
									<td><%=member.getMEMBER_EMAIL()%></td>
									<td><%=member.getMEMBER_EMAIL_GET()%></td>
									<td><%=member.getMEMBER_MOBILE()%></td>
									<td><%=member.getMEMBER_PHONE()%></td>
									<td><%=member.getMEMBER_ZIPCODE()%></td>
									<td><%=member.getMEMBER_ADDR1()%></td>
									<td><%=member.getMEMBER_ADDR2()%></td>
									<td><%=member.getMEMBER_ADMIN()%></td>
								</tr>
								<%
									}
								%>
							</table>
						</section>
					</div>
				</div>
				<!-- page end-->
			</section>
		</section>
		<!--main content end-->
		<div class="text-center">
			<div class="credits">
				<!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</section>
	<!-- container section end -->
	<!-- javascripts -->
	<script src="/webproject0510-1/admin/js/jquery.js"></script>
	<script src="/webproject0510-1/admin/js/bootstrap.min.js"></script>
	<!-- nicescroll -->
	<script src="/webproject0510-1/admin/js/jquery.scrollTo.min.js"></script>
	<script src="/webproject0510-1/admin/js/jquery.nicescroll.js"
		type="text/javascript"></script>
	<!--custome script for all page-->
	<script src="/webproject0510-1/admin/js/scripts.js"></script>


</body>

</html>
