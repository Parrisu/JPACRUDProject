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
	<h1>Add A Game</h1>

	<form action="addGame.do" method="GET">
		<label for="name"> Name:</label><br> 
		<input type="text" id="name" name="name"><br>
		
    	<label for="fps">FPS</label>
		<input type="radio" id="fps" name="category" value="fps" checked /><br>
		
    	<label for="moba">MOBA</label>
		<input type="radio" id="moba" name="category" value="moba"/><br>
		
    	<label for="mmorpg">MMORPG</label>
		<input type="radio" id="mmorpg" name="category" value="mmorpg"/><br>
		
    	<label for="rpg">RPG</label>
		<input type="radio" id="rpg" name="category" value="rpg"/><br>
		
		<label for="active">Active Players</label><br> 
		<input type="text" id="active" name="active"> 
		
		<input type="submit" value="Add To List"/>
	</form>
	
	
</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>