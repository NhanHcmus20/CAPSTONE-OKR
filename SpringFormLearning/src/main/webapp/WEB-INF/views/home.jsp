<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<script>
	function navigateToForm() {
		window.location.href = "http://localhost:8000/SpringFormLearning/form";
	}
</script>
<style type="text/css">
button {
	width: fit-content;
	padding: 7px 7px 7px 7px;
	margin: 5px 5px 5px 5px;
	background-color: light-blue;
}
</style>
<body>
	<br>
	<h1>MINI SPRING FORM AND NAVIGATION LEARNING PROJECT</h1>
	<br>
	<a href="form">navigation to form Page with hyperlink</a>
	<br />
	<button onclick="navigateToForm()">navigation to form Page
		with button</button>
</body>
</html>
