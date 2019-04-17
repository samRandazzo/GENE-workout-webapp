<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

<section class="section">

	<H2>GENE Store</H2>

	<c:url value="/shoppingCart" var="shoppingCartUrl" />
	<a href="${shoppingCartUrl}">View Shopping Cart</a>

	<div class="products">
	
		<c:forEach var="product" items="${products}">
			<div class="product">
				<div class="product-image">
					<c:url value="/productDetail?id=${product.id}"
						var="productDetailUrl" />
					<c:url value="/img/${product.imageName}" var="productImageUrl" />
					<a href="${productDetailUrl}"> <img src="${filename.jpg}" />
					</a>
				</div>
				<div class="product-data">
					<p class="title">${product.name}</p>
					<p class="price">
						<fmt:formatNumber type="number" maxFractionDigits="4"
							value="${product.price}" />
					</p>
				</div>
			</div>
		</c:forEach>
		
	</div>

</section>
<c:import url="/WEB-INF/jsp/footer.jsp" />
