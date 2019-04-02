<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% request.setCharacterEncoding("UTF-8"); %> <% boolean
logged = false; if(session.getAttribute("id")!= null){ logged = true; } %>
<head>
  <link rel="stylesheet" href="./header/styles.css" />
</head>
<div class="header__container">
  <% if(logged){ %>
  <a href="./logout.jsp">
    <button>로그아웃</button>
  </a>
  <% }else { %>
  <form action="./index.jsp" method="post">
    <span>아이디</span>
    <input type="text" placeholder="id" name="name" />
    <span>비밀번호</span>
    <input type="password" name="password" placeholder="password" />
    <button type="submit">로그인</button>
  </form>

  <a href="./?pageFile=join"> <button>회원가입</button></a>
  <% } %>
</div>
