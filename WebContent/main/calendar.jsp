<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.Year"%>
<%@page import="java.util.Calendar"%>
<%@page import="net.main.db.ListBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>	
<!DOCTYPE html>
<html>

<head>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Creative - Bootstrap Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="/webproject0510-1/admin/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="/webproject0510-1/admin/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="/webproject0510-1/admin/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="/webproject0510-1/admin/css/font-awesome.min.css" rel="stylesheet" />
  <!-- full calendar css-->
  <link href="/webproject0510-1/admin/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="/webproject0510-1/admin/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="/webproject0510-1/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="/webproject0510-1/admin/css/owl.carousel.css" type="text/css">
  <link href="/webproject0510-1/admin/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="/webproject0510-1/admin/css/fullcalendar.css">
  <link href="/webproject0510-1/admin/css/widgets.css" rel="stylesheet">
  <link href="/webproject0510-1/admin/css/style.css" rel="stylesheet">
  <link href="/webproject0510-1/admin/css/style-responsive.css" rel="stylesheet" />
  <link href="/webproject0510-1/admin/css/xcharts.min.css" rel=" stylesheet">
  <link href="/webproject0510-1/admin/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
  <style type="text/css">
td {
	width: 70px;
	height: 80px
}
 
</style>

<script type="text/javascript">
	function scheduleWrite() {
		var url = "<%= request.getContextPath()%>/m_ScheduleModifyAction.mo";
		open(url, "toolbar=no,location=no,status=no,menubar=no,"
				+ "scrollbars=no,resizable=no,width=400px,height=200");
	}

</script>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//Radio button init
		$('input:radio[id=close]').prop("checked", true);

		//Radio button event
		$('input:radio[name=curtain]').change(function() {
			if ($(this).val() == "open") { //Curtain on
				var maskHeight = $(document).height();
				var maskWidth = $(window).width();

				$('.tutorialCurtain').css({
					'width' : maskWidth,
					'height' : maskHeight
				});
				$('.tutorialCurtain').fadeIn(100,function(){
					$('#lala').fadeIn(100);
				});
				
				/* $('.tutorialCurtain').fadeTo("slow",0.4);	
				$('#lala').fadeIn(100);	 */
			} else if ($(this).val() == "close") { //Curtain off
				$('.tutorialCurtain').css({
					'width' : 0,
					'height' : 0
				});
				$('.tutorialCurtain').fadeOut();
				$('#lala').fadeOut(100);	
			}
		});
	});
	
	/* $(function(){
    	$('.tutorialCurtain').click(function(){
    		$('.tutorialCurtain').append('<span>안녕</span>');
    	})
    }); */
	
</script>

<style type="text/css">
		.tutorialCurtain {  
			position:absolute;  
			left:0;
			top:0;
			z-index:9;  
			background-color:#000;  
			display:none;  
			opacity:0.4;
		}
		
		.tutorialView{
			z-index:10;
			position:relative;
			background-color:#FFF;
		}
		
		.tutorialView2{
			z-index:10;
			position:relative;
			background-color:#FFF;
			width:30%;
		}
		
		.tutorialView3{
			z-index:10;
			position:relative;
			background-color:#FFF;
			width:48%;
		}
		
		.text{
		   color:orange;
		   position:relative;
		}
		
		#lala{display:none; position:relative; top:300px; left:250px;}
		
</style>
  
</head>

