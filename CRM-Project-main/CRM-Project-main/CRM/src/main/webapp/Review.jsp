<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>
</head>
<style type="text/css">
:root {
	--border-color: #ccc;
	--border-width: 1px;
	--input-height: 40px;
	--input-width: calc(100% - 22px);
	/* Adjust input width to accommodate borders and padding */
}

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f9f9f9;
}

.container {
	max-width: 500px;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #007bff;
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	font-weight: bold;
}

input[type="text"], input[type="email"], select, textarea {
	width: var(--input-width);
	height: var(--input-height);
	padding: 10px;
	border: var(--border-width) solid var(--border-color);
	border-radius: 5px;
	box-sizing: border-box;
	font-size: 16px;
}

select {
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	background-image:
		url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path fill="%23007bff" d="M10 15l5-5H5l5 5z"/></svg>');
	background-repeat: no-repeat;
	background-position: right 10px center;
	background-size: 12px;
	cursor: pointer;
}

textarea {
	resize: vertical;
}

button {
	background-color: #007bff;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	transition: background-color 0.3s;
}

button:hover {
	background-color: #0056b3;
}

</style>
<body>
	<form action="Review" method="post">

		<div class="container">
			<h2>You can Review here</h2>
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="form-group">
				<label for="rating">Rating:</label> <select id="rating"
					name="rating" required>
					<option value="">Select Rating</option>
					<option value="1">1 - Poor</option>
					<option value="2">2 - Fair</option>
					<option value="3">3 - Average</option>
					<option value="4">4 - Good</option>
					<option value="5">5 - Excellent</option>
				</select>
			</div>
			<div class="form-group">
				<label for="review">Review:</label>
				<textarea id="review" name="review" required></textarea>
			</div>
			<button type="submit">Submit Review</button>

		</div>
	</form>
</body>
</html>