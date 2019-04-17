
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
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
    <section id="session-nav" class="hero is-dark is-medium">
  <!-- Hero head: will stick at the top -->
	  <div class="hero-head">
	    <nav class="navbar">
	      <div class="container">
	        <div class="navbar-brand">
	          <a class="navbar-item" href = "<c:url value = "/home"/>">
	          	<span class="gene is-size-1">GENE</span>
	          </a>
	          <span class="navbar-burger burger" data-target="navbarMenuHeroA">
	            <span></span>
	            <span></span>
	            <span></span>
	          </span>
	        </div>
	        <div id="navbarMenuHeroA" class="navbar-menu">
	          <div class="navbar-end">
	            <a class="navbar-item" href = "<c:url value = "/home"/>">Home</a>
	            <%-- <a class="navbar-item" href = "<c:url value = "partnerWithUs"/>">Partner With Us</a> --%>
	            <a class="navbar-item" href = "<c:url value = "leaderboard"/>">Leaderboard</a>
	            <a class="navbar-item" href = "<c:url value = "/shop"/>">Shop</a>
            	<a class="navbar-item" href = "<c:url value = "/profile"/>">
            		<img id = "nav-profile-pic" src = "img/phldr2.jpg"/>
            	</a>
           		<a id="session-nav-username" class="navbar-item gene is-size-4" href = "<c:url value = "/profile"/>">theBoss19</a>
           		<a class="navbar-item" href="<c:url value="logout"/>">Log Out</a>
	          </div>
	        </div>
	      </div>
	    </nav>
	  </div>
    </section>	<!-- HERO Header -->
    <div id = "content-container">