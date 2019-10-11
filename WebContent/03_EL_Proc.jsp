<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

<%--  
ID : <%= id %>
PW : <%= pw %>
--%>
 
ID : ${param.id}<br>
PW : ${param.pw}<br>
<hr>
ID : ${param["id"]}
PW : ${param["pw"]}
<hr>
APPLICATION 영역 : ${ applicationScope.application_key } <br>
SESSION 영역 : ${ sessionScope.session_key }<br>
REQUEST 영역 : ${ requestScope.request_key }<br>
PAGE 영역 : ${ pageScope.page_key }
</body>
</html>