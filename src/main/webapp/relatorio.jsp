<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard Financeiro</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="relatorio.css">
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

  <main class="container my-4">
    <h1>Olá, <%= request.getAttribute("user") %>!</h1>
    <p>Saldo:<br><span class="text-success fs-4">R$${saldo}</span></p>

    <!-- Extrato -->
    <section class="mb-4">
      <h3>Extrato</h3>
      <div class="row">
        <div class="col-md-6">
          <h5 class="text-success">Entradas</h5>
          <div class="border p-3 mb-2">
            <c:forEach var="receita" items="${receitas}">
              <p><span class="text-success">Receita</span> - ${receita.mes}: R$${receita.valor}</p>
            </c:forEach>
          </div>
        </div>

        <div class="col-md-6">
          <h5 class="text-danger">Saídas</h5>
          <div class="border p-3 mb-2">
            <c:forEach var="despesa" items="${despesas}">
              <p><span class="text-danger">Despesa</span> - ${despesa.mes}: R$${despesa.valor}</p>
            </c:forEach>
          </div>
        </div>
      </div>
    </section>

    <!-- Tabela de Investimentos -->
    <section class="mb-5">
      <h3>Investimentos</h3>
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Nome</th>
            <th>Valor (R$)</th>
            <th>Rentabilidade (%)</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="investimento" items="${investimentos}">
            <tr>
              <td>${investimento.nome}</td>
              <td>R$ ${investimento.valor}</td>
              <td>${investimento.rentabilidade}%</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </section>

    <!-- Indicadores Financeiros -->
    <section class="mb-5">
      <h3>Indicadores Financeiros</h3>
      <div class="row">
        <div class="col-md-4">
          <div class="indicator-card p-3">
            <h5>Receita Total</h5>
            <p id="receitaTotal">R$ ${receitaTotal}</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="indicator-card p-3">
            <h5>Despesa Total</h5>
            <p id="despesaTotal">R$ ${despesaTotal}</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="indicator-card p-3">
            <h5>Investimento Total</h5>
            <p id="investimentoTotal">R$ ${investimentoTotal}</p>
          </div>
        </div>
      </div>
    </section>
  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

  <script>
    // Configurar gráfico de Receitas vs Despesas usando dados do JSP
    const ctx = document.getElementById('graficoReceitasDespesas').getContext('2d');
    const receitas = ${receitas.stream().map(r -> r.getValor()).collect(Collectors.toList())};
    const despesas = ${despesas.stream().map(d -> d.getValor()).collect(Collectors.toList())};
    const meses = ${receitas.stream().map(r -> r.getMes()).collect(Collectors.toList())};

    new Chart(ctx, {
      type: 'bar',
      data: {
        labels: meses,
        datasets: [
          {
            label: 'Receitas',
            data: receitas,
            backgroundColor: 'green'
          },
          {
            label: 'Despesas',
            data: despesas,
            backgroundColor: 'red'
          }
        ]
      },
      options: {
        responsive: true
      }
    });
  </script>
</body>
</html>

