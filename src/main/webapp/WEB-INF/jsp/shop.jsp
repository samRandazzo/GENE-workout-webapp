<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose> 
<c:when test="${sessionScope.currentUser.userName == null}">
<c:import url="/WEB-INF/jsp/header.jsp" />
</c:when>
<c:otherwise>
<c:import url="/WEB-INF/jsp/sessionHeader.jsp" />
</c:otherwise>
</c:choose>



	<section id="main-content-list">
	
	
		<h1>Store Test</h1>

		
	</section>


<c:import url="/WEB-INF/jsp/footer.jsp" />