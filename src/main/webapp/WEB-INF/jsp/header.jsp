<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><c:out value="${pageTitle}"/>GENE. Workout. Donate.</title>
   	<link href = "CSS/style.css" rel="stylesheet" type="text/css">
   	<link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.css" rel="stylesheet" type="text/css">
</head>
<div id = "wrapper">
    <section id = "hero" class = "hero is-dark is-small">
    	<div class = "hero-body bottom-shadow">
    		<div class = "container">
    			<div class = "navbar-brand">
    				<a href="<c:url value="/"/>">
    					<img src = "img/logo.png" alt = "LogoPlaceholder">
    				</a>
    			</div>
    		</div>
    	</div>
   		<div class="hero-foot">
		    <nav id = "hero-nav" class="tabs is-fullwidth">
		      <div class="container">
		        <ul>
		          <li class = "nav-menu-items"><a href="<c:url value = "/home"/>">Home</a></li>
		          <li class = "nav-menu-items"><a href="<c:url value = "/leaderboard"/>">Leaderboard</a></li>
		          <li class = "nav-menu-items"><a href="<c:url value = "/donations"/>">Donations</a></li>
		          <li class = "nav-menu-items"><a href="<c:url value = "/shop"/>">Shop</a></li>
		        </ul>
		      </div>
		    </nav>
		</div>
    </section>	<!-- HERO Header -->
	<body>
    <div class="container">