<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>

<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Informações da Conta</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conta.css">
</head>
<body>
<%
    // Variáveis de exemplo. Normalmente, esses valores viriam de um banco de dados ou de um objeto de sessão.
    String nomeUsuario = "Larissa de Souza";
    String email = "larissa@example.com";
    String telefone = "(11) 99999-9999";
    String cpf = "123.456.789-00";
    String conta = "1234567-8";
    String agencia = "1234-5";
    double saldo = 1000.00;
    String chavePix = "XXX.XXX.XXX-XX";
%>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Link</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Dropdown</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link disabled" aria-disabled="true">Disabled</a></li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<div class="profile-picture">
    <img src="${pageContext.request.contextPath}/images/gigante.jpeg" alt="Foto de Perfil">
</div>

<div class="user-info">
    <p><span>Nome de usuário:</span> <%= nomeUsuario %></p>
    <p><span>Email:</span> <%= email %></p>
    <p><span>Telefone:</span> <%= telefone %></p>
    <p><span>CPF:</span> <%= cpf %></p>
    <p><span>Conta:</span> <%= conta %></p>
    <p><span>Agência:</span> <%= agencia %></p>
</div>

<div class="conta">
    <h2>Conta</h2>
</div>

<div class="value">
    <h3>R$ <%= String.format("%.2f", saldo) %></h3>
</div>

<div class="pix">
    <h2>Minha chave pix</h2>
</div>

<div class="pix-container">
    <div class="pix-code" id="pixCode"><%= chavePix %></div>
    <button class="copy-btn" onclick="copyPix()">Copiar</button>
</div>

<script>
    function copyPix() {
        var pixCode = document.getElementById("pixCode").textContent;
        navigator.clipboard.writeText(pixCode).then(function() {
            alert("Código Pix copiado!");
        }, function() {
            alert("Falha ao copiar o código.");
        });
    }
</script>

<div class="myconta">
    <h2>Minha conta</h2>
</div>

<div class="conta-container">
    <div class="conta-code">
        <img src="${pageContext.request.contextPath}/images/cracha.png" alt="">
        <h4>Meus dados</h4>
    </div>
</div>

<div class="myconta">
    <h2>Preciso de ajuda</h2>
</div>

<div class="conta-container">
    <div class="conta-code">
        <img src="${pageContext.request.contextPath}/images/ponto_interrogacao.png" alt="">
        <h4>Central de ajuda</h4>
    </div>
</div>

<div class="button-container">
    <button class="square-button" id="btn1" onclick="alert('Notificação ativada')">
        <img src="https://cdn-icons-png.flaticon.com/512/1082/1082146.png" alt="Ícone 1">
    </button>
    <button class="square-button" id="btn2" onclick="alert('Segurança ativada')">
        <img src="https://cdn-icons-png.flaticon.com/512/102/102649.png" alt="Ícone 2">
    </button>
    <button class="square-button-1" id="btn3" onclick="window.location.href='outra-pagina.html'">
        <img src="${pageContext.request.contextPath}/images/investir.png" alt="Ícone 3">
    </button>
</div>

</body>
</html>
