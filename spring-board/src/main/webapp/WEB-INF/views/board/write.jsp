<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Write</title>
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
								<center>WRITE</center>
							</h2>
						</header>
						<table width="100%" cellpadding="1" cellspacing="1" border="1">
							<form action="${path}/board/insert.do" method="post">
								<tr>
									<td>이름</td>
									<td><input type="text" name="b_name" size="60" required>
									</td>
								</tr>
								<tr>
									<td>제목</td>
									<td><input type="text" name="b_subject" size="60" required>
									</td>
								</tr>
								<tr>
									<td>내용</td>
									<td><textarea name="b_content" rows="10" required></textarea></td>
								</tr>
								<tr align="center">
									<td colspan="5"><input type="submit" value="등록">
										&nbsp;&nbsp; <a href=${path}/board/list.do>목록보기</a></td>
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