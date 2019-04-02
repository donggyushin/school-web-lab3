<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% request.setCharacterEncoding("UTF-8"); %> <% boolean
logged = false; if(session.getAttribute("id") != null){ logged = true; }
System.out.println(logged); %>
<head>
  <link rel="stylesheet" href="./list/styles.css" />
</head>
<div class="list__container">
  <h1>개설강좌</h1>
  <div class="list__table">
    <div class="list__table__row">
      <div class="list__table__row__1">강좌코드</div>
      <div class="list__table__row__2">과목명</div>
      <div class="list__table__row__3">학년</div>
      <div class="list__table__row__4">학점</div>
      <% if (logged) { %>
      <div class="list__table__row__5">선택</div>
      <% } %>
    </div>
    <div class="list__table__row">
      <span class="list__table__row__1">IC015-A</span>
      <span class="list__table__row__2">웹 시스템 설계 및 개발</span>
      <span class="list__table__row__3">3</span>
      <span class="list__table__row__4">3</span>
      <% if (logged) { %>
      <div class="list__table__row__5">
        <input type="checkbox" name="code" value="IC015" />
      </div>
      <% } %>
    </div>
    <div class="list__table__row">
      <span class="list__table__row__1">IC015-A</span>
      <span class="list__table__row__2">웹 시스템 설계 및 개발</span>
      <span class="list__table__row__3">3</span>
      <span class="list__table__row__4">3</span>
      <% if (logged) { %>
      <div class="list__table__row__5">
        <input type="checkbox" name="code" value="IC015" />
      </div>

      <% } %>
    </div>
    <div class="list__table__row">
      <span class="list__table__row__1">IC015-A</span>
      <span class="list__table__row__2">웹 시스템 설계 및 개발</span>
      <span class="list__table__row__3">3</span>
      <span class="list__table__row__4">3</span>
      <% if (logged) { %>
      <div class="list__table__row__5">
        <input type="checkbox" name="code" value="IC015" />
      </div>

      <% } %>
    </div>
  </div>
</div>
