<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Testando Bean</title>
</head>
<body>
	<jsp:useBean id="visitante" class="model.Visitante"></jsp:useBean>
	
	<form action="alteracaoEncaminhada.jsp">	
		<div>
			<b>Nome (definido na classe) exibido com jsp:getProperty (tag ultrapassada subst. por EL):</b>
			<jsp:getProperty name="visitante" property="nome" />
		</div>
		
		<div>
			<b>Nome após alteração com jsp:setProperty:</b>
			<jsp:setProperty name="visitante" property="nome" value="Bravo" />
			<jsp:getProperty name="visitante" property="nome" />
		</div>
		
		<div>
			<b>Nome exibido com EL:</b>
			${visitante.getNome()}
		</div>
		
		<div>
			<b>Nome após alteração com setNome():</b>
			${visitante.setNome("Be good")}
			${visitante.getNome()}
		</div>
		
		<div>
			<b>Teleone (definido na classe) exibido com EL:</b>
			${visitante.getTelefone()}
		</div>
		
		<div>
			<label for="telefone">Telefone: </label> <input type="text" name="telefone">
		</div>	
		<input type="submit" value="Alterar"/>
    </form>
	
	<div>
		<a href="">Encaminhar alterações</a>
	</div>
</body>
</html>