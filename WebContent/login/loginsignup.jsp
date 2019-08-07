<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Form Validation | Creative - Bootstrap 3 Responsive Admin Template</title>
<script>
function check(){
	var id=joinform.MEMBER_ID.value;
	var password1=joinform.MEMBER_PW.value;
	var password2=joinform.MEMBER_PW2.value;	
	var email1=joinform.MEMBER_EMAIL1.value;
	var email2=joinform.MEMBER_EMAIL2.value;
	var phone=joinform.MEMBER_PHONE.value;
	var addr1=joinform.MEMBER_ADDR1.value;
	var addr2=joinform.MEMBER_ADDR2.value;
	var mobile=joinform.MEMBER_MOBILE.value;
	
	var forms = document.getElementById("joinform");
function openConfirmId(joinform){			
	var id=joinform.MEMBER_ID.value;
	var url="<%=request.getContextPath()%>/MemberIDCheckAction.lo?MEMBER_ID="+joinform.MEMBER_ID.value;
	
	if(id.length == 0){
		alert("아이디를 입력하세요.");
		joinform.MEMBER_ID.focus();
		return false;
	}
	open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
						 "scrollbars=no,resizable=no,width=400,height=200");
}
return true;
}

function openConfirmId(joinform){			
	var id=joinform.MEMBER_ID.value;
	var url="<%=request.getContextPath()%>/MemberIDCheckAction.lo?MEMBER_ID="+joinform.MEMBER_ID.value;
	
	if(id.length == 0){
		alert("아이디를 입력하세요.");
		joinform.MEMBER_ID.focus();
		return false;
	}
	open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
						 "scrollbars=no,resizable=no,width=400,height=200");
}

function openZipcode(joinform){			
	var url="./Zipcode.me"
	open(url, "confirm", "toolbar=no,location=no,"
						+"status=no,menubar=no,"
						+"scrollbars=yes,resizable=no,"
						+"width=410,height=400");
}	

function gNumCheck(){
	if(event.keyCode >=48 && event.keyCode <=57) {
		return true;
	}else{
		event.returnValue=false;	
	}
}		
</script>

  <!-- Bootstrap CSS -->
  <link href="/webproject0510-1/admin/css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="/webproject0510-1/admin/css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="/webproject0510-1/admin/css/elegant-icons-style.css" rel="stylesheet" />
  <link href="/webproject0510-1/admin/css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="/webproject0510-1/admin/css/style.css" rel="stylesheet">
  <link href="/webproject0510-1/admin/css/style-responsive.css" rel="stylesheet" />

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
    <!--header start-->



    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-files-o"></i>회원가입 폼</h3>
            <ol class="breadcrumb">
              <li><i class="icon_document_alt"></i>Sign up</li>
              <li><i class="fa fa-files-o"></i>회원가입 폼</li>
            </ol>
          </div>
        </div>
        <!-- Form validations -->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
                회원가입
              </header>
              <div class="panel-body">
                <div class="form">
                  <form class="form-validate form-horizontal" id="feedback_form" method="get" action="<%=request.getContextPath()%>/MemberJoinAction.lo">
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">이름 <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input name="MEMBER_NAME" size="20" type="text" required />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label class="control-label col-lg-2">아이디<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input type="text" name="MEMBER_ID" size="10" maxlength=15 required />
                        <input type="button" name="confirm_id" value="중복확인" onclick="openConfirmId(this.form)" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">비밀번호<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input type="password" name="MEMBER_PW" size="15" />
                        <span><font size="2">(아이디와 비밀번호는 문자와 숫자를 조합하여 2~12자리로 만들어 주세요)</font></span>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">비밀번호 확인<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input type="password"  size="15" /><!-- name="MEMBER_PW2" -->
                      </div>
                      
                    </div>
                    
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">주민등록번호<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input type="text" name="MEMBER_JUMIN1" size="12" onkeypress="gNumCheck()"
								maxlength="6" required /> - <input type="text" name="MEMBER_JUMIN2" size="12" onkeypress="gNumCheck()"
								maxlength="7" required />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="ccomment" class="control-label col-lg-2">이메일 주소</label>
                      <div class="col-lg-5">
                         <input type="text"
								name="MEMBER_EMAIL1" size="13" required/> @ <input type="text"
								name="MEMBER_EMAIL2" size="15" required/>
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="ccomment" class="control-label col-lg-2">메일 수신 여부</label>                    <br>
					<div class="col-lg-10">
						<input type="radio" name="MEMBER_EMAIL_GET" value="YES"
							checked /> <font size="2">수신</font>
							<input type="radio" name="MEMBER_EMAIL_GET" value="NO" /> 
							<font size="2">수신 안함</font>
					</div>
					</div>
					
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">집전화</label>
                      <div class="col-lg-10">
                        <input type="text" name="MEMBER_PHONE" size="24" required />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">우편번호<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input  type="text"
								name="MEMBER_ZIPCODE1" size="6" onkeypress="gNumCheck()"
								maxlength="3" />- <input type="text" name="MEMBER_ZIPCODE2"
								size="6" onkeypress="gNumCheck()" maxlength="3" required />
								&nbsp;&nbsp;
								<input  type="button" name="zipcode" value="우편번호 검색"
								onclick="openZipcode(this.form)" />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">집주소<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input type="text" name="MEMBER_ADDR1" size="50" required />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">상세주소<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input  type="text" name="MEMBER_ADDR2" size="50" required />
                      </div>
                    </div>
                    <div class="form-group ">
                      <label for="cname" class="control-label col-lg-2">휴대폰<span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input  type="text" name="MEMBER_MOBILE" size="24" required />
                      </div>
                    </div>
                      <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit">확인</button>
                        <button class="btn btn-default" type="button">취소</button>
                      </div>
                    
                  </form>
                </div>

              </div>
            </section>
          </div>
        </div>
        
        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
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
  <!-- jquery validate js -->
  <script type="text/javascript" src="js/jquery.validate.min.js"></script>

  <!-- custom form validation script for this page-->
  <script src="js/form-validation-script.js"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>


</body>

</html>
