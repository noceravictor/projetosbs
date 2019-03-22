<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	
    <title>Adiciona Contato</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
    <h1>Formul�rio Adicionar Contato</h1>
    <form action="adicionaContato">
        Nome: <input type="text" name="nome" id="">
        <br>
        <br>
        E-mail: <input type="text" name="email" id="">
        <br>
        <br>
        Endere�o: <input type="text" name="endereco" id="">
        <br>
        <br>
        Data de Nascimento: <caelum:campoData id="dataNascimento"/>
        <br>
        <br>
        <input type="submit" value="Gravar">
    </form>    
   <c:import url="rodape.jsp" />
   
</body>
</html>