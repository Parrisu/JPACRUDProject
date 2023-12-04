<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game Details</title>
</head>
<body>
	<h1>Game Details</h1>

	<c:choose>
		<c:when test="${! empty game}">
			<h2>${game.name}</h2>


			<ul>
				<li>Release Date: ${game.releaseDate}</li>
				<li>Release Price: ${game.releasePrice}</li>
				<li>Current Price: ${game.currentPrice}</li>
				<li>Category: ${game.category}</li>
				<li>Active Players: ${game.activePlayers}</li>

			</ul>


			<form action="updateGame.do" method="POST">
				<label for="name"> Name:</label><br> <input type="text"
					id="name" name="name"><br> <input type="hidden"
					id="id" name="id" value="${game.id}"> <input type="submit"
					value="Update Name" />
			</form>
			
			<form action="deleteGame.do" method="POST">
				<input type="hidden" id="delete" name="delete" value="${game.id}">
				<input type="submit" value="Delete Game">
			</form>


		</c:when>
		<c:otherwise>

			<h2>No game found</h2>

		</c:otherwise>


	</c:choose>

</body>
</html>