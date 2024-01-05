<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image Shop</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script>
	$(document).ready(function() {
		var formObj = $("#codeGroup");
		$("#btnModify").on("click", function() {
			formObj.submit();
		});
		$("#btnList").on("click", function() {
			self.location = "/codegroup/list";
		});
	});
</script>
</head>
<body>
	<!-- HEADER AREA -->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<!-- MENU AREA -->
	<%@ include file="/WEB-INF/views/common/menu.jsp"%>
	<!-- MAIN -->
	<h2>
		<spring:message code="codegroup.header.modify" />
	</h2>
	<form:form modelAttribute="codeGroup" action="/codegroup/modify" method="post">
		<table>
			<tr>
				<td><spring:message code="codegroup.groupCode" /></td>
				<td><form:input path="groupCode" /></td>
				<td><font color="red"><form:errors path="groupCode" /></font></td>
			</tr>
			<tr>
				<td><spring:message code="codegroup.groupName" /></td>
				<td><form:input path="groupName" /></td>
				<td><font color="red"><form:errors path="groupName" /></font></td>
			</tr>
		</table>
	</form:form>
	<div>
		<button type="submit" id="btnModify">
			<spring:message code="action.modify" />
		</button>
		<button type="submit" id="btnList">
			<spring:message code="action.list" />
		</button>
	</div>




	<!-- FOOTER AREA -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>