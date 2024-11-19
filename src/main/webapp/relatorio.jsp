<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
    // Valores fictícios para variáveis JSP
    String user = "Gerson Rodrigues";
    double saldo = 1500.75;
    String another = "Breno Junior";
    double pixValue = 250.50;
    String investmentName = "Ações";
    double investmentValue = 5000.00;
%>

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
                <a class="nav-link text-white" href="transacao.jsp">Transações e Dívidas</a>
                <a class="nav-link text-white" href="relatorios.jsp">Relatórios</a>
                <a class="nav-link text-white" href="index.jsp">Fazer Login</a>
            </div>
        </div>
    </header>

    <main class="container my-4">
        <h1>Olá, <%= user %>!</h1>
        <p>Saldo:<br><span class="text-success fs-4">R$<%= saldo %></span></p>

        <section class="mb-4">
            <h3>Extrato</h3>
            <div class="row">
                <div class="col-md-6">
                    <h5 class="text-success">Entradas</h5>
                    <div class="border p-3 mb-2">
                        <p><span class="text-success">Pix recebido</span> de <%= another %><br>R$<%= pixValue %><br>Data: mm/dd/yy</p>
                        <p><span class="text-success">Pix recebido</span> de <%= another %><br>R$<%= pixValue %><br>Data: mm/dd/yy</p>
                        <p><span class="text-success">Pix recebido</span> de <%= another %><br>R$<%= pixValue %><br>Data: mm/dd/yy</p>
                    </div>
                </div>

                <div class="col-md-6">
                    <h5 class="text-danger">Saídas</h5>
                    <div class="border p-3 mb-2">
                        <p><span class="text-danger">Pix enviado</span> para <%= another %><br>R$<%= pixValue %><br>Data: mm/dd/yy</p>
                        <p><span class="text-danger">Pix enviado</span> para <%= another %><br>R$<%= pixValue %><br>Data: mm/dd/yy</p>
                        <p><span class="text-danger">Pix enviado</span> para <%= another %><br>R$<%= pixValue %><br>Data: mm/dd/yy</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="border p-3" style="border-radius: 8px;box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);">
            <h3>Investimentos e poupança</h3>
            <div class="row row-cols-2 row-cols-md-4 g-2">
                <div class="col">
                    <div class="investment-card p-3">
                        <p><%= investmentName %><br>Total investido: R$<%= investmentValue %></p>
                        <button class="btn btn-warning w-100">Detalhes</button>
                    </div>
                </div>
                <div class="col">
                    <div class="investment-card p-3">
                        <p><%= investmentName %><br>Total investido: R$<%= investmentValue %></p>
                        <button class="btn btn-warning w-100">Detalhes</button>
                    </div>
                </div>
                <div class="col">
                    <div class="investment-card p-3">
                        <p><%= investmentName %><br>Total investido: R$<%= investmentValue %></p>
                        <button class="btn btn-warning w-100">Detalhes</button>
                    </div>
                </div>
                <div class="col">
                    <div class="investment-card p-3 text-center">
                        <button class="btn btn-secondary btn-lg" data-bs-toggle="modal" data-bs-target="#addInvestmentModal">+</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Modal de Adicionar Investimento -->
        <div class="modal fade" id="addInvestmentModal" tabindex="-1" aria-labelledby="addInvestmentModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addInvestmentModalLabel">Adicionar Novo Investimento</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="investmentForm">
                            <div class="mb-3">
                                <label for="investmentName" class="form-label">Nome do Investimento</label>
                                <input type="text" id="investmentName" class="form-control" placeholder="Nome do investimento" required>
                            </div>
                            <div class="mb-3">
                                <label for="investmentValue" class="form-label">Valor Investido (R$)</label>
                                <input type="number" id="investmentValue" class="form-control" placeholder="Valor investido" required>
                            </div>
                            <div class="mb-3">
                                <label for="investmentReturn" class="form-label">Rentabilidade (%)</label>
                                <input type="number" id="investmentReturn" class="form-control" placeholder="Rentabilidade (%)" required>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        <button type="button" class="btn btn-success" id="saveInvestmentBtn">Salvar</button>
                    </div>
                </div>
            </div>
        </div>
        
    </main>

    <div class="container my-4">
        <h1>Relatórios Financeiros</h1>

        <!-- Gráfico de Receitas e Despesas -->
        <section class="mb-5">
            <h3>Receitas vs Despesas</h3>
            <canvas id="graficoReceitasDespesas"></canvas>
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
                <tbody id="tabelaInvestimentos"></tbody>
            </table>
        </section>

        <!-- Indicadores Financeiros -->
        <section class="mb-5">
            <h3>Indicadores Financeiros</h3>
            <div class="row">
                <div class="col-md-4">
                    <div class="indicator-card p-3">
                        <h5>Receita Total</h5>
                        <p id="receitaTotal">R$ 0</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="indicator-card p-3">
                        <h5>Despesa Total</h5>
                        <p id="despesaTotal">R$ 0</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="indicator-card p-3">
                        <h5>Investimentos Totais</h5>
                        <p id="investimentoTotal">R$ 0</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
	<div class="modal fade" id="addInvestmentModal" tabindex="-1" aria-labelledby="addInvestmentModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addInvestmentModalLabel">Adicionar Novo Investimento</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="investmentForm">
                        <div class="mb-3">
                            <label for="investmentName" class="form-label">Nome do Investimento</label>
                            <input type="text" id="investmentName" class="form-control" placeholder="Nome do investimento" required>
                        </div>
                        <div class="mb-3">
                            <label for="investmentValue" class="form-label">Valor Investido (R$)</label>
                            <input type="number" id="investmentValue" class="form-control" placeholder="Valor investido" required>
                        </div>
                        <div class="mb-3">
                            <label for="investmentReturn" class="form-label">Rentabilidade (%)</label>
                            <input type="number" id="investmentReturn" class="form-control" placeholder="Rentabilidade (%)" required>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-success" id="saveInvestmentBtn">Salvar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="dashboard.js"></script>
</body>
</html>
