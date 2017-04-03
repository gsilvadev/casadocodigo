<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     import tag lib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, PHP, Ruby e Muito mais - Casa Do Código</title>
</head>
<body>
	<h1>Lista de Produtos</h1>
	<div>${sucesso }</div>
	<table>
		<thead>
			<tr>
				<th>Título</th>
				<th>Descrição</th>
				<th>Páginas</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${produtos }" var="produto">
				<tr>
					<td>${produto.titulo }</td>
					<td>${produto.descricao }</td>
					<td>${produto.paginas }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>