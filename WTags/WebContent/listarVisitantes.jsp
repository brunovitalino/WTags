<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Listando visitantes usando Taglibs</title>
</head>
<body>
	<jsp:useBean id="dao" class="model.VisitanteDao" />
	<div align="center">
		<h2>Listando Contatos:</h2>
		<table>
			<c:forEach var="contato" items="${dao.listar()}">
			
			</c:forEach>
		</table>
	</div>
</body>
</html>