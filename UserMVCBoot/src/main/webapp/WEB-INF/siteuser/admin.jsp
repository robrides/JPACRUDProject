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
<title>Boot MVC Site Register</title>
</head>
<body>
	<div class="container" style="width: 24rem;">
		<div class="card bg-light" style="width: 24rem;">
			<article class="card-body mx-auto" style="max-width: 500px;">
				<h4 class="card-title mt-3 text-center">
				<c:if test="${! empty error }">
					${error }
					<br><br>				
				</c:if>			
				Site Users</h4>
				<div class="form-group">
					<form action="/" method="GET">
						<input class="btn btn-primary btn-block" type="submit"
							value="Home">
					</form>
				</div>
				<div class="form-group">
					<form action="registeradmin.do" method="GET">
						<input class="btn btn-primary btn-block" type="submit"
							value="Add User">
					</form>
				</div>
				<c:if test="${! empty siteuserList }">
					<div class="form-group input-group">

						<form class="btn btn-secondary" class="form-control"
							action="getSiteuser.do" method="GET">
							User ID: <input type="text" name="suid" /> <input type="submit"
								class="btn btn-primary btn-block" value="Show User" />
						</form>
					</div>
					<ul class="list-group">
						<c:forEach var="siteuser" items="${siteuserList}">
							<li class="list-group-item list-group-item-action"><a
								href="getSiteuser.do?suid=${siteuser.id }">${siteuser.firstName }
									${siteuser.lastName }</a></li>
						</c:forEach>
					</ul>
					<br>
				</c:if>
			</article>
		</div>
	</div>
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