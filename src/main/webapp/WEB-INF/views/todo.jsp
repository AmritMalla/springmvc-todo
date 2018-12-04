<%@ include file="/WEB-INF/views/common/header.jspf"%>
<%@ include file="/WEB-INF/views/common/navigation.jspf"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">

	<h1>Add a Todo</h1>
	<!-- 	If action is set to "" or if the action attribute is missing, the form 
	submits to itself. 
	That is, if your script is add-todo, your form submits to add-todo. -->


	<form:form method="post" commandName="todo">
		<form:hidden path="id" />
		<fieldset class="form-group">
			<form:label path="user">name</form:label>
			<form:input path="user" class="form-control" type="text"
				required="required"></form:input>
		</fieldset>
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input path="desc" class="form-control" type="text"
				required="required"></form:input>
			<form:errors path="desc" cssClass="text-warning"></form:errors>
		</fieldset>

		<fieldset class="form-group">
			<form:label path="targetDate">TargetDate</form:label>
			<form:input path="targetDate" class="form-control" type="text"
				required="required"></form:input>
			<form:errors path="targetDate" cssClass="text-warning"></form:errors>
		</fieldset>


		<%-- 	<form:label path="done">isDone</form:label>
		<form:input path="done" class="form-control" type="text"
			required="required"></form:input>
 --%>
		<input style="margin-top: 10px" class="btn btn-success" type="submit"
			value="Submit">

	</form:form>

</div>


<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script
	src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
<script>
	$('#targetDate').datepicker({
		format : 'dd/mm/yyyy'
	});
</script>
</body>
</html>