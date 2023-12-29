<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head></head>
<meta charset="UTF-8">
<title>@DateTimeFormat 애너테이션 처리</title>
</head>
<body>
	<h1>@DateTimeFormat 애너테이션 처리</h1>
	<a href="registerByDateFormat?userId=hong&dateOfBirth=20001020">registerByDateFormat?userId=hong&ampdateOfBirth=20001020</a>
	<br>
	<a href="registerByDateFormat01?userId=hong&dateOfBirth=2000-10-20">registerByDateFormat01?userId=hong&ampdateOfBirth=2000-10-20</a>
	<br>
	<a href="registerByDateFormat02?userId=hong&dateOfBirth=2000/10/20">registerByDateFormat02?userId=hong&ampdateOfBirth=2000/10/20</a>
	<br>
	<a href="registerByDateFormat03?userId=hong&dateOfBirth=20001020">registerByDateFormat03?userId=hong&ampdateOfBirth=20001020</a>
	<br>
	<form action="/register" method="post">
		userId: <input type="text" name="userId" value="hong"><br>
		password: <input type="text" name="password" value="1234"><br>
		dateOfBirth: <input type="text" name="dateOfBirth" value="20001020"><br>
		<input type="submit" value="register">
	</form>
</body>
</html>








<!-- <title>Date 타입 처리</title>
</head>
<body>
	<h1>Date 타입 처리</h1>
	<a href="registerByDate01?userId=hong&dateOfBirth=2000/10/20">registerByDate01?userId=hon
		g&ampdateOfBirth=2000/10/20</a>
	<br>
	<a href="registerByDate02?userId=hong&dateOfBirth=2000/10/20">registerByDate02?userId=hon
		g&ampdateOfBirth=2000/10/20</a>
	<br>
	<form action="/registerdate" method="post">
		userId: <input type="text" name="userId" value="hong"><br>
		password: <input type="text" name="password" value="1234"><br>
		dateOfBirth: <input type="text" name="dateOfBirth" value="2000/10/20"><br>
		<input type="submit" value="registerdate">
	</form>
</body>
</html> -->







<!-- <title>요청 처리 자바빈즈</title>
</head>
<body>
	<h1>요청 처리 자바빈즈</h1>
	<form action="/registerbeans01" method="post">
		userId: <input type="text" name="userId" value="hong"><br>
		password: <input type="text" name="password" value="1234"><br>
		coin: <input type="text" name="coin" value="100"><br> <input
			type="submit" value="registerbeans01">
	</form>
	<form action="/registerbeans02" method="post">
		userId: <input type="text" name="userId" value="hong"><br>
		password: <input type="text" name="password" value="1234"><br>
		coin: <input type="text" name="coin" value="100"><br> <input
			type="submit" value="registerbeans02">
	</form>
</body>
</html> -->