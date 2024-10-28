<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Início</title>
</head>
<body>

  <nav class="navbar navbar-expand-lg">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <img src="${pageContext.request.contextPath}/img/Marca(3).png" alt="">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link text-light" href="#">Gerenciamento de contas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Transações e Dívidas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="#">Relatórios</a>
        </li>
      </ul>
    </div>
    <div class="login">
      <ul>
        <li>Login</li>
        <li>Inscrever-se</li>
      </ul>
    </div>
  </nav>

  <div class="info">
    <h1>Conheça os benefícios da nossa empresa.</h1>
    <div class="coluna">
      <div class="texto">
        <h4>Controle Total com Nosso App Financeiro</h4>
        <p>Gerencie suas finanças de forma simples e eficaz com nosso aplicativo...</p>
      </div>
      <img src="${pageContext.request.contextPath}/img/Finanças.jpg" alt="">
    </div>

    <div class="coluna">
      <img src="${pageContext.request.contextPath}/img/fundo-de-economia-e-financas-estatisticas-de-negocios-financeiros-com-casticais-e-grafico-de-barras_120819-2020.avif" alt="">
      <div class="texto">
        <h4>Simplifique Suas Finanças Conosco</h4>
        <p>Nosso app de controle financeiro pessoal oferece uma solução fácil para acompanhar gastos...</p>
      </div>
    </div>

    <div class="coluna">
      <div class="texto">
        <h4>Seu Aliado no Controle Financeiro</h4>
        <p>Nossa empresa traz um aplicativo que transforma o seu gerenciamento...</p>
      </div>
      <img src="${pageContext.request.contextPath}/img/financas-sustentaveis.jpg" alt="">
    </div>
  </div>

  <hr>

  <div class="nos">
    <h2>Sobre nós</h2>
    <div class="TextNos">
      <div class="qualquer">
        <img src="${pageContext.request.contextPath}/img/Tecnologia.jpg" alt="">
        <p>Na nossa empresa, simplificamos o controle financeiro pessoal com tecnologia de ponta.</p>
      </div>
      <div class="qualquer">
        <img src="${pageContext.request.contextPath}/img/app.png" alt="">  
        <p>Criamos um aplicativo intuitivo que facilita o acompanhamento de receitas e despesas e relatórios detalhados.</p>
      </div>
      <div class="qualquer">
        <img src="${pageContext.request.contextPath}/img/areas-de-atuacao-na-administracao-1600x900.jpg" alt="">
        <p>Nossa equipe é dedicada a oferecer a melhor experiência para nossos usuários...</p>
      </div>
      <div class="qualquer">
        <img src="${pageContext.request.contextPath}/img/mulher sorrindo.avif" alt="">
        <p>Descubra como nosso aplicativo pode transformar sua vida financeira e trazer mais clareza e controle...</p>
      </div>
    </div>
  </div>

  <hr>

  <div class="contato">
    <h2>Contato</h2>
    <form action="" name="contato" method="get" class="formcomentário">
      <div class="email">
        <label for="html">Email:</label>
        <input type="email">
      </div>
      <div class="critica">
        <label for="Contato">Digite sua crítica:</label>
        <textarea cols="10" rows="10"></textarea>
      </div>
      <button> Mandar Mensagem</button>
    </form>
  </div>

  <footer>
    <div class="logorede">
      <div class="log">
        <img src="${pageContext.request.contextPath}/img/Marca(3).png" class="logo" alt="">
      </div>
      <div class="redes">
        <img src="${pageContext.request.contextPath}/img/facebook.png" alt="">
        <img src="${pageContext.request.contextPath}/img/Instagram.png" alt="">
        <img src="${pageContext.request.contextPath}/img/Linkedin.png" alt="">
        <img src="${pageContext.request.contextPath}/img/channels4_profile.jpg" alt="">
      </div>
    </div>
    <hr>

    <div class="opcao" style="margin-top: 10px;">
      <div class="quicklink" id="info">
        <p style="color: white;">Links Rápidos</p>
        <ul>
          <li><p><a href="#">Gerenciamento de Contas</a></p></li>
          <li><p><a href="#">Relatórios</a></p></li>
          <li><p><a href="#">Transações e Dívidas</a></p></li>
        </ul>
      </div>

      <div class="Cont" id="info">
        <p style="color: #fff;">Contate-nos</p>
        <ul>
          <li><p>Email: ContBank@gmail.com</p></li>
          <li><p>Número: (11) 93455-2626</p></li>
          <li><p>Localização (Mapa): Etec Cotia - SP</p></li>
        </ul>
      </div>

      <div class="Integrantes" id="info">
        <p style="color: #fff;">Integrantes</p>
        <ul>
          <li><p>Guilherme Rodrigues da Silva</p></li>
          <li><p>Davi Oliveira Teobaldo</p></li>
          <li><p>Felipe Hidetoshi Nozue</p></li>
          <li><p>Gustavo de Souza Mota</p></li>
          <li><p>Fabrício Paes</p></li>
        </ul>
      </div>

      <form action="" class="Inscricao" id="info">
        <p style="color: #fff;">Estamos Dispostos a ouvir suas propostas</p>
        <input type="email">
        <button>Inscrever-se</button>
      </form>
    </div>
  </footer>

</body>
</html>
