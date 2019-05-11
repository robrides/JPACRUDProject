<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Deleted</title>
</head>
<body>
	<c:choose>
		<c:when test="${ success == true }">
<h2>Success</h2>
</c:when>
		<c:otherwise>
<h2>Failed</h2>
</c:otherwise>
	</c:choose>
	<form class="btn btn-secondary" class="form-control" action="/"
		method="GET">
		<input type="submit" class="btn btn-primary" value="Home" />
	</form>
</body>
</html>