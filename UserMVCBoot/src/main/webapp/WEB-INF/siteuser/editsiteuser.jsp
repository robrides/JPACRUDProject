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
		<form:form class="form-control" action="saveSiteuser.do" method="POST" modelAttribute="siteuser">
			<form:label path="id">Id: ${siteuser.id }</form:label>
			<form:input path="id" type="hidden"/>
			<form:errors path="id" />
			<br />
			<form:label path="firstName">First Name: </form:label>
			<form:input path="firstName" />
			<form:errors path="firstName" />
			<form:label path="lastName">Last Name:</form:label>
			<form:input path="lastName" />
			<form:errors path="lastName" />
			<br />
			<form:label path="username">Username:</form:label>
			<form:input path="username" />
			<form:errors path="username" />
			<br />
			<form:label path="password">Password:</form:label>
			<form:input path="password" />
			<form:errors path="password" />
			<br />
			<form:label path="email">Email address:</form:label>
			<form:input path="email" />
			<form:errors path="email" />
			<br />
			<form:label path="accountStatus">Account Status:</form:label>
			<form:input path="accountStatus" />
			<form:errors path="accountStatus" />
			<br />
			<form:label path="jobTitle">Job Title:</form:label>
			<form:input path="jobTitle" />
			<form:errors path="jobTitle" />
			<br />
			<form:label path="salary">Salary:</form:label>
			<form:input path="salary" />
			<form:errors path="salary" />
			<br />
			<form:label path="numVisits">Number of visits:</form:label>
			<form:input path="numVisits" />
			<form:errors path="numVisits" />
			<br />
			<form:label path="userUrl">User URL:</form:label>
			<form:input path="userUrl" />
			<form:errors path="userUrl" />
			<br />
			<form:label path="userType">User Type:</form:label>
			<form:input path="userType" />
			<form:errors path="userType" />
			<br />
			<form:label path="lastLogin">Last Login:</form:label>
			<form:input path="lastLogin" />
			<form:errors path="lastLogin" />
			<br />
			<input type="submit" class="btn btn-primary" value="Save Changes">
		</form:form>
	</div>
	</div><br>
		<form class="btn btn-secondar" class="form-control" action="/" method="GET">
			<input type="submit" value="Home">
		</form>
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