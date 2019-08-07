<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>스케줄입력</title>
</head>
<body>

<form action="./adminscheduleinsert.admin" name="scheduleinsert" method="post">
<table border="1">
<tr>
<td>일정이름</td><td><input type="text" name="sCHEDULE_NAME" maxlength=20></td>
</tr><tr>
<td>시험접수시작일</td><td><input type="text" name="sCHEDULE_APP_START_DATE"></td>
</tr><tr>
<td>시험접수종료일</td><td><input type="text" name="sCHEDULE_APP_END_DATE"></td>
</tr><tr>
<td>시험일</td><td><input type="text" name="sCHEDULE_DAY"></td>
</tr><tr>
<td>시험참조사이트</td><td><input type="text" name="sCHEDULE_REF_SITE"></td>
</tr><tr>
<td>메모</td><td><input type="text" name="sCHEDULE_MEMO"></td>
</tr>
<tr>
<td>권한유무</td><td><input type="text" name="sCHEDULE_MANAGER"></td>
</tr>
</table>
<input type="submit" value="저장">
</form>

</body>
</html>