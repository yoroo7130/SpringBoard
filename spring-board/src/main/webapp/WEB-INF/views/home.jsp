<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
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
							<h1>
								Hi, I’m Editorial<br> by HTML5 UP
							</h1>
							<p>A free and fully responsive site template</p>
						</header>
						<p>Aenean ornare velit lacus, ac varius enim ullamcorper eu.
							Proin aliquam facilisis ante interdum congue. Integer mollis,
							nisl amet convallis, porttitor magna ullamcorper, amet egestas
							mauris. Ut magna finibus nisi nec lacinia. Nam maximus erat id
							euismod egestas. Pellentesque sapien ac quam. Lorem ipsum dolor
							sit nullam.</p>
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