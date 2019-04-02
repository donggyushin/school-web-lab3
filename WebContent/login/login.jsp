<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% request.setCharacterEncoding("UTF-8"); %>
<head>
  <link rel="stylesheet" href="./login/styles.css" />
</head>
<div class="login__container">
  <form action="./index.jsp" method="post">
    <input name="name" type="text" placeholder="id" />
    <input name="password" type="password" placeholder="password" />
    <button type="submit">로그인</button>
  </form>
</div>
