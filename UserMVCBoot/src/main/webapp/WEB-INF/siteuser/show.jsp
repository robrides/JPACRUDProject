<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<style type="text/css">
<%@ include file="/WEB-INF/css/styleregister.css" %>
</style>

<meta charset="UTF-8">
<title>Boot MVC Site Display</title>
</head>
<body>
	<div class="container" style="width: 24rem;">
		<div>
			<div class="list-group-item-heading"></div>
		</div>
		<div class="text-white text-center">
		<h2>Account Details</h2>
		</div>
		<div class="list-group-item-text" >
			<ul class="list-group">
				<li class="list-group-item"><h5>${siteuser.firstName}${' '}${siteuser.lastName}</h5></li>
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

	<form class="btn btn-primary btn-block" class="form-control"
		action="updateSiteuser.do" method="POST">

		<input type="hidden" name="suid" class="btn btn-primary btn-block"
			value="${siteuser.id}" /> <input type="submit"
			class="btn btn-primary btn-block" value="Update Account" />
	</form>
	<form class="btn btn-primary btn-block" class="form-control" action="/"
		method="GET">
		<input type="submit" class="btn btn-primary btn-block" value="Home" />
	</form>
	<c:if test="${siteuser.userType == 'Admin' }">
	<form class="btn btn-primary btn-block" class="form-control"
		action="register.do" method="GET">
		<input type="submit" class="btn btn-primary btn-block" value="Add User" />
	</form>
	<form class="btn btn-primary btn-block" class="form-control"
		action="deleteSiteuser.do" method="POST">

		<input type="hidden" name="suid" class="btn btn-primary btn-block btn-danger"
			value="${siteuser.id}" /> <input type="submit"
			class="btn btn-primary btn-block btn-danger" value="Delete User" />
	</form>
	</c:if>
	</div>

	<c:if test="${! empty error }">
		<h2>${error }</h2>
	</c:if>

	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>