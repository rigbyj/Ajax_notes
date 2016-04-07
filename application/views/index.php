<!DOCTYPE html>
<html>
<head>
	<title>Ajax Notes</title>
	<link rel="stylesheet" type="text/css" href="assets/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="assets/css/styles.css">

	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="assets/js/scripts.js"></script>

</head>
<body>
<div class="container">
	<form class='add' action="/notes/add" method="post">
		<input type='text' name='title' placeholder="Insert note title here...">
		<input type='submit' value='Add Note'>
	</form>
	<h3 >Notes</h3>
	<div id='notes'></div>

</div>
</body>
</html>