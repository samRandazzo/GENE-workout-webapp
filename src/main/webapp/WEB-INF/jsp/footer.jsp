<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	</div>	<!-- content-container -->
</div>	<!-- wrapper (everything but footer) -->
	<footer>
		<p class = "gene is-size-3">GENE</p>
		<nav id = "footer-nav">
			<ul>
				<li>
					<a class = "footer-nav-item"
						href = "<c:url value = "/home"/>">Home
					</a>
				</li>
				<li>
				<li>
					<a class = "footer-nav-item"
						href = "<c:url value = "/community"/>">Community
					</a>
				</li>
				<li>
				<li>
					<a class = "footer-nav-item"
						href = "<c:url value = "/howItWorks"/>">How it works
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