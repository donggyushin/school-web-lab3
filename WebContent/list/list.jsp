<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <% request.setCharacterEncoding("UTF-8"); %> <% boolean
logged = false; if(session.getAttribute("id") != null){ logged = true; }
System.out.println(logged); %>
<head>
  <link rel="stylesheet" href="./list/styles.css" />
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <script>
    function checkCheckBoxes() {
      var subjects = [];
      $.each($("input[name='code']:checked"), function() {
        // name 이 code 인 것중에서 체크된것들을 subjects 라는 배열에 모두 넣어주고
        subjects.push($(this).val());
      });
      if (subjects.length == 0) {
        // 배열의 길이가 0 이라면 아무과목도 선택하지 않은 것임.
        alert("한 개 이상의 과목을 신청해주세요. ");
        return false;
        // return을 false 로 해주면 submit button 의
        // onclick 함수를 무효화 시켜줄 수 있음.
      }
      return true;
    }
  </script>
</head>

<div class="list__container">
  <h1>개설강좌</h1>
  <form action="./?pageFile=apply" method="POST" class="list__form">
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
          <input
            type="checkbox"
            name="code"
            value="웹 시스템 설계 및 개발,3,3"
          />
        </div>
        <% } %>
      </div>
      <div class="list__table__row">
        <span class="list__table__row__1">IC147-A</span>
        <span class="list__table__row__2">자바기반응용프로그래밍</span>
        <span class="list__table__row__3">2</span>
        <span class="list__table__row__4">3</span>
        <% if (logged) { %>
        <div class="list__table__row__5">
          <input
            type="checkbox"
            name="code"
            value="자바기반응용프로그래밍,2,3"
          />
        </div>

        <% } %>
      </div>
      <div class="list__table__row">
        <span class="list__table__row__1">IC136-A</span>
        <span class="list__table__row__2">컴퓨터프로그래밍기초</span>
        <span class="list__table__row__3">1</span>
        <span class="list__table__row__4">3</span>
        <% if (logged) { %>
        <div class="list__table__row__5">
          <input type="checkbox" name="code" value="컴퓨터프로그래밍기초,1,3" />
        </div>

        <% } %>
      </div>
      <div class="list__table__row">
        <span class="list__table__row__1">IC066-A</span>
        <span class="list__table__row__2">운영체제</span>
        <span class="list__table__row__3">3</span>
        <span class="list__table__row__4">3</span>
        <% if (logged) { %>
        <div class="list__table__row__5">
          <input type="checkbox" name="code" value="운영체제,3,3" />
        </div>

        <% } %>
      </div>
    </div>
    <button
      type="submit"
      onclick="return checkCheckBoxes()"
      class="list__submit__button"
    >
      수강신청
    </button>
  </form>
</div>
