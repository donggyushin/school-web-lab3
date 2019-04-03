<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% request.setCharacterEncoding("UTF-8"); %>

<head>
  <link rel="stylesheet" href="./apply/styles.css" />
  <style>
    .apply__container {
      display: flex;
      flex-direction: column;
      padding-left: 15px;
    }

    .apply__card {
      display: flex;
      flex-direction: column;
      width: 80%;
    }

    .apply__card__row {
      display: flex;
      width: 100%;
    }

    .apply__card__row > div {
      border: 1px solid gray;
    }

    .apply__card__row__number {
      width: 20%;
    }

    .apply__card__selected__subject {
      width: 40%;
    }

    .apply__card__row__score {
      width: 20%;
    }

    .apply__card__row__grade {
      width: 20%;
    }

    .apply__card__row__totalScore {
      width: 80%;
    }
    .apply__card__row__totalScore__value {
      width: 20%;
      color: red;
    }
  </style>
</head>
<div class="apply__container">
  <h1 class="apply__h1">
    수강 신청
  </h1>
  <div class="apply__card">
    <div class="apply__card__row">
      <div class="apply__card__row__number">번호</div>
      <div class="apply__card__selected__subject">선택한 과목</div>
      <div class="apply__card__row__score">학점</div>
      <div class="apply__card__row__grade">학년</div>
    </div>
    <% String[] subjects = request.getParameterValues("code"); int totalScore =
    0; if(subjects != null){ for(int i = 0 ; i < subjects.length; i ++) { String
    s1 = subjects[i]; %>
    <div class="apply__card__row">
      <div class="apply__card__row__number"><%=i+1%></div>
      <% String[] s2 = s1.split(","); totalScore = totalScore +
      Integer.parseInt(s2[2]); %>
      <div class="apply__card__selected__subject"><%=s2[0]%></div>
      <div class="apply__card__row__score"><%=s2[2] %>학점</div>
      <div class="apply__card__row__grade"><%=s2[1] %>학년</div>
    </div>
    <% } } %>
    <div class="apply__card__row">
      <div class="apply__card__row__totalScore">총 학점</div>
      <div class="apply__card__row__totalScore__value">
        <span><%=totalScore %></span>
      </div>
    </div>
  </div>
  <a href="./?pageFile=result">
    <button>신청</button>
  </a>
</div>
