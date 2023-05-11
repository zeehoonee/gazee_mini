<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link href="../../resources/static/css/nav.css" rel="stylesheet"/>
    <link href="../../resources/static/css/write.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<div id="wrap">
    <div id="header">
        <div id="login">
            <ul class="user">
                <li>로그인</li>
                <li id="line">|</li>
                <li>회원가입</li>
            </ul>
        </div>
        <div class="headerContent">
            <img src="../../resources/static/img/gazee_logo.png" id="logo">
            <ul class="menu">
                <li>마이페이지</li>
                <li>커뮤니티</li>
                <li>고객센터</li>
                <li>신고하기</li>
                <li>
                    <button id="sell">판매하기</button>
                </li>
            </ul>
        </div>
    </div>
    <div id="content">
        <div id="board">
            <div class="topBar">
                <div id="topBarTitle">
                    글쓰기
                </div>
            </div>
            <form action="insertMain" method="get">
  <span id="title" style="display: flex">
    <input name="title" type="text" placeholder="제목을 입력해주세요." id="titleInput">
      <button type="button" id="tempSave">임시저장</button>
    <script>
      const form = document.getElementById("temp");
      const tempSaveBtn = document.getElementById("tempSave");

      tempSaveBtn.addEventListener("click", function (event) {
          event.preventDefault(); // prevent default form submit behavior
          form.submit(); // submit the form via JavaScript
          alert("임시저장 되었습니다."); // show alert message
      });
    </script>
  </span>
                <div id="contentInput">
                    <textarea name="content" id="bbsContent" placeholder="내용을 입력해주세요." required></textarea>
                </div>
                <div id="bottomBar">
    <span id="file">
      <div id="fileTitle">첨부파일</div>
      <div id="fileSelect"><input name="img" type="file"></div>
    </span>
                    <span id="buttons">
      <button type="button" onclick="confirmCancel()" class="cancelSubmit" id="cancel">취소</button>
      <script>
        function confirmCancel() {
            if (confirm("글 작성을 취소하시겠습니까? 저장하지 않은 내용은 삭제됩니다.")) {
                location.href = "community"
            }
        }
      </script>
      <button type="submit" class="cancelSubmit" id="submit">작성하기</button>
    </span>
                </div>
            </form>
        </div>
    </div>
</div>

<div id="footer">
    <a href="listMain.gazee">전체 목록 가지고 오기 </a>
    <div>
        <p style="margin: 0; font-size: 12px;">Copyrightⓒ 2023. gazee. All rights reserved.</p>
    </div>
</div>
</body>
</html>