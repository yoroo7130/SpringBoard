<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
h2 {
	text-align: center;
}

table {
	width: 100%;
}

#outter {
	display: block;
	width: 80%;
	margin: auto;
}

a {
	text-decoration: none;
}
</style>
<script>
	function list(page) {
		location.href = "${path}/board/list.do?curPage=" + page;
	}
</script>
<title>Board</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="resources/css/main.css" />
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="${path}/board/" class="logo"><strong>HOME</strong></a>
				</header>

				<!-- Banner -->
				<section id="banner">
					<div class="content">
						<header>
							<h2>
								<center>BOARD</center>
							</h2>
						</header>
						<div id="outter">
							<table border="1">
								<tr>
									<td>번호</td>
									<td width="50%">제목</td>
									<td>작성자</td>
									<td>등록일</td>
								</tr>
								<c:forEach var="row" items="${map.list}">
									<tr>
										<td>${row.b_no}</td>
										<td><a href='${path}/board/view.do?b_no=${row.b_no}&curPage=${map.boardPager.curPage}'>${row.b_subject}</a></td>
										<td>${row.b_name}</td>
										<td><fmt:formatDate value="${row.b_date}"
												pattern="yyyy.MM.dd" /></td>
									</tr>
								</c:forEach>
							</table>
							<input type="button" value="글쓰기" style="float: right;"
								onclick="location.href='${path}/board/write.do'"><br>

							<div style="display: block; text-align: center;">
								<!-- 페이징 -->
								<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
								<c:if test="${map.boardPager.curBlock > 1}">
									<a href="javascript:list('1')">[처음]</a>
								</c:if>
								<!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
								<c:if test="${map.boardPager.curBlock > 1}">
									<a href="javascript:list('${map.boardPager.prevPage}')">[이전]</a>
								</c:if>
								<!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 -->
								<c:forEach var="num" begin="${map.boardPager.blockBegin}"
									end="${map.boardPager.blockEnd}">
									<!-- 현재페이지이면 하이퍼링크 제거 -->
									<c:choose>
										<c:when test="${num == map.boardPager.curPage}">
											<span style="color: red">${num}</span>&nbsp;
										</c:when>
										<c:otherwise>
											<a href="javascript:list('${num}')">${num}</a>&nbsp;
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
								<c:if
									test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
									<a href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
								</c:if>
								<!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
								<c:if test="${map.boardPager.curPage <= map.boardPager.totPage}">
									<a href="javascript:list('${map.boardPager.totPage}')">[끝]</a>
								</c:if>
								<!-- 페이징 -->
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">
				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>
						<li><a href="${path}/board/list.do">Board</a></li>
					</ul>
				</nav>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						© Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>
			</div>
		</div>

	</div>

	<!-- Scripts -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/browser.min.js"></script>
	<script src="resources/js/breakpoints.min.js"></script>
	<script src="resources/js/util.js"></script>
	<script src="resources/js/main.js"></script>

</body>
</html>