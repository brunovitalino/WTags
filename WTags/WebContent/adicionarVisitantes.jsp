<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="bv" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css" >
	<link rel="stylesheet" type="text/css" href="css/ui-lightness/jquery-ui.css" >
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/ui-lightness/jquery-ui.js"></script>
	<style type="text/css">
	    .largura-automatica {
	         display: inline-block;
	    }
	</style>
</head>
<body>
	<c:import url="cabecalho.jsp" />

	<div align="center">
	<table>
		<tr>
			<th>Form sem ajuda de Tagfiles</th>
			<th>Form com Tagfiles</th>
		</tr>
		<tr>
			<td>
				<form action="adicionadoVisitante.jsp" method="post">
					<div>
						<fieldset class="largura-automatica">
							<legend>Informe os dados</legend>
							<label for="nomeVisitante">Nome:</label>
							<input type="text" id="nomeVisitante" name="nome" placeholder="Nome">
							<br>
							<label for="telefoneVisitante">Telefone:</label>
							<input type="text" id="telefoneVisitante" name="telefone" placeholder="Telefone">
							<br>
							<label for="emailVisitante">E-mail:</label>
							<input type="text" id="emailVisitante" name="email" placeholder="E-mail">
							<br>
							<label for="dataVisitante">Data:</label>
							<input type="text" id="dataVisitante" name="data" placeholder="Data">
							<script>
								$("#dataVisitante").datepicker();
							</script>
							<br>
							<label for="mensagemContato"></label>
							<textarea id="mensagemContato" name="mensagem" placeholder="Deixe sua mensagem" rows="10" cols="60" maxlength="500" wrap="hard"></textarea>			
						</fieldset>
					</div>
					<div align="center">
						<br>
						<input type="submit" value="Enviar">
					</div>
				</form>
			</td>
			<td>
				<form action="adicionadoVisitante.jsp" method="post">
					<div>
						<fieldset class="largura-automatica">
							<legend>Informe os dados</legend>
							<label for="nomeVisitante2">Nome:</label>
							<input type="text" id="nomeVisitante2" name="nome2" placeholder="Nome">
							<br>
							<label for="telefoneVisitante2">Telefone:</label>
							<input type="text" id="telefoneVisitante2" name="telefone2" placeholder="Telefone">
							<br>
							<label for="emailVisitante2">E-mail:</label>
							<input type="text" id="emailVisitante2" name="email2" placeholder="E-mail">
							<br>
							<label for="dataVisitante2">Data:</label>
							<bv:campoData nome="data2" id="dataVisitante2"></bv:campoData>
							<br>
							<label for="mensagemVisitante2"></label>
							<textarea id="mensagemVisitante2" name="mensagem2" placeholder="Deixe sua mensagem" rows="10" cols="60" maxlength="500" wrap="hard"></textarea>			
						</fieldset>
					</div>
					<div align="center">
						<br>
						<input type="submit" value="Enviar">
					</div>
				</form>
			</td>
		</tr>
	</table>
	</div>

	<c:import url="rodape.jsp" />
</body>
</html>