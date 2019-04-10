<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	</div>	<!-- content-container -->
</div>	<!-- wrapper (everything but footer) -->
	<footer>
		<p id = "footer-text-logo">GENE</p>
		<nav id = "footer-nav">
			<ul>
				<li>
					<a class = "footer-nav-item"
						href = "<c:url value = "/home"/>">Home
					</a>
				</li>
				<li>
					<a class = "footer-nav-item"
						href = "<c:url value = "/leaderboard"/>">Leaderboard
					</a>
				</li>
				<li>
					<a class = "footer-nav-item"
						href = "<c:url value = "/shop"/>">Shop
					</a>
				</li>
			</ul>
		</nav>
		<p id = "copyright"><span id = "copyright-text-logo">GENE</span> &copy; 2019 | All Rights Reserved</p>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.4/dist/js/bulma-carousel.min.js"></script>
		<script>
		bulmaCarousel.attach('#carousel-demo', {
			slidesToScroll: 1,
			slidesToShow: 1,
			loop: true,
			navigation: false,
			navigationKeys: false,
			autoplay: true,
			autoplaySpeed: 4000
		});
		</script>
</body>
</html>