<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="03_EL_Proc.jsp" method="post">
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="pw"><br>
	<button type="submit">submit</button>
</form>

<%
	application.setAttribute("application_key", "application_value");
	session.setAttribute("session_key", "session_value");
	request.setAttribute("request_key", "request_value");
	pageContext.setAttribute("page_key", "page_value");
%>

<jsp:forward page="03_EL_Proc.jsp"></jsp:forward>
</body>
</html>