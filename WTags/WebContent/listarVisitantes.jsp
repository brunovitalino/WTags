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
		<h2>Listando Contatos com Taglibs (checagem de campos vazios com Ifs):</h2>
		<table>
			<tr>
				<th>Nome</th>
				<th>Telefone</th>
				<th>E-mail</th>
			</tr>			
			<c:forEach var="visitante" items="${dao.listar()}" varStatus="contador" >
				<tr bgcolor="#${ contador.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
					<td>${visitante.nome}</td>
					<td>${visitante.telefone}</td>
					<td align="center">
						<c:if test="${not empty visitante.email}">
							${visitante.email}
						</c:if>
						<c:if test="${empty visitante.email}">
							-
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div align="center">
		<h2>Listando Contatos com Taglibs (checagem de campos vazios com Switchs):</h2>
		<table>
			<tr>
				<th>Nome</th>
				<th>Telefone</th>
				<th>E-mail</th>
			</tr>			
			<c:forEach var="visitante" items="${dao.listar()}" varStatus="contador" >
				<tr bgcolor="#${ contador.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
					<td>${visitante.nome}</td>
					<td>${visitante.telefone}</td>
					<td align="center">
						<c:choose>
							<c:when test="${not empty visitante.email}">
								<a href="mailto:${visitante.email}">${visitante.email}</a>
							</c:when>
							<c:otherwise>
								-
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>