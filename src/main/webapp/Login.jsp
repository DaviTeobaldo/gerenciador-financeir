<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="Model.JavaBeans" %>
<%@ page import="java.util.ArrayList" %>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>
    <link rel="stylesheet" href="login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<%
//Pegar atributo do servidor backend	
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("dados");
%>



<%%>
 <header class="navbar navbar-expand-lg bg-success text-white p-3">
        <div class="container-fluid">
          <a class="navbar-brand text-white" href="#">Gerenciamento de Contas</a>
          <div class="navbar-nav">
            <a class="nav-link text-white" href="transacao_entrada">Transações e Dívidas</a>
            <a class="nav-link text-white" href="#">Relatórios</a>
            <a class="nav-link text-white" href="next">Fazer Login</a>
            <a class="nav-link text-white" href="Cadastro.html">Fazer Cadastro</a>
            
          </div>
        </div>
      </header>
    
    <h1 style="margin-left: 15%; margin-top: 2%; font-family: Verdana, Geneva, Tahoma, sans-serif; font-weight: bold; font-size: 300%;">Login</h1>

    <div class="card border-success" style="margin-left: 20%; margin-right: 20%; margin-top: 5%;">
        <div class="card-body">
            <div style="margin-left: 5%; font-weight: bold; font-size: 150%">Usuário: <%=lista.get(1).getNome()%></div>
			<div style="margin-right: 5%; text-align: right; font-weight: bold; font-size: 150%"><a href="relatorio" class="Trocar">Trocar</a></div>
			<div style="margin-left: 5%; font-weight: bold; font-size: 150%">CPF: <%= lista.get(1).getCpf()%></div>
        </div>
    </div>

    <form action="login">
      <div class="mb-3 " style="margin-left: 25%; margin-right: 25%; margin-top: 2%;">
        <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Senha" name="senha" style="margin-bottom: 20px">
     	<input type="email" placeholder="Email_Usuário" class="form-control form-control-lg" name="email">
      </div>
      <button type="submit" class="btn btn-success" style="margin-left: 42%;
      
       --bs-btn-padding-y: .65%; --bs-btn-padding-x: 8%; --bs-btn-font-size: 150%;">Entrar</button>
      <button type="submit" class="btn btn-light btn-outline-dark" style="margin-left: 36%; margin-top: 1%; 
      --bs-btn-padding-y: .65%; --bs-btn-padding-x: 8%; --bs-btn-font-size: 150%;
      ">Esqueci minha senha</button>
    </form>

</body>
</html>