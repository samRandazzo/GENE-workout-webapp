<<<<<<< HEAD
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
=======
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
>>>>>>> bcabda48991679b82b36213f70cf7413b7908059

<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><c:out value="${pageTitle}"/>GENE. Workout. Donate.</title>    
	<link href="https://fonts.googleapis.com/css?family=Black+Ops+One" rel="stylesheet">    
   	<link href = "css/style.css" rel="stylesheet" type="text/css">
   	<link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.css" rel="stylesheet" type="text/css">
   	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.4/dist/css/bulma-carousel.min.css">
</head>
<body>
<div id = "wrapper">
    <section class="hero is-dark is-medium">
  <!-- Hero head: will stick at the top -->
	  <div class="hero-head">
	    <nav class="navbar">
	      <div class="container">
	        <div class="navbar-brand">
	          <a class="navbar-item"
	          	 href = "<c:url value = "/home"/>">
	          	<span id = "text-logo">GENE</span>
	            <!--<img src="img/placeholder.png" alt="GENE">-->
	          </a>
	          <span class="navbar-burger burger" data-target="navbarMenuHeroA">
	            <span></span>
	            <span></span>
	            <span></span>
	          </span>
	        </div>
	        <div id="navbarMenuHeroA" class="navbar-menu">
	          <div class="navbar-end">
	            <a class="navbar-item"
	               href = "<c:url value = "/home"/>">
	              Home
	            </a>
	             <a class="navbar-item"
	               href = "<c:url value = "community"/>">
	              Community 
	            </a>
	            <a class="navbar-item"
	               href = "<c:url value = "leaderboard"/>">
	              Leaderboard
	            </a>
	            <a class="navbar-item"
	               href = "<c:url value = "/shop"/>">
	              Shop
	            </a>
	          <%--     <a class="navbar-item"
	               href = "<c:url value = "podcast"/>">
	              Podcast 
	            </a> --%>
	            <div id = "profile-banner" class = "navbar-item">
	            	<img id = "nav-profile-pic" src = "img/theBoss.jpg"></img>
	            	<span class = "nav-profile-username">theBoss19</span>	            
	            </div>
	          </div>
	        </div>
	      </div>
	    </nav>
	  </div>
    </section>	<!-- HERO Header -->
    <div id = "content-container">
=======
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><c:out value="${pageTitle}" />GENE. Workout. Donate.</title>
<link href="https://fonts.googleapis.com/css?family=Black+Ops+One"
	rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.4/dist/css/bulma-carousel.min.css">
</head>
<body>
	<div id="wrapper">
		<section class="hero is-dark is-medium">
			<!-- Hero head: will stick at the top -->
			<div class="hero-head">
				<nav class="navbar">
					<div class="container">
						<div class="navbar-brand">
							<a class="navbar-item" href="<c:url value = "/home"/>"> <span
								id="text-logo">GENE</span> <!--<img src="img/placeholder.png" alt="GENE">-->
							</a> <span class="navbar-burger burger" data-target="navbarMenuHeroA">
								<span></span> <span></span> <span></span>
							</span>
						</div>
						<div id="navbarMenuHeroA" class="navbar-menu">
							<div class="navbar-end">
								<a class="navbar-item" href="<c:url value = "/home"/>"> Home
								</a> <a class="navbar-item" href="<c:url value = "community"/>">
									Community </a> <a class="navbar-item"
									href="<c:url value = "leaderboard"/>"> Leaderboard </a> <a
									class="navbar-item" href="<c:url value = "/shop"/>"> Shop </a>
								<%-- <a class="navbar-item"
href = "<c:url value = "podcast"/>">
Podcast
</a> --%>
								<div id="profile-banner" class="navbar-item">
									<img id="nav-profile-pic" src="img/dollaSign.jpg"></img> <span
										class="nav-profile-username">theBoss19</span>
								</div>
								<a class="navbar-item" href="<c:url value="logout"/>">Log Out</a>
								
							</div>
						</div>
					</div>
				</nav>
			</div>
		</section>
		<!-- HERO Header -->
		<div id="content-container">
>>>>>>> bcabda48991679b82b36213f70cf7413b7908059
