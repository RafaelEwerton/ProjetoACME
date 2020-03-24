<!doctype html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.6">
<title>Login</title>

<link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/sign-in/">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/admin/css/bootstrap.min.css"/>
<meta name="theme-color" content="#563d7c">


<style>

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

<link href="${pageContext.request.contextPath}/assets/admin/signin.css"
	rel="stylesheet">

</head>

<body class="text-center">
	<form class="form-signin" action="EmpresaController" method="POST">
		<h1 class="h3 mb-3 font-weight-normal" style="font-style: italic;">LOGIN</h1>
		
		<label for="email" class="sr-only">Email</label> <input type="email" name="email"
			id="email" class="form-control" placeholder="login" style="font-style: italic;" required
			autofocus> <br /> 
			
			<label for="senha" class="sr-only" style="font-style: italic;">Senha</label>
		<input type="password" name="senha" id="senha" class="form-control"
			placeholder="Senha" style="font-style: italic;" required> 
			
			<a href="${pageContext.request.contextPath}/" onclick="logar"
			class="btn btn-lg btn-primary btn-block" type="submit" id='btlogar' style="font-style: italic;">Logar</a>
			
			<a href="${pageContext.request.contextPath}/"
			class="btn btn-lg btn-primary btn-block" type="submit"  style="font-style: italic;">Recuperar Senha</a>
		<p class="mt-5 mb-3 text-muted"></p>
		
		<div>
		<%String mensagem=(String) request.getAttribute("mensagem");
			if(mensagem == null){
			mensagem = "";
		}
		%> <%=mensagem %>
		</div>
		
	</form>
</body>

<script>
  
</script>

</html>

