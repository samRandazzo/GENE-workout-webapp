<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="/WEB-INF/jsp/header.jsp" />


<h2>New User Sign Up</h2>
<br>
<!--  
<script type="text/javascript">
	$(document).ready(function () {
		$.validator.addMethod('capitals', function(thing){
			return thing.match(/[A-Z]/);
		});
		$("form").validate({
			
			rules : {
				userName : {
					required : true
				},
				password : {
					required : true,
					minlength: 15,
					capitals: true,
				},
				confirmPassword : {
					required : true,		
					equalTo : "#password"  
				}
			},
			messages : {			
				password: {
					minlength: "Password too short, make it at least 15 characters",
					capitals: "Field must contain a capital letter",
				},
				confirmPassword : {
					equalTo : "Passwords do not match"
				}
			},
			errorClass : "error"
		});
	});
</script>
-->

<c:url var="formAction" value="/signUp" />
<form:form method="POST" action="${formAction}" modelAttribute="user">
<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<div class="form-group">
			<div class="user-exists">
				<h2>${message}</h2>
				</div>
				<form:label path="userName">User Name: </form:label>
				<form:input path="userName" id="userName" name="userName" placeHolder="User Name" class="form-control" />
				<form:errors path="userName" cssClass="error"/>
			</div><br>
			<div class="form-group">
				<form:label path="password">Password: </form:label>
				<form:input path="password" id="password" name="password" placeHolder="Password" class="form-control" type="password" />
				<form:errors path="password" cssClass="error"/>
			</div><br>
			<div class="form-group">
				<form:label path="confirmPassword">Confirm Password: </form:label>
				<form:input path="confirmPassword" id="confirmPassword" name="confirmPassword" placeHolder="Re-Type Password" class="form-control" type="password" />
				<form:errors path="confirmPassword" cssClass="error"/>	
			</div><br>
			<!--  <div class="form-group">
				<label for="veteranStatus">Are you a veteran?</label>
					<p>
					<input type="radio" name="yes_no" checked>Yes</input>
					<input type="radio" name="yes_no">No</input>
					</p>
			</div><br>-->
				<div class="form-group">
				<form:label path="email">Email: </form:label>
				<form:input path="email" id="email" name="email" placeHolder="Email" class="form-control"/>
				<form:errors path="email" cssClass="error"/>	
			</div><br>
				<div class="form-group">
				<form:label path="confirmEmail">Confirm Email: </form:label>
				<form:input path="confirmEmail" id="confirmEmail" name="confirmEmail" placeHolder="Re-Type Email" class="form-control"/>
				<form:errors path="confirmEmail" cssClass="error"/>	
			</div><br>
			
			
			<button type="submit" class="btn btn-primary">Create User</button>
		</div><br>
		<div class="col-sm-4"></div>
	</div>
</form:form>
		
<c:import url="/WEB-INF/jsp/footer.jsp" />