<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css" />
</head>
<body>
	<div class="container">
		<h1>Game Details</h1>


		<div class="col-3"></div>
		<div class="col-6">

			<c:choose>
				<c:when test="${! empty game}">

					<table class="table table-dark table-hover">
						<thead>
							<tr>
								<th scope="col">Title</th>
								<th scope="col">${game.name}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="col">Category</th>
								<td>${game.category}</td>
							</tr>
							<tr>
								<th scope="col">Release Date</th>
								<td>${game.releaseDate}</td>
							</tr>
							<tr>
								<th scope="col">Release Price</th>
								<td>${game.releasePrice}</td>
							</tr>
							<tr>
								<th scope="col">Current Price</th>
								<td>${game.currentPrice}</td>
							</tr>
							<tr>
								<th scope="col">Active Players</th>
								<td>${game.activePlayers}</td>
							</tr>
						</tbody>
					</table>

					<%-- <form action="updateGame.do" method="POST">
						<div class="row mb-3">
							<label for="name">Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="name" name="name">
							</div>
						</div>
						<input type="hidden" id="id" name="id" value="${game.id}">
						<input type="submit" class="btn btn-primary" value="Update Name" />
					</form> --%>
					<form action="update.do" method="POST">
						<input type="hidden" id="gameId" name="gameId" value="${game.id}">
						<input type="submit" class="btn btn-primary" value="Update" />
					</form>
					<br>
					<br>

					<form action="deleteGame.do" method="POST">
						<input type="hidden" id="delete" name="delete" value="${game.id}">
						<input type="submit" class="btn btn-danger" value="Delete Game">
					</form>


				</c:when>
				<c:otherwise>

					<h2>No game found</h2>
					
					<h4><a href="/">back to home</a></h4>

				</c:otherwise>


			</c:choose>
		</div>
		<div class="col-3"></div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>