<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerenciamento de Transações</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/transacao.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

<header class="navbar navbar-expand-lg bg-success text-white p-3">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="#">Gerenciamento de Contas</a>
        <div class="navbar-nav">
            <a class="nav-link text-white" href="#">Transações e Dívidas</a>
            <a class="nav-link text-white" href="#">Relatórios</a>
            <a class="nav-link text-white" href="#">Fazer Login</a>
        </div>
    </div>
</header>

<div class="tab-container">
    <input type="radio" id="entrada" name="tab" onclick="showTab('entrada')" checked>
    <label class="tab" for="entrada">
        <h4><a href="javascript:void(0)" class="tab-link">Entrada</a></h4>
    </label>

    <input type="radio" id="saida" name="tab" onclick="showTab('saida')">
    <label class="tab" for="saida">
        <h4><a href="javascript:void(0)" class="tab-link">Saída</a></h4>
    </label>
</div>

<div class="content-container">
    <div id="entrada-content" class="tab-content" style="display: block;">
        <h2>Informações de Entrada</h2>
        <p>Aqui ficam as informações relacionadas à entrada.</p>
        <div class="hoje">
            <h3>Hoje</h3>
        </div>
        <div class="pix-container">
            <div class="data-hora">Data e Hora: 25/10/2024 22:30</div>
            <div class="nome">Nome: Larissa de Souza</div>
            <div class="forma-pagamento">Forma de Pagamento: Cartão de Débito</div>
            <div class="valor">Valor: R$ 150,00</div>
        </div>
        <div class="ontem">
            <h3>Ontem</h3>
        </div>
        <div class="pix-container">
            <div class="data-hora">Data e Hora: 24/10/2024 06:30</div>
            <div class="nome">Nome: Apple</div>
            <div class="forma-pagamento">Forma de Pagamento: Cartão de Crédito</div>
            <div class="valor">Valor: R$ 5,00</div>
        </div>
    </div>

    <div id="saida-content" class="tab-content" style="display: none;">
        <h2>Informações de Saída</h2>
        <p>Aqui ficam as informações relacionadas à saída.</p>
        <div class="hoje">
            <h3>Hoje</h3>
        </div>
        <div class="pix-container">
            <div class="data-hora">Data e Hora: 25/08/2024 14:30</div>
            <div class="nome">Nome: Diabet Enterprise</div>
            <div class="forma-pagamento">Forma de Pagamento: Cartão de Débito</div>
            <div class="valor">Valor: R$ -50,00</div>
        </div>
        <div class="ontem">
            <h3>Ontem</h3>
        </div>
        <div class="pix-container">
            <div class="data-hora">Data e Hora: 24/08/2024 07:00</div>
            <div class="nome">Nome: Cleiton Silva</div>
            <div class="forma-pagamento">Forma de Pagamento: Cartão de Crédito</div>
            <div class="valor">Valor: R$ -10,00</div>
        </div>
    </div>
</div>

<div class="white"></div>

<script>
    function showTab(tab) {
        // Esconde ambos os conteúdos
        document.getElementById('entrada-content').style.display = 'none';
        document.getElementById('saida-content').style.display = 'none';

        // Mostra o conteúdo selecionado
        if (tab === 'entrada') {
            document.getElementById('entrada-content').style.display = 'block';
        } else if (tab === 'saida') {
            document.getElementById('saida-content').style.display = 'block';
        }
    }
</script>

</body>
</html>
