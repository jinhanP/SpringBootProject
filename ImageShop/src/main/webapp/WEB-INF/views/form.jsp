<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image Shop</title>
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<!-- HEADER AREA -->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<!-- MENU AREA -->
	<%@ include file="/WEB-INF/views/common/menu.jsp"%>
	
	<h1>
		<spring:message code="common.homeWelcome" />
	</h1>
	<P>${serverTime}</P>

	<hr>
	<!-- FOOTER AREA -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>