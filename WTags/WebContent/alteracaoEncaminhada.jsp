<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Alterações Encaminhadas</title>
</head>
<body>
	<jsp:useBean id="visitante" class="model.Visitante" />
	<div>
		<b>Nome (inalterado, o mesmo definido na classe):</b>
		 <%-- devido ao padrao POJO do bean, o metodo correto e chamado, bastando digitar o nome da variavel --%>
		${visitante.nome}
	</div>
	
	<div>
		<b>Telefone (pegando parêmetros do request com scriptlet):</b>
		<%= request.getParameter("telefone") %>
	</div>
	
	<div>
		<b>Telefone (pegando parêmetros do request com EL):</b>
		${param.telefone}
	</div>
</body>
</html>