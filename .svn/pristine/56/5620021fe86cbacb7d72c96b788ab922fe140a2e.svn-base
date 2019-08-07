<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="net.adminschedule.db.MemberBean" %>
<%@ page import="net.adminschedule.db.MemberDAO" %>   
<%@ page import="java.util.*"%> 
<%@ page import="java.sql.*"%> 

<%
	// MemberInfoAction에서 넘긴 회원정보를 추출한다.
	 ArrayList<MemberBean> memberList = (ArrayList<MemberBean>)request.getAttribute("memberList");
%>

<html>
<head>
	<title>현재 유저정보 출력화면</title>
	
	<style type="text/css">
		table{
			margin-left:auto; 
			margin-right:auto;
			border:3px solid skyblue;
		}
		
		td{
			border:1px solid skyblue
		}
		
		#title{
			background-color:skyblue
		}
	</style>
	
</head>
<body>
		<br><br>
		<b><font size="6" color="gray">회원목록</font></b>
		<br><br><br>
						<!-- 가져온 회원정보를 출력한다. -->
		<table>
			<tr>
			<th>ID</th>
			<th>PW</th>
			<th>NAME</th>
			<th>주민앞자리</th>
			<th>주민뒷자리</th>
			<th>이메일앞자리</th>
			<th>이메일뒷자리</th>
			<th>모바일</th>
			<th>핸드폰</th>
			<th>우편번호</th>
			<th>주소1</th>
			<th>주소2</th>
			<th>MA</th>
		</tr>
<%
	for( MemberBean member : memberList){
%>
		<tr>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_ID()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_PW()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_NAME()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_JUMIN1()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_JUMIN2()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_EMAIL()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_EMAIL_GET()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_MOBILE()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_PHONE()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_ZIPCODE()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_ADDR1()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_ADDR2()%></font>
				</p>
			</td>
			<td>
				<p align="center">
					<font size=2><%=member.getMEMBER_ADMIN()%></font>
				</p>
			</td>
			</tr>
<% } %>
		</table>
<form action="./admin/adminmain.jsp" method="post">
<input type="submit" value="메인으로가기">
</form>
</body>
</html>