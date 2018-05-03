<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp" />
<body>
	<jsp:include page="logged-in-navbar.jsp" />
<div class="container-fluid text-center" align="center">
	<h1>${puzzle.name }</h1>
	<img src="${puzzle.imageUrl}" width="275" height="250"
		alt="${puzzle.name}">

	<h3>Rate this puzzle!</h3>

	<form action="ratePuzzle.do" method="post">
	<input type= "hidden" name ="id" value= "${ii.puzzle.id}">
	<input type= "hidden" name ="inventoryId" value= "${ii.id}">
		<select name="rating">

			<option value="1">1-frustrating</option>
			<option value="2">2-hard but doable</option>
			<option value="3">3-not bad</option>
			<option value="4">4-fun</option>
			<option value="5">5-great time</option>
		</select>
		<br>
		<textarea name="comment" rows="10" cols="30"
			placeholder="Leave a comment..."></textarea>
		<br> 
		<button type="submit" class="btn btn-outline-info"
				value="Rate">Rate</button>
	</form>


	<jsp:include page="footer.jsp" />
	<jsp:include page="script.jsp" />
</div>
</body>
</html>