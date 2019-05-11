<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" /> --%>
<meta charset="UTF-8">
<title>Boot MVC Site Users</title>
</head>
<body>
	<div class="container">
		<div class="form-group">
			<form class="btn btn-secondary" class="form-control" action="/"
				method="GET">
				<input type="submit" value="Home">
			</form>
			<form class="btn btn-secondary" class="form-control" action="addSiteuser.do"
				method="GET">
				<input type="submit" value="Add User">
			</form>
			<form class="btn btn-secondary" class="form-control"
				action="getSiteuser.do" method="GET">
				User ID: <input type="text" name="Suid" /> <input type="submit"
					class="btn btn-primary" value="Show User" />
			</form>
		<c:choose>
			<c:when test="${! empty siteuserList }">
					<h4>Site Users...</h4>
					<ul class="list-group">
					<c:forEach var="siteuser" items="${siteuserList}">
						<li class="list-group-item list-group-item-action">* <a
							href="getSiteuser.do?suid=${siteuser.id }">${siteuser.firstName } ${siteuser.lastName }</a></li>
					</c:forEach>
				</ul>
				<br>
			</c:when>
		</c:choose>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>