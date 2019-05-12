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
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css" /> --%>
<meta charset="UTF-8">
<title>Show User</title>
</head>
<body>
	<div class="container">
		<div>
			<div class="list-group-item-heading">
				<h5>${siteuser.firstName}${' '}${siteuser.lastName}</h5>
			</div>
			<div class="list-group-item-text">
				<ul class="list-group">
					<li class="list-group-item">User Type: ${siteuser.userType}</li>
					<li class="list-group-item">Username: ${siteuser.username}</li>
					<li class="list-group-item">Email: ${siteuser.email}</li>
					<li class="list-group-item">Password: ${siteuser.password}</li>
					<li class="list-group-item">Account status:
						${siteuser.accountStatus}</li>
					<li class="list-group-item">Job Title: ${siteuser.jobTitle}</li>
					<li class="list-group-item">Salary: ${siteuser.salary}</li>
					<li class="list-group-item">Number of visits:
						${siteuser.numVisits}</li>
					<li class="list-group-item"><a href="${siteuser.userUrl}">${siteuser.firstName }'s
							site</a></li>
					<li class="list-group-item">Last Login: ${siteuser.lastLogin}</li>
				</ul>
			</div>
		</div>
		<form class="btn btn-secondary" class="form-control"
			action="updateSiteuser.do" method="POST">

			<input type="hidden" name="suid" class="btn btn-primary"
				value="${siteuser.id}" /> <input type="submit"
				class="btn btn-primary" value="Update User" />
		</form>
		<form class="btn btn-secondary" class="form-control" action="/"
			method="GET">
			<input type="submit" class="btn btn-primary" value="Home" />
		</form>
		<form class="btn btn-secondary" class="form-control"
			action="register.do" method="GET">
			<input type="submit" class="btn btn-primary" value="Add User" />
		</form>
		<p>
		<form class="btn btn-secondary" class="form-control"
			action="deleteSiteuser.do" method="POST">

			<input type="hidden" name="suid" class="btn btn-danger"
				value="${siteuser.id}" /> <input type="submit"
				class="btn btn-primary" value="Delete User" />
		</form>

		<c:if test="${! empty error }">
			<h2>${error }</h2>
		</c:if>
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