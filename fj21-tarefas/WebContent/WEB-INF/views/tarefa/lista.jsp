<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<title>Lista de tarefas</title>
</head>
<body>
	<script type="text/javascript">
		function finalizaAgora(id) {
			$.post("finalizaTarefa", {'id' : id}, function() {
				$("#tarefa_"+id).html("Finalizado");
			});
		}
	</script>

	<h1>Lista das suas tarefas:</h1>
	<br />
	<a href="novaTarefa">Criar nova tarefa</a>

	<br />
	<br />

	<table style="width: 100%; border-color: grey; text-align: center;"
		border="2">
		<tr>
			<th>Id</th>
			<th>Descrição</th>
			<th>Finalizado?</th>
			<th>Data de Finalização</th>
		</tr>
		<c:forEach var="tarefa" items="${tarefas}">
			<tr>
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				<c:if test="${tarefa.finalizado eq false}">
					<td id="tarefa_${tarefa.id }"><a href="#"
						onclick="finalizaAgora(${tarefa.id})">Finalizar Agora</a></td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true }">
					<td>Finalizado</td>
				</c:if>
				<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="removeTarefa?id=${tarefa.id}""><img
						alt="deletar" src="imagens/lixo.png"
						style="width: 30px; height: 30px"></a></td>
				<td><a href="mostraTarefa?id=${tarefa.id}""><img
						alt="atualizar" src="imagens/lapis.png"
						style="width: 30px; height: 30px"></a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>