<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tarefa</title>
</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>

	<form action="alteraTarefa" method="post">

		<input type="hidden" name="id" value="${tarefa.id}" /> Descrição: <br />
		<textarea rows="5" cols="10" name="descricao">${tarefa.descricao}</textarea>
		<br /> <br /> Finalizado? <input type="checkbox" name="finalizado"
			value="true" ${tarefa.finalizado? 'checked' : '' } /><br /> <br />
		Data de Finalização: <br /> <input type="text" name="dataFinalizacao"
			value="<fmt:formatDate value="${tarefa.dataFinalizacao.time }" pattern="dd/MM/yyyy" />" /><br />
		<br /> <input type="submit" value="Alterar" />

	</form>

</body>
</html>