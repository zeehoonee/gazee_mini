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
        <div id="board">
            <div class="topBar">
                <span id="topBarTitle">
                커뮤니티
            </span>
            </div>
            <div id="articleFrame">
                <div id="article">
                    <table>
                        <thead>
                        <tr>
                            <th width="50">#</th>
                            <th width="500">제목</th>
                            <th width="100">작성자</th>
                            <th width="180">날짜</th>
                            <th width="70">조회수</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="bag">
                            <tr>
                                <td>${bag.no}</td>
                                <td><a href="oneMain?id=${bag.no}">${bag.title}</a></td>
                                <td>${bag.memId}</td>
                                <td>${bag.date}</td>
                                <td>${bag.view}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="indicatorBar">
                    <span id="void" style="width: 70px; height: 40px"></span>
                    <span id="indicator">
                        <ul class="pagination" style="text-align: center;">
                            <li class="page-item"><a class="page-link" href="#">Prev</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item"><a class="page-link" href="#">6</a></li>
                            <li class="page-item"><a class="page-link" href="#">7</a></li>
                            <li class="page-item"><a class="page-link" href="#">8</a></li>
                            <li class="page-item"><a class="page-link" href="#">9</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                         </ul>
                    </span>
                    <span id="writeBtn">
                        <button id="write">
                            <a href="writeMain.jsp">글쓰기</a>
                        </button>
                    </span>
                </div>

                <span id="searchBar">
                <input id="searchInput" type="text" placeholder="커뮤니티 내에서 검색"
                       style="padding: 5px 18px; line-height: 25px; font-size: 15px">
                    <button type="submit" id="searchBtn"><img src="resources/static/img/search.png" height="39px"
                                                              width="39px"></button>
            </span>
            </div>
        </div>
    </div>
</div>


<div id="footer">
    <div>
        <p style="margin: 0; font-size: 12px;">Copyrightⓒ 2023. gazee. All rights reserved.</p>
    </div>
</div>
</body>
</html>