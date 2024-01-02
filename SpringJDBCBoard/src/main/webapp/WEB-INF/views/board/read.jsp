<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Board</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
/* $(document).ready는 body 부터 전체가 읽어지면 */
	$(document).ready(function() {
		var formObj = $("#board");
		/* 수정 누르면 boardNo객채 를 가져온다.  */
		/* boardNo.val은 boardNo안에 있는 객체 를 가져온다.*/
		$("#btnModify").on("click", function() {
			var boardNo = $("#boardNo");
			var boardNoVal = boardNo.val();
			self.location = "/board/modify?boardNo=" + boardNoVal;
		});
		$("#btnRemove").on("click", function() {
			/* 삭제할때 전체 데이터 table안에 내용이 넘어간다. */
			formObj.attr("action", "/board/remove");
			formObj.submit();
		});
		$("#btnList").on("click", function() {
			self.location = "/board/list";
		});
	});
</script>
<body>
	<h2>READ</h2>
	<form:form modelAttribute="board">
		<form:hidden path="boardNo" />
		<table>
			<tr>
				<td>Title</td>
				<td><form:input path="title" readonly="true" /></td>
			</tr>
			<tr>
				<td>Writer</td>
				<td><form:input path="writer" readonly="true" /></td>
			</tr>
			<tr>
				<td>Content</td>
				<td><form:textarea path="content" readonly="true" /></td>
			</tr>
		</table>
	</form:form>
	<div>
		<button type="submit" id="btnModify">Modify</button>
		<button type="submit" id="btnRemove">Remove</button>
		<button type="submit" id="btnList">List</button>
	</div>
</body>
</html>