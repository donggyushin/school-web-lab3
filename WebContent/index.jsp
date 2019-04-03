<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String pageFile = (String) request.getParameter("pageFile");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	if (name != null) {
		session.setAttribute("id", name);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet" href="./styles.css" />
<script src="jquery-3.3.1.min.js"></script>
</head>

<body class="container">
	<span>201303024 신동규</span>
	<div class="index__container">
		<div class="index__header">
			<jsp:include page="./header/header.jsp" flush="false" />
		</div>
		<div class="index__menu">
			<%@ include file="./menu/menu.jsp"%>
		</div>
		<div class="index__contents">
			<%
				if (pageFile == null) {
			%>
			<%@ include file="./main/main.jsp"%>
			<%
				} else if (pageFile.equals("join")) {
			%>
			<%@ include file="./join/join.jsp"%>
			<%
				} else if (pageFile.equals("list")) {
			%>
			<%@
        include file="./list/list.jsp"%>
			<%
				} else if (pageFile.equals("login")) {
			%>
			<%@ include file="./login/login.jsp"%>
			<%
				} else if (pageFile.equals("apply")) {
			%>
			<%@include file="./apply/apply.jsp"%>
			<%
				}
				else if(pageFile.equals("result")){
					%>
					<%@include file="./result/result.jsp" %>
					<%
				}
				else {
			%>
			<%@ include file="./main/main.jsp"%>
			<%
				}
			%>
		</div>

		<div class="index__bottom">
			<%@ include file="./footer/footer.jsp"%>
		</div>
	</div>
</body>
</html>