<body>
<section id="container" class="">


    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="/webproject0510-1/main/index.jsp" class="logo">Schedule in <span class="lite">my Calendar</span></a>
      <!--logo end-->



      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">

          <!-- task notificatoin start -->

          <!-- task notificatoin end -->
          <!-- inbox notificatoin start-->
          <li id="mail_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">You have 5 new messages</p>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="/webproject0510-1/admin/img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                    </span>
                                    <span class="message">
                                        I really like this admin panel.
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="/webproject0510-1/admin/img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">
                                     Hi, What is next project plan?
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="/webproject0510-1/admin/img/avatar-mini3.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Phillip   Park</span>
                                    <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">
                                        I am like to buy this Admin Template.
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="photo"><img alt="avatar" src="/webproject0510-1/admin/img/avatar-mini4.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Ray   Munoz</span>
                                    <span class="time">1 day</span>
                                    </span>
                                    <span class="message">
                                        Icon fonts are great.
                                    </span>
                                </a>
              </li>
              <li>
                <a href="#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox notificatoin end -->
          <!-- alert notification start-->
          <li id="alert_notificatoin_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-blue"></div>
              <li>
                <p class="blue">You have 4 new notifications</p>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span>
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>
                                    John location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span>
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
              </li>
              <li>
                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span>
                                    Mick appreciated your work.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
              </li>
              <li>
                <a href="#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- alert notification end-->
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="/webproject0510-1/admin/img/test.png">
                            </span>
                            <span class="username">스마캣</span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
              <li class="eborder-top">
                <a href="#"><i class="icon_profile"></i> My Profile</a>
              </li>
              <li>
                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
              </li>
              <li>
                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
              </li>
              <li>
                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
              </li>
              <li>
                <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
              </li>
              <li>
                <a href="/webproject0510-1/admin/documentation.html"><i class="icon_key_alt"></i> Documentation</a>
              </li>
              <li>
                <a href="/webproject0510-1/admin/documentation.html"><i class="icon_key_alt"></i> Documentation</a>
              </li>
            </ul>
          </li>
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
          <li class="active">
            <a class="" href="/webproject0510-1/main/index.jsp">
                          <i class="icon_house_alt"></i>
                          <span>홈</span>
                      </a>
          </li>
          
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span>달력</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      
            <ul class="sub">
              <li><a class="" href="<%=request.getContextPath()%>/MainAction2.mo?year=2019&month=5">일정관리</a></li>

            </ul>
          </li>
          
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>스케줄</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="<%=request.getContextPath()%>/m_ScheduleModifyAction.mo">스케줄 등록</a></li>
              <li><a class="" href="<%=request.getContextPath()%>/m_ScheduleListAction.mo">스케줄 보기</a></li>
            </ul>
          </li>
          
          <li>
            <a class="" href="<%=request.getContextPath() %>/MemberLogin.lo">
                          <i class="icon_genius"></i>
                          <span>로그아웃</span>
                      </a>
                      <li>  
          </li>  

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="/webproject0510-1/main/index.jsp">홈</a></li>
              <li><i class="fa fa-laptop"></i>Dashboard</li>
            </ol>
          </div>
        </div>
<span class="tutorialView"> 
	    <input type="radio" name="curtain" id="open" value="open">
	        <label for="open">Tutorial on</label> 
		<input type="radio" name="curtain" id="close" value="close">
		    <label for="close">Tutorial off</label>
</span>

<br>
<br>
<div class="tutorialCurtain">
  <span style="color:skyblue" id="lala">↑  1. 찾고자 하는 일정을 검색해주세요.
  <br><br><br><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;↑  2. 원하는 날짜를 검색해주세요.
  &nbsp; &nbsp; &nbsp;&nbsp;
  ↓3. 등록한 스케줄을 확인해주세요.
  </span>
