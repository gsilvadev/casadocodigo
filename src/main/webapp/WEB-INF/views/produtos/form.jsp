<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, PHP, Ruby e Muito mais - Casa Do Código</title>
</head>
<body>

	<form action="/casadocodigo/produtos" method="POST">
		<div>
			<label>Título</label>
			<input type="text" name="titulo"/>
		</div>
		<div>
			<label>Descrição</label>
			<textarea rows="10" cols="40" name="descricao"></textarea> 
		</div>
		<div>
			<label>Páginas</label>
			<input type="text" name="paginas"/>
		</div>
		<button type="submit">Cadastrar</button>
	</form>

</body>
</html>