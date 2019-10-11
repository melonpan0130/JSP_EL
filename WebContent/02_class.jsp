<%@page import="mirim.hs.kr.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="mirim.hs.kr.Member" />
<jsp:setProperty name="member" property="id" value="Hong" />
<jsp:setProperty name="member" property="name" value="홍길동" />
<jsp:setProperty name="member" property="pw" value="1234" />

<%--
	Member member = new Member();
	member.setId("Hong");
	member.setName("홍길동");
	member.setPw("1234");
--%>

<h2>액션 태그 이름</h2>
ID : <jsp:getProperty name="member" property="id" /> <br>
PW : <jsp:getProperty name="member" property="pw" /> <br>
Name : <jsp:getProperty name="member" property="name" /> <br>
<hr>
<h2>EL 표기법 이용</h2>
ID : ${member.id} <br>
PW : ${member.pw} <br>
Name : ${member.name} <br>

<pre>
	* EL에서 제공해주는 내장 객체
	- pageScope : PAGE 객체를 참조하는 객체
	- requestScope : REQUEST 객체를 참조하는 객체
	- sessionScope : SESSION 객체를 참조하는 객체
	- applicationScope : APPLICATION 객체를 참조하는 객체
	- param : 요청 파라미터를 참조하는 객체
	- paramValues : 요청 파라미터(배열)를 참조하는 객체
	- initParam : 초기화 파라미터를 참조하는 객체
	- cookie : cookie 객체를 참조하는 객체
</pre>
</body>
</html>