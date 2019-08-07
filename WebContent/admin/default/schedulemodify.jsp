<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="net.adminschedule.db.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%
	 ArrayList<ScheduleBean> scheduleList = (ArrayList<ScheduleBean>)request.getAttribute("scheduleList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스케줄수정</title>
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
	<h1>스케줄수정</h1>
	<form action="./adminscheduleupdate.admin" method="post">
		<table>
			<tr>
				<td>일정ID</td>
				<td><input type="text" name="sCHEDULE_ID"></td>
			</tr>
			<tr>
				<td>시험접수시작일</td>
				<td><input type="text" name="sCHEDULE_APP_START_DATE"></td>
			</tr>
			<tr>
				<td>시험접수종료일</td>
				<td><input type="text" name="sCHEDULE_APP_END_DATE"></td>
			</tr>
			<tr>
				<td>시험일</td>
				<td><input type="text" name="sCHEDULE_DAY"></td>
			</tr>
		</table>
		<input type="submit" value="수정하기">
	</form>

	<table class="table">
		<tr>
			<th>일정ID</th>
			<th>일정이름</th>
			<th>시험접수시작일</th>
			<th>시험접수종료일</th>
			<th>시험일</th>
			<th>시험참조사이트</th>
			<th>메모</th>
			<th>권한</th>
		</tr>
		<%
		for( ScheduleBean schedule : scheduleList){
		%>
		<tr>
			<td>
				<p align="center">
					<font size=2><%=schedule.getSCHEDULE_ID() %></font>
				</p>
			</td>
						<td>
				<p align="center">
					<font size=2><%=schedule.getSCHEDULE_NAME() %></font>
				</p>
			</td>
						<td>
				<p align="center">
					<font size=2><%=schedule.getSCHEDULE_APP_START_DATE() %></font>
				</p>
			</td>
						<td>
				<p align="center">
					<font size=2><%=schedule.getSCHEDULE_APP_END_DATE()%></font>
				</p>
			</td>
						<td>
				<p align="center">
					<font size=2><%=schedule.getSCHEDULE_DAY()%></font>
				</p>
			</td>
						<td>
				<p align="center">
					<font size=2><%=schedule.getSCHEDULE_REF_SITE()%></font>
				</p>
			</td>
						</td>
						<td>
				<p align="center">
					<font size=2><%=schedule.getSCHEDULE_MEMO()%></font>
				</p>
			</td>
						</td>
						<td>
				<p align="center">
					<font size=2><%=schedule.getSCHEDULE_MANAGER() %></font>
				</p>
			</td>
		</tr>
		<% } %>
	</table>
</body>
</html>