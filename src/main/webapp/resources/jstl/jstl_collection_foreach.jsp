<%@page import="test.TestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_collection_foreach</title>
</head>
<body>
	<h1>컬렉션에 저장된 데이터에 접근하기(가장 많이 사용)</h1>
	<h2>jsp가 하는 일은 컨트롤러에서 공유한 attribute를 꺼내서 출력</h2>
	<h2>1. 배열</h2>
	<%
		String[] arr = {"java","servlet","jsp","spring"};
	%>
	<c:forEach var="data" items="<%= arr %>">
		<h3>${data }</h3>
	</c:forEach>
	<h2>2. ArrayList(컨트롤러에서 공유한 데이터)</h2>
	<%
		ArrayList<String> list = new ArrayList<String>();
		list.add("하둡");
		list.add("스파크");
		list.add("몽고디비");
		list.add("피그");
		request.setAttribute("list",list);	
	%>
	<c:forEach var="data" items="${list }" varStatus="status">
		<h3>${data }, current=>${status.current },index=>${status.index }</h3>
	</c:forEach>
	
	<h2>3. ArrayList에 DTO가 저장된 경우</h2>
	<%
		ArrayList<TestDTO> userlist = new ArrayList<TestDTO>();
		userlist.add(new TestDTO("jang","1234"));
		userlist.add(new TestDTO("bts","1234"));
		userlist.add(new TestDTO("kang","1234"));
		userlist.add(new TestDTO("kim","1234"));
		//컨트롤러에서 공유된 데이터라 가정
		request.setAttribute("userlist",userlist);%>
		<!-- jsp에서 사용  -->
		<hr/><hr/><hr/><hr/>
		<% ArrayList<TestDTO> jspuserlist =(ArrayList<TestDTO>)  request.getAttribute("userlist"); 
		   for(int i=0;i<jspuserlist.size();i++){
				TestDTO user = jspuserlist.get(i);%>   
		  		<h3><%= user.getId() %>,<%= user.getPass() %></h3>
		<%}%>
		<hr/><hr/><hr/><hr/>
		<h2>JSTL로 변경</h2>
		<hr/><hr/><hr/><hr/>
		
		<c:forEach var="user" items="${userlist }">
			<h3>${user.id },${user.pass }</h3>
		</c:forEach>
		
</body>
</html>








