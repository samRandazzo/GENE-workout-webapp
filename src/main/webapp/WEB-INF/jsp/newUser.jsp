<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="/WEB-INF/jsp/header.jsp" />

<section id = "sign-up-form" class = "section">
	<div class = "container">
		<h1 class="title">New User Sign Up</h1>

		<c:url var="formAction" value="/signUp" />
		<form:form method="POST" action="${formAction}" modelAttribute="user">
		<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
		
		<h2>${message}</h2>
			
		<div class = "field">
			<label class = "label is-warning">User Name (between 5 - 32 letters)</label>
			<div class = "control">
				<form:input class = "input is-warning form-control" path="userName" 
							id="userName" name="userName" type = "text"/>
			</div>
				<form:errors path="userName" cssClass="error"/>
		</div>
			
		<div class="field">
			<label class = "label is-warning">Password (1 upper, 1 lower, min 10)</label>
			<div class = "control">
				<form:input class = "input is-warning form-control" path="password" 
							id="password" name="password" type="password"/>
			</div>
				<form:errors path="password" cssClass="error"/>
		</div>
		
		<div class="field">
			<label class = "label is-warning">Confirm Password</label>
			<div class = "control">
				<form:input class = "input is-warning form-control" path="confirmPassword" 
							id="confirmPassword" name="confirmPassword" type="password" />
			</div>
			<form:errors path="confirmPassword" cssClass="error"/>	
		</div>
			<!--  <div class="form-group">
				<label for="veteranStatus">Are you a veteran?</label>
					<p>
					<input type="radio" name="yes_no" checked>Yes</input>
					<input type="radio" name="yes_no">No</input>
					</p>
			</div><br>-->
		<div class="field">
			<label class = "label is-warning">Email</label>
			<div class = "control">
				<form:input class = "input is-warning form-control" path="email" 
							id="email" name="email" type="email" />
			</div>
			<form:errors path="email" cssClass="error"/>	
		</div>
		
		<div class="field">
			<label class = "label is-warning">Confirm Email</label>
			<div class = "control">
				<form:input class = "input is-warning form-control" path="confirmEmail" 
							id="confirmEmail" name="confirmEmail" type="email" />
			</div>
			<form:errors path="email" cssClass="error"/>	
		</div>
		
		<div class="field">
			<div class="control">
				<input type = "submit" value = "Submit" class="button is-warning">
			</div>
		</div>
		<!-- </div><br>
		<div class="col-sm-4"></div>
	</div> -->
		</form:form>
	</div>	<!-- container class -->
</section>		
<c:import url="/WEB-INF/jsp/footer.jsp" />