<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Game</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/main.css" />
</head>
<body>
	<div class="container">
		<div class="col-3"></div>
		<div class="col-6">
			<h1>Add A Game</h1>


			<form action="addGame.do" method="GET">
				<div class="row mb-3">
					<label for="name" class="col-sm-2 col-form-label">Name</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" name="name">
					</div>
				</div>
				<div class="row mb-3">
					<label for="active" class="col-sm-2 col-form-label">Active
						Players</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="active" name="active">
					</div>
				</div>
				<fieldset class="row mb-3">
					<legend class="col-form-label col-sm-2 pt-0">Category</legend>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category"
								id="fps" value="fps" checked> <label
								class="form-check-label" for="fps"> FPS </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category"
								id="moba" value="moba"> <label class="form-check-label"
								for="moba"> MOBA </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category"
								id="mmorpg" value="mmorpg"> <label
								class="form-check-label" for="mmorpg"> MMORPG </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="category"
								id="rpg" value="rpg"> <label class="form-check-label"
								for="rpg"> RPG </label>
						</div>
					</div>
				</fieldset>
				<button type="submit" class="btn btn-primary">Add Game</button>
			</form>


		</div>
		<div class="col-3"></div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>