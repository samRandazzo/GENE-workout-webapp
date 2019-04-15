<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/adminHeader.jsp" />

<h2><strong>Lookup User Info</strong></h2>
<form class="form-inline" method="GET" action="userSearch">
<input class="form-control" name="search" placeholder="Search">
<input class="btn btn-default" name="submit" value="Submit"
type="submit" />
</form>
<table class="table">

<tr>
    <th>Name</th>
    <th>email</th>
    <th>User Since</th>
</tr>
<tr>
    <td><c:out value="${user.userName}" /></td>
    <td><c:out value="${user.email}" /></td>
    <td><c:out value="${user.userSince}"/></td>
    <td><form class="form-inline" method="GET" action="deleteUser/${user.userName}">
            <input class="btn btn-default" name="delete" value="Delete" type="submit" />
        </form></td>
</tr>
</table>

<c:import url="/WEB-INF/jsp/footer.jsp" />