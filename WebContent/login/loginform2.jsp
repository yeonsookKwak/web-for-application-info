<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 메인폼</title>

<style type="text/css">
li {
	font-size: 12px;
}
</style>

<script>
	function check() {
		var id = loginform.MEMBER_ID.value;
		var pass = loginform.MEMBER_PW.value;

		if (id.length == 0) {
			alert("아이디를 입력하세요.");
			loginform.MEMBER_ID.focus();
			return false;
		}
		if (pass.length == 0) {
			alert("비밀번호를 입력하세요.");
			loginform.MEMBER_PW.focus();
			return false;
		}

		return true;
	}

	function openConfirmId(loginform) {
		var url = "./MemberFind.lo";
		open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"
				+ "scrollbars=no,resizable=no,width=400px,height=200");
	}
</script>

</head>
<body>

	<form action="./MemberLoginAction.lo" method="post" name="loginform"
		onsubmit="return check()">
				<table width=400 border="1" cellspacing="0" cellpadding="0" align="center">
					<tr>
						<td align="center">
							<table cellpadding=0 cellspacing=0 border=0>
								<tr>
									<td width=73>아이디</td>
									<td width=103><input type=text name="MEMBER_ID" size=12
										maxlength=20></td>
									<td width=66 rowspan=3><input type="submit" value="로그인"></td>
								</tr>
								<tr>
								</tr>
								<tr>
									<td width=73>비밀번호</td>
									<td width=103><input type=password name="MEMBER_PW"
										size=12 maxlength=12></td>
								</tr>
								<tr>
									<td height=35 colspan=6 align="center"><input
										type="button" value="회원가입"
										onclick="javascript:window.location='./MemberJoin.lo'">
										<a href="#"> <input type="button" value="아이디/비밀번호 찾기"
											onclick="openConfirmId(this.form)">
									</a></td><br>							
								</tr>
							</table>
							<ul>
								<li>아이디가 없을 경우 '회원가입'을 클릭하십시오.</li>
								<li>잊어버렸을 경우 '아이디/비밀번호 찾기'를 클릭하십시오.</li>
							</ul>
						</td>
					</tr>
				</table>
	</form>


</body>
</html>