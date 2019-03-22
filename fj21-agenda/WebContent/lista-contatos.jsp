
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista JSTL</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
<%-- 	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"></jsp:useBean> --%>
	<table style="width: 100%; border-color: grey; text-align: center;"
		border="2">
		<tr>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Endereço</th>
			<th>Data Nascimento</th>
		</tr>

		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>
					<a href="mvc?logica=BuscaContatoLogic&id=${contato.id}">Alterar</a>
				</td>
				<td>${contato.nome}</td>
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}">
							E-mail não informado
						</c:if></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" /></td>
				<td>
					<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}"><img src="imagens/lixo.png" style="width: 30px; height: 30px"></a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="rodape.jsp" />
</body>
</html>