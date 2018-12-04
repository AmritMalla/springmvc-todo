<%@ include file="/WEB-INF/views/common/header.jspf" %>
<%@ include file="/WEB-INF/views/common/navigation.jspf"%>
	<div class="container">
	
	Welcome ${name} and password is ${password }
	<br>
	Now you can manage your todos.<br>
<a href="/list-todos<%-- ?name=${name} --%>">
	<button class='btn btn-primary'>
		Todos
	</button>
</a>
	</div>

<%@ include file="/WEB-INF/views/common/footer.jspf" %>