</div>

		
	<input class="tutorialView2" type="button" value="스케줄 등록" onclick="scheduleWrite()">

	<form class="tutorialView2" action="<%= request.getContextPath()%>/ScheduleSearchAction.mo" name="searchForm">
		<input type="text" name="search">
		<input type="submit" name="searchb" value="검색하기" > 
	</form> 
	<br>
	<hr>
	
	<table border="1" width=100%>
	</table>
		
	<form class="tutorialView3" action="./MainAction2.mo">
	<input type="text" name="year" value="<%=session.getAttribute("year")%>">년
	<input type="text" name="month" value="<%=session.getAttribute("month")%>">월
	<input type="submit" value="달력검색">
	</form>
	
	<br>
	<table class="tutorialView"  border="1" width=100%>
		<tr>
			<th>일</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th>토</th>
		</tr>
		<%			
		//out.write(""+session.getAttribute("year"));
			//out.write((String)session.getAttribute("month"));
			ArrayList<ListBean> arrayList = (ArrayList) request.getAttribute("arrayList");
			int dayofweek = 0;
			int lastday = 0;
			boolean isFirst = true;
			for (ListBean bean : arrayList) {
				if (isFirst) {
					dayofweek = bean.getDayofweek();
					lastday = bean.getLastday();
					//out.write(dayofweek+""+lastday);
				}
			}
			for (int i = 1; i <= 42; i++) {
				if (i % 7 == 1) {
					out.write("<tr><td>");
					String dupl="";
					if ((i - dayofweek + 1) > 0 && (i - dayofweek + 1) <= lastday) {
					out.write("<h5>");
					{
						out.write((i - dayofweek + 1) + "");
					}
					out.write("</h5>");

					for (ListBean bean : arrayList) {
						if (Integer.parseInt(bean.getSCHEDULE_APP_START_DATE()) <= (i - dayofweek + 1)
								&& Integer.parseInt(bean.getSCHEDULE_APP_END_DATE()) >= (i - dayofweek + 1)) {
							if(dupl.equals(bean.getSCHEDULE_NAME())){}
							else{out.write(bean.getSCHEDULE_NAME() + "<br>");}
							dupl=bean.getSCHEDULE_NAME();
						}
					}}
					out.write("</td>");
				} else if (i % 7 == 0) {
					{
						out.write("<td>");
						String dupl="";
						if ((i - dayofweek + 1) > 0 && (i - dayofweek + 1) <= lastday) {
						out.write("<h5>");
						if ((i - dayofweek + 1) > 0) {
							out.write((i - dayofweek + 1) + "");
						}
						out.write("</h5>");
						

						for (ListBean bean : arrayList) {
							if (Integer.parseInt(bean.getSCHEDULE_APP_START_DATE()) <= (i - dayofweek + 1)
									&& Integer.parseInt(bean.getSCHEDULE_APP_END_DATE()) >= (i - dayofweek + 1)) {
								if(dupl.equals(bean.getSCHEDULE_NAME())){}
								else{	out.write(bean.getSCHEDULE_NAME() + "<br>");}
								dupl=bean.getSCHEDULE_NAME();
							}
						}}
						out.write("</td>");
						out.write("</tr>");
					}
				} else {
					{
						out.write("<td>");
						String dupl="";
						if ((i - dayofweek + 1) > 0 && (i - dayofweek + 1) <= lastday) {
							out.write("<h5>");

							out.write((i - dayofweek + 1) + "");
						}
						out.write("</h5>");
						for (ListBean bean : arrayList) {
							if (Integer.parseInt(bean.getSCHEDULE_APP_START_DATE()) <= (i - dayofweek + 1)
									&& Integer.parseInt(bean.getSCHEDULE_APP_END_DATE()) >= (i - dayofweek + 1)) {
								if(dupl.equals(bean.getSCHEDULE_NAME())){}
								else{out.write(bean.getSCHEDULE_NAME() + "<br>");}
								dupl=bean.getSCHEDULE_NAME();
							}
						}
					}
					out.write("</td>");
				}
			}
		%>

	</table>


      </section>
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
    <!--main content end-->
  </section>
  <!-- container section start -->

  <!-- javascripts -->
  <script src="/webproject0510-1/admin/js/jquery.js"></script>
  <script src="/webproject0510-1/admin/js/jquery-ui-1.10.4.min.js"></script>
  <script src="/webproject0510-1/admin/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="/webproject0510-1/admin/js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="/webproject0510-1/admin/js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="/webproject0510-1/admin/js/jquery.scrollTo.min.js"></script>
  <script src="/webproject0510-1/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="/webproject0510-1/admin/assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="/webproject0510-1/admin/js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="/webproject0510-1/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="/webproject0510-1/admin/js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <<script src="/webproject0510-1/admin/js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="/webproject0510-1/admin/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="/webproject0510-1/admin/js/calendar-custom.js"></script>
    <script src="/webproject0510-1/admin/js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="/webproject0510-1/admin/js/jquery.customSelect.min.js"></script>
    <script src="/webproject0510-1/admin/assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="/webproject0510-1/admin/js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="/webproject0510-1/admin/js/sparkline-chart.js"></script>
    <script src="/webproject0510-1/admin/js/easy-pie-chart.js"></script>
    <script src="/webproject0510-1/admin/js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="/webproject0510-1/admin/js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="/webproject0510-1/admin/js/xcharts.min.js"></script>
    <script src="/webproject0510-1/admin/js/jquery.autosize.min.js"></script>
    <script src="/webproject0510-1/admin/js/jquery.placeholder.min.js"></script>
    <script src="/webproject0510-1/admin/js/gdp-data.js"></script>
    <script src="/webproject0510-1/admin/js/morris.min.js"></script>
    <script src="/webproject0510-1/admin/js/sparklines.js"></script>
    <script src="/webproject0510-1/admin/js/charts.js"></script>
    <script src="/webproject0510-1/admin/js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>
