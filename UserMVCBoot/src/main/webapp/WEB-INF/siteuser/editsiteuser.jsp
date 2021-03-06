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
			<article class="card-body mx-auto" style="max-width: 350px;">
				<h4 class="card-title mt-3 text-center">Update Account</h4>
				<c:if test="${! empty error }">
					<h5>${error }</h5>
				</c:if>
				<form:form action="saveSiteuser.do" method="POST"
					modelAttribute="siteuser">			
					<form:input type="hidden" path="id" name="Id" value="${ siteuser.id }" />
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i
								class="fa fa-user-circle"></i>
							</span>
						</div>
						<form:input path="firstName" name="" class="form-control"
							placeholder="First name" type="text" />
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i
								class="fa fa-user-circle"></i>
							</span>
						</div>
						<form:input path="lastName" name="" class="form-control"
							placeholder="Last name" type="text" />
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i
								class="fa fa-user-circle"></i>
							</span>
						</div>
						<form:input path="username" name="" class="form-control"
							placeholder="Username" type="text" />
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i
								class="fa fa-envelope-open"></i>
							</span>
						</div>
						<form:input path="email" name="" class="form-control"
							placeholder="Email address" type="email" />
					</div>
					<!-- form-group// -->

					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-building"></i>
							</span>
						</div>
						<form:select path="jobTitle" class="form-control" 
							value="Select...">
							<option selected>${siteuser.jobTitle }</option>
							<option>Software Engineer</option>
							<option>Database
								Administrator</option>
							<option>System
								Administrator</option>
							<option>Accounting</option>
							<option>Designer</option>
							<option>Manager</option>
							<option>Chief Executive
								Officer</option>
							<option>other</option>
						</form:select>
					</div>
					<!-- form-group end.// -->

					<input type="hidden" name="accountStatus" value="<c:out value="${siteuser.accountStatus }"/>" />

					<!-- form-group end.// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<br> Salary $ <span class="input-group-text"> <i
								class="fa fa-calculator"></i>
							</span>
						</div>
						<form:input path="salary" name="" class="form-control"
							type="number" />
					</div>
					<!-- form-group// -->

					<input type="hidden" name="numVisits" value="<c:out value="${siteuser.numVisits }"/>" />

					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-link"></i>
							</span>
						</div>
						<form:input path="userUrl" name="UserURL" class="form-control"
							placeholder="Website URL" type="text" />
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-link"></i>
							</span>
					<input type="hidden" name="userType" value="<c:out value="${ siteuser.userType }"/>" />
					</div>
					</div>
					<c:if test="${! empty lastLogin }">
					<input type="hidden" name="lastLogin" value="<c:out value="${ siteuser.lastLogin }"/>" /> 
					</c:if>
						<!-- form-group end.// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<form:input path="password" class="form-control"
							placeholder="Create password" type="password" />
					</div>
					
					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-block"
							value="Update Account" />
					</div>
				</form:form>
				<div class="form-group">
					<form:form action="home.do" method="GET">
						<input class="btn btn-primary btn-block" type="submit"
							value="Home" />
					</form:form>
				</div>
			</article>
		</div>
		<!-- card.// -->

	</div>
	<!--container end.//-->
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