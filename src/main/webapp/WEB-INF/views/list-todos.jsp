<%@ include file="/WEB-INF/views/common/header.jspf"%>
<%@ include file="/WEB-INF/views/common/navigation.jspf"%>

<div class="container">

	Hi !!! ${name } <br>

	<table class="table table-striped">
	<caption>
	<spring:message code="todo.caption"></spring:message>
	</caption>
		<tr>
			<th>Id</th>
			<th>User</th>
			<th>Description</th>
			<th>Target Date</th>
			<th>Is Completed?</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.id}</td>
				<td>${todo.user}</td>
				<td>${todo.desc}</td>
				<td><fmt:formatDate  pattern="dd/MM/yyyy"
 						value="${todo.targetDate}" /></td>
				<td>${todo.done}</td>
				<td><a href="/delete-todo?id=${todo.id}"
					class="glyphicon glyphicon-trash" style="color: red;"></a> <a
					href="/update-todo?id=${todo.id}" class="glyphicon glyphicon-edit"
					style="color: green;"></a></td>
			</tr>
		</c:forEach>
	</table>
	<br> <a href="/add-todo">
		<button class="btn btn-success">Add Todo</button>
	</a>
</div>

<%@ include file="/WEB-INF/views/common/footer.jspf"%>