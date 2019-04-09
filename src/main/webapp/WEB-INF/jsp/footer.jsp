<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	</div>	<!-- content-container -->
</div>	<!-- wrapper (everything but footer) -->
	<footer>
		<p id = "footer-text-logo">GENE</p>
		<nav id = "footer-nav">
			<ul>
				<li><a class = "footer-nav-item"
						href = "<c:url value = "/home"/>">Home
					</a>
				</li>
				<li><a class = "footer-nav-item"
						href = "<c:url value = "/leaderboard"/>">Leaderboard
					</a>
				</li>
				<li><a class = "footer-nav-item"
						href = "<c:url value = "/shop"/>">Shop
					</a>
				</li>
			</ul>
		</nav>
		<p id = "copyright"><span id = "copyright-text-logo">GENE</span> &copy; 2019</p>
	</footer>
</body>
</html>