<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:choose>
	<c:when test="${sessionScope.currentUser.userName == null}">
		<c:import url="/WEB-INF/jsp/header.jsp" />
	</c:when>
	<c:otherwise>
		<c:import url="/WEB-INF/jsp/sessionHeader.jsp" />
	</c:otherwise>
</c:choose>

<section id="leaderboard" class="section">
<!-- eventual leaderboard entries would be generated dynamically from DB -->	
	<div class="container">
		<h1 class="title is-1 has-text-white">Leaderboard</h1>
		
		<div id="leader" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr5.jpg"></img>
			<span class="leader-start gene is-size-3">uberAmbrose</span>
			<span class="leader-center leader-text">
				<a href="https://www.navysealfoundation.org/" target="_blank">Navy Seal Foundation</a>
			</span>
			<span class="leader-center leader-text">530 hours</span>
			<span class="leader-start leader-text">$265.00</span>
		</div>
		<div id="leader" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr4.jpg"></img>
			<span class="leader-start gene is-size-3">hibbyDibbidy</span>
			<span class="leader-center leader-text">
				<a href="https://www.greenberetfoundation.org/" target="_blank">Green Beret Foundation</a>
			</span>
			<span class="leader-center leader-text">1000 hours</span>
			<span class="leader-start leader-text">$500.00</span>
		</div>
		<div id="leader" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr3.jpg"></img>
			<span class="leader-start gene is-size-3">wyGonClick</span>
			<span class="leader-center leader-text">
				<a href="https://www.fallenpatriots.org/" target="_blank">Children of Fallen Patriots</a>
			</span>
			<span class="leader-center leader-text">250 hours</span>
			<span class="leader-start leader-text">$125.00</span>
		</div>
		<div id="leader" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr2.jpg"></img>
			<span class="leader-start gene is-size-3">samRanDizzle</span>
			<span class="leader-center leader-text">
				<a href="https://www.travismanion.org/" target="_blank">Travis Manion Foundation</a>
			</span>
			<span class="leader-center leader-text">1000 hours</span>
			<span class="leader-start leader-text">$500.00</span>
		</div>
	</div>
</section>

<c:import url="/WEB-INF/jsp/footer.jsp" />