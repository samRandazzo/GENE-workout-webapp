<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${sessionScope.currentUser.userName == null}">
		<c:import url="/WEB-INF/jsp/header.jsp" />
	</c:when>
	<c:otherwise>
		<c:import url="/WEB-INF/jsp/sessionHeader.jsp" />
	</c:otherwise>
</c:choose>

<section id="about-us" class = "section">
	<div class="container">
		<h1 class="title is-1 has-text-white"><span>YOU</span> Workout. <span>SPONSORS</span> Donate. 3 easy steps:</h1>
		<div class = "content">
			<h3 class="title is-3 has-text-warning">Sign Up</h3>			
			<p class = "is-size-4">Click the <span class = "gene">SIGN UP</span> link in the navigation menu,
			   						fill out the form, submit, and that's it!</p>
		
			<h3 class="title is-3 has-text-warning">Workout and Record</h3>
			<p class = "is-size-4">Given our military roots, we work on the honor system here.
								  	When you complete a workout, log it in your profile.</p>
		
			<h3 class="title is-3 has-text-warning">Donate</h3>
			<p class = "is-size-4">Every month, your sponsor will make a donation on your behalf to
								  	your foundation of choice.</p>			
		</div>	<!-- content -->
	</div>	<!-- container -->
</section>
	<!--  
			<p>This is the first fitness app that gives you the user real incentives to help those in need. We need to be 
			more accountable for the way our veterans are being treated. All you need to do is pick an organization to donate
 			to and spend one hour working out. Then, a specified amount 
 			is donated in your name by one of our partners. We are going to end the homeless veteran epidemic. </p> -->
	
		<!-- <section class = "section">
	<div class = "container">
		<h1 class = "title">How it Works</h1>
		<h2 class = "subtitle">YOU Workout. WE Donate. <span id = "sub-title-logo">GENE</span></h2>
		<p>SET UP A PROFILE </p>
		<p>DO THE WORKOUT OF THE DAY </p>
		<p>ONCE COMPLETED WE DONATE $$$ TO A VETERAN ORGANIZATION</p>
		<p>REPEAT TOMORROW</p> -->
		<!-- ======= -->
		<!-- <section id = "about-us" class = "section">
	<div class = "container">
		<h1 class = "title">YOU Workout. WE Donate.</h1>
		<p>Step 1. Create an Account 
		Step 2. Pick a Veteran organization for us to Donate to 
		Step 3. Do the Workout of the Day
		Step 4. Watch the fund increase
		Step 5. Repeat steps 2-5
>>>>>>> bcabda48991679b82b36213f70cf7413b7908059
	</div>
</section> -->
		<!-- <section id = "carousel" class="section">
	<div class="container">
		Start Carousel
		<div id="carousel-demo" class="carousel autoplay">
			<div class="item-1 carousel-item">
				<img src = "img/phbr1.jpg">
			</div>
			<div class="item-2 carousel-item">
				<img src = "img/phbr2.jpg">
			</div>
			<div class="item-3 carousel-item">
				<img src = "img/phbr3.jpg">
			</div>
		</div>
		End Carousel
	</div>
</section> -->

<section id="contact-form" class="section">
	<div class="container">
		<h1 class="title is-1 has-text-white">Contact Us</h1>
		<div class="field">
			<label class="label">Name</label>
			<div class="control">
				<input class="input is-warning" type="text" placeholder="Name">
			</div>
		</div>
		<div class="field">
			<label class="label">Email</label>
			<div class="control">
				<input class="input is-warning" type="email" placeholder="Email address">
			</div>
		</div>
		<div class="field">
			<label class="label">Subject</label>
			<div class="control">
				<input class="input is-warning" type="text" placeholder="Subject">
			</div>
		</div>
		<div class="field">
			<label class="label">Message</label>
			<div class="control">
				<textarea class = "textarea is-warning" type = "text" placeholder="Message"></textarea>
			</div>
		</div>
		<div class="field">
			<div class="control">
				<input type = "submit" value = "Submit" class="button is-warning">
			</div>
		</div>
	</div>
</section>

<c:import url="/WEB-INF/jsp/footer.jsp" />