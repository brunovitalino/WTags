<%@ tag language="java" pageEncoding="utf-8"%>
<%@ attribute name="id" required="true" %>
<%@ attribute name="nome" required="true" %>

<html>
<body>
<input type="text" id="${id}" name="${nome}">
<script>
	$("#${id}").datepicker({dateFormat:'dd/mm/yy'});
</script>
</body>
</html>