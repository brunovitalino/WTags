<%@ page import="java.util.ArrayList, java.util.List, model.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Listando visitantes usando Taglibs</title>
</head>
<body>
	<div align="center">
		<h2>Listando Contatos com scriptlet:</h2>
		<table>
			<tr>
				<th>Nome</th>
				<th>Telefone</th>
			</tr>
			<%			
			for (Visitante visitante : new VisitanteDao().listar() ) {
			%>
				<tr>
					<td><%=visitante.getNome()%></td>
					<td><%=visitante.getTelefone()%></td>
				</tr>
			<%
			}
			%>
		</table>
	</div>
	
	<jsp:useBean id="dao" class="model.VisitanteDao" />
	<div align="center">
		<h2>Listando Contatos com Taglibs:</h2>
		<table>
			<tr>
				<th>Nome</th>
				<th>Telefone</th>
			</tr>			
			<c:forEach var="visitante" items="${dao.listar()}">
				<tr>
					<td>${visitante.nome}</td>
					<td>${visitante.telefone}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>