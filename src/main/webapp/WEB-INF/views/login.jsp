
<%@ include file="/WEB-INF/views/common/header.jspf"%>
<%@ include file="/WEB-INF/views/common/navigation.jspf"%>
<div class="container">
	<p>
		<font color="red">${errorMessage}</font>
	</p>
	<form action="/login" method="POST" class="form-group">
		<label>Name : </label> <input class="form-control" name="name"
			type="text" />
			<label>
			 Password :
			</label>
			  <input class="form-control" name="password" type="password" />
		<input class="btn btn-success" style="margin-top:10px;" type="submit" />
	</form>

</div>
<%@ include file="/WEB-INF/views/common/footer.jspf"%>