<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	
	<!-- HEADER AREA -->
    <%@ include file="/WEB-INF/views/common/header.jsp"%>
    <!-- MENU AREA -->
    <%@ include file="/WEB-INF/views/common/menu.jsp"%>
    <!-- CONTENT AREA -->
<h2>
	<spring:message code="codegroup.header.read" />
</h2>
<form:form modelAttribute="codeGroup">
	<table>
		<tr>
			<td><spring:message code="codegroup.groupCode" /></td>
			<td><form:input path="groupCode" readonly="true" /></td>
			<td><font color="red"><form:errors path="groupCode" /></font></td>
		</tr>
		<tr>
			<td><spring:message code="codegroup.groupName" /></td>
			<td><form:input path="groupName" readonly="true" /></td>
			<td><font color="red"><form:errors path="groupName" /></font></td>
		</tr>
	</table>
</form:form>
<div>
	<button type="submit" id="btnEdit">
		<spring:message code="action.edit" />
	</button>
	<button type="submit" id="btnRemove">
		<spring:message code="action.remove" />
	</button>
	<button type="submit" id="btnList">
		<spring:message code="action.list" />
	</button>
</div>
<hr>
	<!-- FOOTER AREA -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
<script>
	$(document).ready(function() {
		//#id가 코드그룹이 변수를 formObj에 지정
		var formObj = $("#codeGroup");
	
		$("#btnEdit").on("click", function() {
			var groupCode = $("#groupCode");
			var groupCodeVal = groupCode.val();
			self.location = "modify?groupCode=" + groupCodeVal;
			// modify?groupCode 여기에 groupCodeVal 주고 self.location 여기에 넘겨준다.
		});
		
		$("#btnRemove").on("click", function() {
			formObj.attr("action", "/codegroup/remove");
			formObj.submit();
		});
		// #버튼리스트를 눌렀을때 list로 이동
		$("#btnList").on("click", function() {
			self.location = "list";
		});
	});
</script>