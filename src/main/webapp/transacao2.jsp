<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transação Saída</title>
    <link rel="stylesheet" href="transação.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    
</head>
<body>
     
<%@ page import="Model.Transacao" %>
<%@ page import="java.util.ArrayList"%> 

<%
//Pegar atributo do servidor backend	
ArrayList<Transacao> lista_transacao = (ArrayList<Transacao>) 
request.getAttribute("dados_transacao_saida");

%> 

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

<div class="tab-container">
    <input type="radio" id="entrada" name="tab" checked>
    <label class="tab" for="entrada">
        <h4><a href="transacao_entrada" class="tab-link">Entrada</a></h4>
    </label>

    <input type="radio" id="saida" name="tab" checked>
    <label class="tab" for="saida">
        <h4>Saída</h4>
    </label>
</div>

<div class="content-container">
    <div id="entrada-content" class="tab-content">
        <h2>Informações de Entrada</h2>
        <p>Aqui ficam as informações relacionadas à entrada.</p>
    </div>

    <div id="saida-content" class="tab-content">
        <h2>Informações de Saída</h2>
        <p>Aqui ficam as informações relacionadas à saída.</p>
    </div>
</div>

<div class="hoje">
    <h3>Hoje</h3>
</div>

<% for(int i = 0; i < lista_transacao.size(); i++){%>



<div class="pix-container">
    <div class="data-hora">Data e Hora: <%= lista_transacao.get(i).getDataTransicao()%></div>
    <div class="nome">Nome:  <%= lista_transacao.get(i).getResponsável()%></div>
    <div class="forma-pagamento">Forma de Pagamento: <%= lista_transacao.get(i).getFormaPagamento() %></div>
    <div class="valor">Valor: R$ <%= lista_transacao.get(i).getValorTransicao()%></div>
</div>


<%}%>


<div class="white">
</div>

    
</body>
</html>