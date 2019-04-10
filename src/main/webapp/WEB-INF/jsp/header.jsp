<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><c:out value="${pageTitle}"/>GENE. Workout. Donate.</title>    
	<link href="https://fonts.googleapis.com/css?family=Black+Ops+One" rel="stylesheet">    
   	<link href = "css/style.css" rel="stylesheet" type="text/css">
   	<link href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.css" rel="stylesheet" type="text/css">
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
	               href = "<c:url value = "leaderboard"/>">
	              Leaderboard
	            </a>
	            <a class="navbar-item"
	               href = "<c:url value = "/shop"/>">
	              Shop
	            </a>
	            <span class="navbar-item">
	              <a href = "<c:url value = "profile"/>">
	              	<input type = "button" type = "submit" value = "Log In" class="button is-warning">
	              </a>
	              <input id = "login-username" class = "input is-small is-warning" type = "text" placeholder = "username"/>
	              <input id = "login-password" class = "input is-small is-warning" type = "password" placeholder = "password"/>
	            </span>
	            <a class="navbar-item"
	            	href = "<c:url value = "signUp"/>">
	              Sign Up
	            </a>
	          </div>
	        </div>
	      </div>
	    </nav>
	  </div>
    </section>	<!-- HERO Header -->
    <div id = "content-container">
    
    