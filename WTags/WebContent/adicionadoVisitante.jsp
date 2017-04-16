<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	
	<h3>Visitante ${param.nome} adicionado com sucesso!</h3>
	<h3>Visitante <%= request.getParameter("nome") %> adicionado com sucesso!</h3>
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>