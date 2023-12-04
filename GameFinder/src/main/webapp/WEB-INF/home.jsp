<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Popular Game Finder</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css" />
</head>
<body>
	<div class="container text-center">
		<div class="row">
		<div class="col-3"></div>
		<div class="col-6">
			<h1>
				<a href="/" id="header">Popular Game Finder</a>
			</h1>


			<form action="getGame.do" method="GET">
				<div class="row mb-3">
					<label for="gameId" class="col-sm-2 col-form-label">Game
						ID: </label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="gameId" name="gameId">
					</div>
				</div>
				<input type="submit" class="btn btn-primary" value="Get Game" />
			</form>

			<h3>
				<a href="add.do"
					class="link-info link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Add
					Game</a>
			</h3>

		</div>



		<table class="table table-dark table-hover">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${games}" var="g">
					<tr>
						<th scope="row">${g.id}</th>
						<td><a href="getGame.do?gameId=${g.id}"
							class="link-info link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">${g.name}</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="col-3"></div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>