<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>View</title>
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
								<center>VIEW</center>
							</h2>
						</header>
						<table width="100%" cellpadding="0" cellspacing="0" border="1">
							<form action="${path}/board/update.do" method="post">
								<input type="hidden" name="b_no" value="${dto.b_no}">
								<tr>
									<td>번호</td>
									<td>${dto.b_no}</td>
								</tr>
								<tr>
									<td>이름</td>
									<td><input type="text" name="b_name"
										value="${dto.b_name}"></td>
								</tr>
								<tr>
									<td>제목</td>
									<td><input type="text" name="b_subject"
										value="${dto.b_subject}"></td>
								</tr>
								<tr>
									<td>내용</td>
									<td><textarea rows="10" name="b_content">${dto.b_content}</textarea></td>
								</tr>
								<tr align="center">
									<td colspan="2"><input type="submit" value="수정">
										&nbsp;&nbsp; <a href="${path}/board/list.do?curPage=${curPage}">목록보기</a> &nbsp;&nbsp; <a
										href="${path}/board/delete.do?b_no=${dto.b_no}">삭제</a></td>
								</tr>
							</form>
						</table>
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