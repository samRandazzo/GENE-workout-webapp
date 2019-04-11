<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="header.jsp">
	<jsp:param name="title" value="Product Detail View" />
</jsp:include>

	<section id="main-content-list">
		<h1>Toy Department</h1>

		<c:forEach var="product" items="${requestScope.productList}">
			<div class="product-div">
				<div class="product-img-detail">
					<img id="product-img"
						src="img/<c:out value="${product.imageName}"/>"
						alt="<c:out value="${product.imageName}"/>">

				</div>

				<div class="product-info-div">
					<h3>
						<c:out value="${product.name}" />
						<c:if test="${product.topSeller}">
							<span class="best-seller">Best Seller!</span>
						</c:if>

					</h3>
					<p>
						by
						<c:out value="${product.manufacturer}" />
					</p>
					<img class="product-rating-img"
						src="img/<fmt:formatNumber value="${product.averageRating}" pattern="#"/>-star.png" />
					<br class="product-br">
					<p class="price">
						Price: <span class="price"><fmt:formatNumber
								value="${product.price}" type="currency" /></span>
					</p>

					<p>
						<strong> Weight: </strong>
						<c:out value="${product.weightInLbs}" />
					</p>
					
				</div>
			</div>


		</c:forEach>
	</section>
<jsp:include page="footer.jsp" />