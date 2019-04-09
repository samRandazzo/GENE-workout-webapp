<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<section class = "section">
	<div class = "container">
		<h1 class = "title">About Us</h1>
		<h2 class = "subtitle">Workout. Donate. <span id = "sub-title-logo">GENE</span></h2>
		<p>Maecenas a diam semper mauris luctus volutpat. Pellentesque ac orci erat. Sed id lacus nunc. 
		Donec justo erat, aliquet a enim vitae, consequat venenatis nunc. Maecenas ut molestie tortor. 
		Ut eget turpis mi. Mauris luctus lectus et luctus scelerisque. Nulla a ligula convallis, suscipit 
		quam non, mollis quam. Nam eu facilisis massa, non hendrerit tellus. Sed sed nunc ligula. Donec vitae 
		diam ut sapien interdum tempus. Vivamus quis suscipit augue. Quisque egestas aliquam convallis. 
		Aliquam sed congue purus. </p>
	</div>
</section>

<section id = "carousel" class="section">
	<div class="container">
		<!-- Start Carousel -->
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
		<!-- End Carousel -->
	</div>
</section>

<section id = "contact-form" class = "section">
	<div class = "container">
		<h1 class = "title">Contact Us</h1>
		<div class = "field">
			<label class = "label">Name</label>
			<div class = "control">
				<input class = "input is-warning" type = "text" placeholder = "Name">
			</div>
		</div>
		<div class = "field">
			<label class = "label">Email</label>
			<div class = "control">
				<input class = "input is-warning" type = "email" placeholder = "Email address">
			</div>
		</div>
		<div class = "field">
			<label class = "label">Subject</label>
			<div class = "control">
				<input class = "input is-warning" type = "text" placeholder = "Subject">
			</div>
		</div>
		<div class = "field">
			<label class = "label">Message</label>
			<div class = "control">
				<textarea class = "textarea is-warning" type = "text" placeholder = "Message"></textarea>
			</div>
		</div>
	</div>
</section>

<c:import url="/WEB-INF/jsp/footer.jsp" />