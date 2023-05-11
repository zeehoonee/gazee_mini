<%@ page import="com.multi.gazee.CommunityMainVO" %>
<%@ page import="com.multi.gazee.CommunityMainDAO" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<% CommunityMainVO main = new CommunityMainVO();%>
<!DOCTYPE html>
<html>
<head>
    <link href="../../resources/static/css/nav.css" rel="stylesheet"/>
    <link href="../../resources/static/css/write.css" rel="stylesheet"/>
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
            <div class="topBar">
                <div id="topBarTitle">
                    글수정
                </div>
            </div>
            <form action="updateMain" method="get">
            <span id="title" style="display: flex">
                <input name="title" type="text" value="${bag.title}" id="titleInput">
               <%-- <input name="memId" type="text" placeholder="멤버아이디 테스트" id="memberIdTest">--%>
                    <button type="submit" id="tempSave">임시저장</button>
            </span>
                <div id="contentInput">
                    <textarea name="content" id="bbsContent" required>${bag.content}</textarea>
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
                                if(confirm("글 작성을 취소하시겠습니까? 저장하지 않은 내용은 삭제됩니다.")) {
                                    location.href="community"
                                }
                            }
                        </script>
                        <input type="hidden" name="no" value="${bag.no}">
                        <button type="submit" class="cancelSubmit" id="submit">수정하기</button>
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