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
	<div class="container">
	<h1>Popular Game Finder</h1>
	
	
	<form action="getGame.do" method="GET">
			Game ID: <input type="text" name="gameId" /> <input type="submit"
				value="Get Game" />
		</form>
		
	<h3><a href="add.do">Add Game</a></h3>
	
			<table border=".5px">
				<tr>
					<th>Title</th>
					<th>Active Players</th>
				</tr>

				<c:forEach items="${games}" var="g">
					<tr>
						<td><a href="getGame.do?gameId=${g.id}">${g.name}</a></td>
						<td>${g.activePlayers}</td>
					</tr>
				</c:forEach>
			</table>


		</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>