<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Cabeçalhos e Rodapés</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	
	<h1>Página com cabeçalho e rodapé importados</h1>
	<div>
		123 bacana.
	</div>
	
	<c:import url="rodape.jsp" />
</body>
</html>