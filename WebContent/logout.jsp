<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% request.setCharacterEncoding("UTF-8");
session.invalidate(); response.sendRedirect("./index.jsp"); %>
<!-- session 지워주고 index 페이지로 리다이렉트해줌.  -->
