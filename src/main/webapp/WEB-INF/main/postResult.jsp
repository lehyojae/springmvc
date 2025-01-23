<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% System.out.println("^^^^^^^^^^^^"); %>
	<h2>결과:${postdto }</h2>
	<hr/>
	<h2>아이디:${postdto.userId }</h2>
	<h2>패스워드:${postdto.passwd }</h2>
</body>
</html>