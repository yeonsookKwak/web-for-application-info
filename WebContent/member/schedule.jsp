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
		<input type="search" id="search">검색
	</div>
	<br>
	<form action="./MainAction.mo">
		<input type="button" onclick="./MainAction.mo" value="전 달"> <input
			type="text" name="year" value="<%=session.getAttribute("year")%>">년
		<input type="text" name="month"
			value="<%=session.getAttribute("month")%>">월 <input
			type="submit" value="달력검색"> <input type="button"
			onclick="./MainAction.mo" value="다음 달">
	</form>

	<br>
	<table class="tutorialView" border="1" width=100%>
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
					String dupl = "";
					if ((i - dayofweek + 1) > 0 && (i - dayofweek + 1) <= lastday) {
						out.write("<h5>");
						{
							out.write((i - dayofweek + 1) + "");
						}
						out.write("</h5>");

						for (ListBean bean : arrayList) {
							if (Integer.parseInt(bean.getSCHEDULE_APP_START_DATE()) <= (i - dayofweek + 1)
									&& Integer.parseInt(bean.getSCHEDULE_APP_END_DATE()) >= (i - dayofweek + 1)) {
								if (dupl.equals(bean.getSCHEDULE_NAME())) {
								} else {
									out.write(bean.getSCHEDULE_NAME() + "<br>");
								}
								dupl = bean.getSCHEDULE_NAME();
							}
						}
					}
					out.write("</td>");
				} else if (i % 7 == 0) {
					{
						out.write("<td>");
						String dupl = "";
						if ((i - dayofweek + 1) > 0 && (i - dayofweek + 1) <= lastday) {
							out.write("<h5>");
							if ((i - dayofweek + 1) > 0) {
								out.write((i - dayofweek + 1) + "");
							}
							out.write("</h5>");

							for (ListBean bean : arrayList) {
								if (Integer.parseInt(bean.getSCHEDULE_APP_START_DATE()) <= (i - dayofweek + 1)
										&& Integer.parseInt(bean.getSCHEDULE_APP_END_DATE()) >= (i - dayofweek + 1)) {
									if (dupl.equals(bean.getSCHEDULE_NAME())) {
									} else {
										out.write(bean.getSCHEDULE_NAME() + "<br>");
									}
									dupl = bean.getSCHEDULE_NAME();
								}
							}
						}
						out.write("</td>");
						out.write("</tr>");
					}
				} else {
					{
						out.write("<td>");
						String dupl = "";
						if ((i - dayofweek + 1) > 0 && (i - dayofweek + 1) <= lastday) {
							out.write("<h5>");

							out.write((i - dayofweek + 1) + "");
						}
						out.write("</h5>");
						for (ListBean bean : arrayList) {
							if (Integer.parseInt(bean.getSCHEDULE_APP_START_DATE()) <= (i - dayofweek + 1)
									&& Integer.parseInt(bean.getSCHEDULE_APP_END_DATE()) >= (i - dayofweek + 1)) {
								if (dupl.equals(bean.getSCHEDULE_NAME())) {
								} else {
									out.write(bean.getSCHEDULE_NAME() + "<br>");
								}
								dupl = bean.getSCHEDULE_NAME();
							}
						}
					}
					out.write("</td>");
				}
			}
		%>


	</table>
	<hr>
	<div>
		<table border="1">
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