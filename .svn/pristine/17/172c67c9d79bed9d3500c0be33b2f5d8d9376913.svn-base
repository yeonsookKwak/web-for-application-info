<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="net.main.db.*"%>
<%@page import="java.util.ArrayList"%>
<%
	scheduleDTO sbean = (scheduleDTO) request.getAttribute("scheduledata");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Schedule Main</title>
</head>
<body>
	
	<div>
		<table border="1" class="table table-condensed">
		<tr class="text-center">
			<th class="text-center">시험명</th><th class="text-center">시험접수시작일</th>
			<th class="text-center">시험접수마지막일</th><th class="text-center">시험당일</th>
		</tr>
			<%
				out.write("<tr>");
				out.write("<td>");
				out.write(sbean.getSchedule_Name());
				out.write("</td>");
				out.write("<td>");
				out.write(sbean.getSchedule_app_start_date());
				out.write("</td>");
				out.write("<td>");
				out.write(sbean.getSchedule_app_end_date());
				out.write("</td>");
				out.write("<td>");
				out.write(sbean.getSchedule_day());
				out.write("</td>");
				out.write("</tr>");
			%>
		</table>
	</div>
</body>
</html>