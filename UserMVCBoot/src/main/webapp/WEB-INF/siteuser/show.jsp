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
<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> -->
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
			class="btn btn-primary btn-block" value="Update User" />
	</form>
	<form class="btn btn-primary btn-block" class="form-control" action="/"
		method="GET">
		<input type="submit" class="btn btn-primary btn-block" value="Home" />
	</form>
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
	</div>

	<c:if test="${! empty error }">
		<h2>${error }</h2>
	</c:if>

	<%-- <div class="card bg-light" style="width: 24rem;">
		<article class="card-body mx-auto" style="max-width: 300px;">
			<h4 class="card-title mt-3 text-center">Display Account</h4>
			<p class="text-center">Display Account for Boot MVC Site</p>
			<p class="divider-text"></p>

			<form:form action="saveSiteuser.do" method="POST"
				modelAttribute="siteuser">
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa vcard"></i>
						</span>
					</div>
					<form:input path="firstName" name="" class="form-control-plaintext"
						placeholder="First name" type="text" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa vcard"></i>
						</span>
					</div>
					<form:input path="lastName" name="" class="form-control-plaintext"
						placeholder="Last name" type="text" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i
							class="fa fa-user-circle"></i>
						</span>
					</div>
					<form:input path="username" name="" class="form-control-plaintext"
						placeholder="Username" type="text" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i
							class="fa fa-envelope-open"></i>
						</span>
					</div>
					<form:input path="email" name="" class="form-control-plaintext"
						placeholder="Email address" type="email" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-building"></i>
						</span>
					</div>
					<form:select path="jobTitle" class="form-control-plaintext" value="Select...">
						<option>Select job type</option>
						<option>Software Engineer</option>
						<option>Database Administrator</option>
						<option>System Administrator</option>
						<option>Accounting</option>
						<option>Designer</option>
						<option>Manager</option>
						<option>Chief Executive Officer</option>
						<option>other</option>
					</form:select>
				</div>
				<!-- form-group end.// -->
				<div class="form-group input-group">
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
						<label class="btn btn-secondary active"> <input
							type="radio" name="accountStatus" id="active" autocomplete="off"
							checked> Active
						</label> <label class="btn btn-secondary"> <input type="radio"
							name="accountStatus" id="inactive" autocomplete="off">
							Inactive
						</label> <label class="btn btn-secondary"> <input type="radio"
							name="accountStatus" id="archived" autocomplete="off">
							Archived
						</label>
					</div>
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<br>
						<h6>Salary</h6>
						<span class="input-group-text"> <i class="fa dollar"></i>
						</span>
					</div>
					<form:input path="salary" name="" class="form-control-plaintext"
						type="number" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<br>
						<h6># Visits</h6>
						<span class="input-group-text"> <i class="fa fa-hashtag"></i>
						</span>
					</div>
					<form:input path="numVisits" name="" class="form-control-plaintext"
						type="number" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-link"></i>
						</span>
					</div>
					<form:input path="userUrl" name="" class="form-control-plaintext"
						placeholder="Website URL" type="text" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
						<label class="btn btn-secondary active"> <input
							type="radio" name="userType" id="customer" autocomplete="off"
							checked> Customer
						</label> <label class="btn btn-secondary"> <input type="radio"
							name="userType" id="empoyee" autocomplete="off"> Employee
						</label> <label class="btn btn-secondary"> <input type="radio"
							name="userType" id="admin" autocomplete="off"> Admin
						</label>
					</div>
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-calendar"></i>
						</span>
					</div>
					<form:input path="lastLogin" name="" class="form-control-plaintext"
						placeholder="Last Login" type="date" />
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-lock"></i>
						</span>
					</div>
					<form:input path="password" class="form-control-plaintext"
						placeholder="Create password" type="password" />
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-primary btn-block"
						value="Create Account" />
				</div>
				<!-- form-group// -->
				<!-- 				<p class="text-center">
					Have an account? <a href="">Log In</a>
				</p> -->
			</form:form>
			<div class="form-group">
			<form action="/" method="GET">
				<input class="btn btn-primary btn-block" type="submit"  value="Home" />
			</form>
			</div>
		</article>
	</div>
	<!-- card.// -->

	</div>
	<!--container end.//--> --%>

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