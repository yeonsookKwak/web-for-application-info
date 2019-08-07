<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="/webproject0510-1/admin/img/favicon.png">

<title>Form Component | Creative - Bootstrap 3 Responsive Admin
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
<link href="/webproject0510-1/admin/css/daterangepicker.css"
	rel="stylesheet" />
<link href="/webproject0510-1/admin/css/bootstrap-datepicker.css"
	rel="stylesheet" />
<link href="/webproject0510-1/admin/css/bootstrap-colorpicker.css"
	rel="stylesheet" />
<!-- date picker -->

<!-- color picker -->

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

	<!-- container section start -->
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
		<!--sidebar end-->
		<!--  -->
		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-file-text-o"></i> 일정 입력
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="adminmain.jsp">홈</a></li>
							<li><i class="icon_document_alt"></i>일정관리</li>
							<li><i class="fa fa-file-text-o"></i>일정입력</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading"> 양식 </header>
							<div class="panel-body">
								<form class="form-horizontal " method="post"
									action="./adminscheduleinsert.admin">
									<div class="form-group">
										<label class="col-sm-2 control-label">일정이름</label>
										<div class="col-sm-10">
											<input type="text" name="sCHEDULE_NAME" maxlength=20
												class="form-control round-input">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">시험접수일</label>
										<div class="col-sm-10">
											<input type="text" name="sCHEDULE_APP_START_DATE"
												class="form-control round-input">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">시험마감일</label>
										<div class="col-sm-10">
											<input type="text" class="form-control round-input"
												name="sCHEDULE_APP_END_DATE">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">시험일</label>
										<div class="col-sm-10">
											<input type="text" class="form-control round-input"
												name="sCHEDULE_DAY">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">SITE</label>
										<div class="col-sm-10">
											<input type="text" class="form-control round-input"
												name="sCHEDULE_MEMO">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">메모</label>
										<div class="col-sm-10">
											<input type="text" class="form-control round-input"
												name="sCHEDULE_MEMO">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">권한유무</label>
										<div class="col-sm-10">
											<input type="text" class="form-control round-input"
												name="sCHEDULE_MANAGER">
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label"> <input
												type="submit" value="저장" class="btn btn-primary">
											</label>
										</div>
									</div>
								</form>
							</div>
						</section>


					</div>
				</div>
				<!-- Basic Forms & Horizontal Forms-->










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
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>

	<!-- jquery ui -->
	<script src="js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom checkbox & radio-->
	<script type="text/javascript" src="js/ga.js"></script>
	<!--custom switch-->
	<script src="js/bootstrap-switch.js"></script>
	<!--custom tagsinput-->
	<script src="js/jquery.tagsinput.js"></script>

	<!-- colorpicker -->

	<!-- bootstrap-wysiwyg -->
	<script src="js/jquery.hotkeys.js"></script>
	<script src="js/bootstrap-wysiwyg.js"></script>
	<script src="js/bootstrap-wysiwyg-custom.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/bootstrap-colorpicker.js"></script>
	<script src="js/daterangepicker.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- ck editor -->
	<script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
	<!-- custom form component script for this page-->
	<script src="js/form-component.js"></script>
	<!-- custome script for all page -->
	<script src="js/scripts.js"></script>


</body>

</html>
