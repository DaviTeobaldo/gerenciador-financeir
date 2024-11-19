<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerenciamento de Contas</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/conta.css">
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

    <%
	    // Simulando um "login" e atribuindo dados reais ou mais plausíveis
	    String usuario = (String) session.getAttribute("usuario");
	    if (usuario == null) {
	        // Suponhamos que você receba esses dados do banco de dados ou da lógica do seu sistema
	        usuario = "José Henrique da Silva";
	        session.setAttribute("usuario", usuario);
	    }
	    
	    String email = (String) session.getAttribute("email");
	    if (email == null) {
	        email = "jose.silva@email.com";
	        session.setAttribute("email", email);
	    }
	
	    String telefone = (String) session.getAttribute("telefone");
	    if (telefone == null) {
	        telefone = "(11) 99988-7777";
	        session.setAttribute("telefone", telefone);
	    }
	
	    String cpf = (String) session.getAttribute("cpf");
	    if (cpf == null) {
	        cpf = "123.456.789-00";
	        session.setAttribute("cpf", cpf);
	    }
	
	    String conta = (String) session.getAttribute("conta");
	    if (conta == null) {
	        conta = "9876543-2";
	        session.setAttribute("conta", conta);
	    }
	
	    String agencia = (String) session.getAttribute("agencia");
	    if (agencia == null) {
	        agencia = "4321-0";
	        session.setAttribute("agencia", agencia);
	    }
	%>


    <div class="profile-picture">
        <img src="${pageContext.request.contextPath}/img/Finanças.jpg" alt="Foto de Perfil">
    </div>
    <div class="user-info">
        <p><span>Nome de usuário:</span> <%= usuario %></p>
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
        <h3>R$ 1.250,75</h3>
    </div>
    
    <div class="pix">
        <h2>Minha chave pix</h2>
    </div>

    <div class="pix-container">
        <div class="pix-code" id="pixCode">123.456.789-00</div>
        <button class="copy-btn" onclick="copyPix()">Copiar</button>
    </div>

    <script>
        // Função para copiar o código PIX
        function copyPix() {
            var pixCode = document.getElementById("pixCode").textContent;
            navigator.clipboard.writeText(pixCode).then(function() {
                alert("Código Pix copiado!");
            }, function() {
                alert("Falha ao copiar o código.");
            });
        }

        // Armazenamento em localStorage
        function storeUserData() {
            const userData = {
                usuario: '<%= usuario %>',
                email: '<%= email %>',
                telefone: '<%= telefone %>',
                cpf: '<%= cpf %>',
                conta: '<%= conta %>',
                agencia: '<%= agencia %>'
            };
            localStorage.setItem('userData', JSON.stringify(userData));
        }

        function loadUserData() {
            const userData = JSON.parse(localStorage.getItem('userData'));
            if (userData) {
                document.querySelector('.user-info').innerHTML = `
                    <p><span>Nome de usuário:</span> ${userData.usuario}</p>
                    <p><span>Email:</span> ${userData.email}</p>
                    <p><span>Telefone:</span> ${userData.telefone}</p>
                    <p><span>CPF:</span> ${userData.cpf}</p>
                    <p><span>Conta:</span> ${userData.conta}</p>
                    <p><span>Agência:</span> ${userData.agencia}</p>
                `;
            }
        }

        // Chama as funções ao carregar a página
        window.onload = function() {
            loadUserData();
        };
    </script>

    <div class="myconta">
        <h2>Minha conta</h2>
    </div>

    <div class="conta-container">
        <div class="conta-code">
            <img src="${pageContext.request.contextPath}/img/cracha.png" alt="">
            <h4>Meus dados</h4>
        </div>
    </div>

    <div class="myconta">
        <h2>Preciso de ajuda</h2>
    </div>

    <div class="conta-container">
        <div class="conta-code">
            <img src="https://cdn-icons-png.flaticon.com/512/25/25400.png" alt="">
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
            <img src="${pageContext.request.contextPath}/img/investir.png" alt="Ícone 3">
        </button>
    </div>

    <div class="branco"></div>
</body>
</html>
