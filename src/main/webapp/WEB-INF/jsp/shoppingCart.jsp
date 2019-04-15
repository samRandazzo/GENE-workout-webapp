<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:choose> 
<c:when test="${sessionScope.currentUser.userName == null}">
<c:import url="/WEB-INF/jsp/header.jsp" />
</c:when>
<c:otherwise>
<c:import url="/WEB-INF/jsp/sessionHeader.jsp" />
</c:otherwise>
</c:choose>

<section class="centeredPanel">

	<H2>Shopping Cart</H2>
	
	<table class="shopping-cart">
 		<tr>
			<td></td>
			<td>Name</td>
			<td>Price</td>
			<td>Qty<td>
			<td>Total</td>
		</tr>
		<c:forEach var="shoppingCartItem" items="${shoppingCart}">
			<tr>
				<td>
					<c:url value="/img/${shoppingCartItem.value.product.imageName}" var="productImageUrl"/>
					<img src="${productImageUrl}"/>
				</td>
				<td>${shoppingCartItem.value.product.name}</td>
				<td><fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${shoppingCartItem.value.product.price}" /></td>
				<td>${shoppingCartItem.value.quantity}</td>
			</tr>
		</c:forEach>
	</table>
 
 </section>

<c:import url="/WEB-INF/jsp/footer.jsp" />
