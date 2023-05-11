<%--
  Created by IntelliJ IDEA.
  User: jihun
  Date: 2023/03/28
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>게시글 상세 페이지</title>
    <link href="../../resources/static/css/nav.css" rel="stylesheet"/>
    <link href="../../resources/static/css/one.css" rel="stylesheet"/>
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
                <li><a href="community">커뮤니티</a></li>
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
            <div class="titleBar">
                <div id="title">
                    ${bag.title}
                </div>
            </div>
            <div id="nicknameBar">
                <span id="nickname">
                작성자 : ${bag.memId}
                    </span>
                <span id="date">
                    작성시간 : ${bag.date}
                </span>
            </div>
            <div id="article">
                ${bag.content}
            </div>
            <div id="deleteBar">
                <form action="deleteMain" method="get" id="deleteForm">
                    <input type="hidden" name="no" value="${bag.no}">
                    <button type="button" onclick="confirmDelete()" class="deleteEdit" id="delete">삭제</button>
                </form>
                <script>
                    function confirmDelete() {
                        if (confirm("삭제하시겠습니까?")) {
                            document.getElementById("deleteForm").submit();
                            alert("게시글이 삭제 되었습니다.")
                        }
                    }
                </script>

                <a href="editMain?id=${bag.no}">
                    <button type="submit" class="deleteEdit" id="edit">수정</button>
                </a>
            </div>
            <div id="commentFrame">
                <div id="commentTopBar">
                    댓글
                </div>
                <div id="commentInput">
                    <span>
                    <input id="comment" type="text">
                        </span>
                    <span>
                    <button type="submit" id="commentBtn">댓글 입력</button>
                        </span>
                </div>
                <div id="comments">
                    <table>
                        <tr>
                            <td style="text-align: left; padding-left: 10px">닉네임</td>
                            <td style="text-align: left">댓글내용</td>
                            <td style="text-align: right; padding-right: 10px">삭제버튼 [X]</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
