<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<section id="admin" class="section">
	<div id="admin-header" class="container">
		<h1 class="title is-1 has-text-white">Administrator Panel</h1>
	</div>

	<div id="find-user-info" class="container">
		<!-- <div id="search-users" class="container">
			<h3 class="title is-3 has-text-white">Search Users</h3>

			<form method="GET" action="userSearch">
				<div class="field">
					<label class="label">Enter Username</label>
					<div class="control">
						<input class="input is-warning" type="text" placeholder="username">
					</div>
				</div>
				<div class="field">
					<div class="control">
						<input name="submit" type="submit" value="Find User"
							class="button is-warning">
					</div>
				</div>
			</form>

		</div> -->
		<!-- search-users container -->

		<%-- <div id="user-information" class="container">
			<h3 class="title is-3 has-text-white">User Information</h3>

			<table class="table">
				<tr>
					<th>Name</th>
					<th>email</th>
					<th>User Since</th>
				</tr>
				<tr>
					<td><c:out value="${user.userName}" /></td>
					<td><c:out value="${user.email}" /></td>
					<td><c:out value="${user.userSince}" /></td>
					<td><form class="form-inline" method="GET"
							action="deleteUser/${user.userName}">
							<input class="btn btn-default" name="delete" value="Delete" type="submit" />
						</form>
					</td>
				</tr>
			</table>
			
		</div> --%>

		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr5.jpg" /> 
			<span class="leader-start gene is-size-3">uberAmbrose</span> 
			<span class="leader-center leader-text">uber.ambrose@autonomous.com</span>
			<span class="leader-center leader-text">1000 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr6.jpg" /> 
			<span class="leader-start gene is-size-3">hellToTheNo</span> 
			<span class="leader-center leader-text">cuz@ipsatasaysso.com</span>
			<span class="leader-center leader-text">1350 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr3.jpg" /> 
			<span class="leader-start gene is-size-3">wyGonClick</span> 
			<span class="leader-center leader-text">te@hackyking.com</span>
			<span class="leader-center leader-text">400 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr9.jpg" /> 
			<span class="leader-start gene is-size-3">prescribedMedz</span> 
			<span class="leader-center leader-text">weteachjquery@pittsburgh.com</span>
			<span class="leader-center leader-text">125 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr8.jpg" /> 
			<span class="leader-start gene is-size-3">kaelinIt</span> 
			<span class="leader-center leader-text">dontgetit@twisted.com</span>
			<span class="leader-center leader-text">520 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr2.jpg" /> 
			<span class="leader-start gene is-size-3">ranDizzle</span> 
			<span class="leader-center leader-text">samyouel@jackson.com</span>
			<span class="leader-center leader-text">421 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr10.jpg" /> 
			<span class="leader-start gene is-size-3">stayTusned</span> 
			<span class="leader-center leader-text">trustthe@process.com</span>
			<span class="leader-center leader-text">215 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr7.jpg" /> 
			<span class="leader-start gene is-size-3">sarcAlex</span> 
			<span class="leader-center leader-text">notangry@justmyface.com</span>
			<span class="leader-center leader-text">780 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr4.jpg" /> 
			<span class="leader-start gene is-size-3">putTheEanTE</span> 
			<span class="leader-center leader-text">genes@myidea.com</span>
			<span class="leader-center leader-text">4350 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		
		<div id="admin-user" class="content had-background-warning">
			<img class="leader-start leader-pic" src="img/phldr.jpg" /> 
			<span class="leader-start gene is-size-3">fRum</span> 
			<span class="leader-center leader-text">cuzima@peopleperson.com</span>
			<span class="leader-center leader-text">.5 hours</span> 
			<span class="leader-center leader-text">
				<input type="submit" value="Deactivate" class="button is-warning"/>
			</span>
		</div>
		

		<!-- user-information container -->
	</div>
	<!-- search users container -->
</section>

<c:import url="/WEB-INF/jsp/footer.jsp" />