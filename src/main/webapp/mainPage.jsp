<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <link href="resources/static/css/nav.css" rel="stylesheet"/>
    <link href="resources/static/css/board.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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
            <img src="resources/static/img/gazee_logo.png" id="logo">
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
        <h3>메인페이지</h3>
    </div>


<div id="footer">
    <div>
        <p style="margin: 0; font-size: 12px;">Copyrightⓒ 2023. gazee. All rights reserved.</p>
    </div>
</div>
</body>
</html>