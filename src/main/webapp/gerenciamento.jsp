<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escolha a Conta</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gerenciamento.css">
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

    <main class="content">
        <h1>Olá! Escolha a Conta à ser acessada</h1>

        <div class="account-list">
            <!-- Conta Exemplo -->
            <div class="account-item">
                <span class="account-name">F******* P*</span>
                <span class="balance">Saldo:R$</span>
                <span class="account-number">*62547-6</span>
                <button class="btn btn-sm btn-primary" onclick="editAccount(0)">Editar</button>
                <button class="btn btn-sm btn-danger" onclick="deleteAccount(0)">Excluir</button>
            </div>

            <!-- Conta Exemplo -->
            <div class="account-item">
                <span class="account-name">Raimundo Dias</span>
                <span class="balance">Saldo:R$2345,67</span>
                <span class="account-number">.658.954-*</span>
                <button class="btn btn-sm btn-primary" onclick="editAccount(1)">Editar</button>
                <button class="btn btn-sm btn-danger" onclick="deleteAccount(1)">Excluir</button>
            </div>

            <!-- Conta Exemplo -->
            <div class="account-item">
                <span class="account-name">P**** S**</span>
                <span class="balance">Saldo:R$</span>
                <span class="account-number">.658.954-*</span>
                <button class="btn btn-sm btn-primary" onclick="editAccount(2)">Editar</button>
                <button class="btn btn-sm btn-danger" onclick="deleteAccount(2)">Excluir</button>
            </div>

            <div class="add-account" onclick="openAddAccountModal()">
                <span class="add-icon">+</span>
                <span class="add-text">Adicionar Conta</span>
            </div>
        </div>
    </main>

    <!-- Modal Adicionar Conta -->
    <div class="modal fade" id="addAccountModal" tabindex="-1" aria-labelledby="addAccountModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addAccountModalLabel">Adicionar Nova Conta</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="addAccountForm">
                        <div class="mb-3">
                            <label for="newName" class="form-label">Nome do Titular</label>
                            <input type="text" class="form-control" id="newName" required>
                        </div>
                        <div class="mb-3">
                            <label for="newBalance" class="form-label">Saldo</label>
                            <input type="number" class="form-control" id="newBalance" required>
                        </div>
                        <div class="mb-3">
                            <label for="newNumber" class="form-label">Número da Conta</label>
                            <input type="text" class="form-control" id="newNumber" required>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary" onclick="addAccount()">Adicionar Conta</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Editar Conta -->
    <div class="modal fade" id="editAccountModal" tabindex="-1" aria-labelledby="editAccountModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editAccountModalLabel">Editar Conta</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editAccountForm">
                        <div class="mb-3">
                            <label for="editName" class="form-label">Nome do Titular</label>
                            <input type="text" class="form-control" id="editName" required>
                        </div>
                        <div class="mb-3">
                            <label for="editBalance" class="form-label">Saldo</label>
                            <input type="number" class="form-control" id="editBalance" required>
                        </div>
                        <div class="mb-3">
                            <label for="editNumber" class="form-label">Número da Conta</label>
                            <input type="text" class="form-control" id="editNumber" required>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary" onclick="updateAccount()">Salvar alterações</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Confirmar Exclusão -->
    <div class="modal fade" id="deleteAccountModal" tabindex="-1" aria-labelledby="deleteAccountModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteAccountModalLabel">Excluir Conta</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Tem certeza que deseja excluir esta conta?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-danger" onclick="confirmDelete()">Excluir</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="gerenciamento.js"></script>
</body>

</html>
