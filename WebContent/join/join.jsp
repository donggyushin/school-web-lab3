<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% request.setCharacterEncoding("UTF-8"); %>
<head>
  <link rel="stylesheet" href="./join/styles.css" />
</head>
<div class="join__container">
  <form action="./index.jsp" method="post">
    <input type="text" placeholder="id" />
    <input type="password" placeholder="password" />
    <button type="submit">회원가입!</button>
  </form>
</div>
