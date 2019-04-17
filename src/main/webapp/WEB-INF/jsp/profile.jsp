<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:choose>
	<c:when test="${sessionScope.currentUser.userName == null}">
		<c:import url="/WEB-INF/jsp/header.jsp" />
	</c:when>
	<c:when test="${sessionScope.currentUser.userName == 'admin'}">
		<c:import url="/WEB-INF/jsp/adminHeader.jsp" />
	</c:when>
	<c:otherwise>
		<c:import url="/WEB-INF/jsp/sessionHeader.jsp" />
	</c:otherwise>
</c:choose>

<section id="profile">
	<div id="profile-header" class="container">
		<h1 class="gene is-size-1">${sessionScope.currentUser.userName}</h1>
	</div>

	<div id="profile-components" class="container">

		<div id="days-workout" class="container component">
			<h4 class="title is-4 has-text-white padding-10">DAY'S WORKOUT</h4>
			<ul>
				<li>1-mile Run</li>
				<li>20 Pull-Ups</li>
				<li>50 Push-Ups</li>
				<li>100 Squats</li>
				<li>1-mile Run</li>
			</ul>
		</div>

		<div id="charities" class="container component">
			<h4 class="title is-4 has-text-white padding-10">CHARITIES</h4>
			<!-- Radio button menu -->
			<form id="pick-foundation-radio" class="field is-grouped padding-10">
				<div class="control">
					<input type="radio" name="answer"> 
					<label class="radio">Green Beret Foundation</label>
				</div>
				<div class="control">
					<input type="radio" name="answer"> 
					<label class="radio">Navy Seal Foundation</label>
				</div>
				<div class="control">
					<input type="radio" name="answer"> 
					<label class="radio">Travis Manion Foundation</label>
				</div>
				<div class="control">
					<input type="radio" name="answer"> 
					<label class="radio">Children of Fallen Patriots</label>
				</div>
				<div class="control">
					<button type="submit" class="button is-warning">Donate</button>
				</div>
			</form>
			<!-- Dropdown menu -->
			<form id="pick-foundation-dd" class="padding-10">
				<div class="field has-addons">
					<div class="control is-expanded">
						<div class="select is-fullwidth">
							<select name="charity">
								<option value="GBF">Green Beret Foundation</option>
								<option value="NSF">Navy Seal Foundation</option>
								<option value="TMF">Travis Manion Foundation</option>
								<option value="CFP">Children of Fallen Patriots</option>
							</select>
						</div>
					</div>
					<div class="control">
						<button type="submit" class="button is-warning">Choose</button>
					</div>
				</div>
			</form>
		</div>

		<div id="dedication" class="container component">
			<h4 class="title is-4 has-text-white padding-10">DEDICATION</h4>
			<form id="dedicated-to" class="padding-10">
				<div class="field">
					<div class="control">
						<textarea class="textarea is-warning" placeholder="Warning textarea"></textarea>
					</div>
					<div class="control">
						<button type="submit" class="button is-warning">Dedicate</button>
					</div>
				</div>
			</form>
		</div>

		<div id="workout-time" class="container component">
			<h4 class="title is-4 has-text-white padding-10">WORKOUT TIME</h4>
			
			<c:url var="formAction" value="/profile" />
			<form:form id="pick-workout-time" class="padding-10" 
						action="${formAction}" path="profile" 
						method="post" modelAttribute="donation">
				<div class="control">
					<input type="radio" name="answer"> 
					<label class="radio">30 min.</label>
				</div>
				<div class="control">
					<input type="radio" name="answer"> 
					<label class="radio">45 min.</label>
				</div>
				<div class="control">
					<input type="radio" name="answer"> 
					<label class="radio">60 min.</label>
				</div>
				<div class="control">
					<button type="submit" class="button is-warning">Submit</button>
				</div>
			</form:form>
		</div>




		<%-- <div id="profile-components" class="container">
	<h2>Welcome, ${sessionScope.currentUser.userName}</h2>
	<p>Choose a Profile Picture</p>

	<input type="file" id="browse" name="fileupload" style="display: none"
		onChange="Handlechange();" />
	<input type="hidden" id="filename" readonly="true" />
	<input type="button" value="Upload" id="fakeBrowse"
		onclick="HandleBrowseClick();" /> --%>
		<!-- 
	<script>
		function HandleBrowseClick() {
			var fileinput = document.getElementById("browse");
			fileinput.click();
		}
		function Handlechange() {
			var fileinput = document.getElementById("browse");
			var textinput = document.getElementById("filename");
			textinput.value = fileinput.value;
		}
	</script>

	<div id="tile-wrapper" class="tile is-ancestor">
		<div class="tile is-parent">
			<article class="tile is-child box">
				<p class="title">W.O.D.</p>
				<p class="subtitle">
					1 mile run<br> 20 pull-ups<br> 50 push-ups<br> 100
					squats<br> 1 mile run<br>

					</head>
					<body>
						<div id="center">
							<div class="timer stopwatch"></div>
						</div>

						<script>
							let interval;
							const Stopwatch = function(elem, options) {
								let timer = createTimer(), startButton = createButton(
										"start", start), stopButton = createButton(
										"stop", stop), resetButton = createButton(
										"reset", reset), offset, clock, hrs = 0, min = 0;

								// default options
								options = options || {};
								options.delay = options.delay || 1;

								// append elements
								elem.appendChild(timer);
								elem.appendChild(startButton);
								elem.appendChild(stopButton);
								elem.appendChild(resetButton);

								// initialize
								reset();

								// private functions
								function createTimer() {
									return document.createElement("span");
								}

								function createButton(action, handler) {
									if (action !== "reset") {
										let a = document.createElement("a");
										a.href = "#" + action;
										a.innerHTML = action;
										a.addEventListener("click", function(
												event) {
											handler();
											event.preventDefault();
										});
										return a;
									} else if (action === "reset") {
										let a = document.createElement("a");
										a.href = "#" + action;
										a.innerHTML = action;
										a.addEventListener("click", function(
												event) {
											clean();
											event.preventDefault();
										});
										return a;
									}
								}

								function start() {
									if (!interval) {
										offset = Date.now();
										interval = setInterval(update,
												options.delay);
									}
								}

								function stop() {
									if (interval) {
										clearInterval(interval);
										interval = null;
									}
									console.log(interval);
								}

								function reset() {
									clock = 0;
									render(0);
								}

								function clean() {
									min = 0;
									hrs = 0;
									clock = 0;
									render(0);
								}

								function update() {
									clock += delta();
									render();
								}

								function render() {
									if (Math.floor(clock / 1000) === 60) {
										min++;
										reset();
										if (min === 60) {
											min = 0;
											hrs++;
										}
									}
									timer.innerHTML = hrs + " <p> hrs </p> "
											+ min + " <p> min </p> "
											+ Math.floor(clock / 1000)
											+ " <p> sec </p> ";
								}

								function delta() {
									var now = Date.now(), d = now - offset;

									offset = now;
									return d;
								}
							};

							// Initiating the Stopwatch
							var elems = document
									.getElementsByClassName("timer");

							for (var i = 0, len = elems.length; i < len; i++) {
								new Stopwatch(elems[i]);
								when()
							}

							//message for donations
						</script>
				</p>

			</article>
		</div>



		<div class="tile is-parent">
			<article class="tile is-child box">
				<p class="title">CHARITY OF CHOICE</p>
				<div class="charity">
					<label class="radio1"> <input type="radio" name="hour">
						Green Beret Foundation
					</label> <label class="radio"> <input type="radio" name="hour">
						Navy Seal Foundation
					</label><br> <input type="radio" name="hour"> Travis Manion
					Foundation </label><br> <input type="radio" name="hour">
					Children of Fallen Patriots </label><br>

				</div>
			</article>
		</div>
		
		<div class="tile is-parent">
			<article class="tile is-child box">
				<p class="title">Who's this workout for?</p>
				<p class="subtitle"></p>
				<textarea class="textarea"
					placeholder="e.g. My dad who served x number of years"></textarea>

				<div class="content">
					<p></p>
				</div>
			</article>
		</div>

		<div class="tile is-parent">
			<article class="tile is-child box">
				<p class="title">Input your Time(round up!)</p>
				<p class="subtitle"></p>
				<div class="control">
					<label class="radio"> <input type="radio" name="thirty">
						30 Minutes
					</label> <label class="radio"> <input type="radio" name="hour"
						checked> 1 Hour
					</label><br> <input type="submit">

				</div>
		</div>
	</div> -->

	</div>
	<!-- profile-components -->
</section>
<!-- profile -->

<c:import url="/WEB-INF/jsp/footer.jsp" />
