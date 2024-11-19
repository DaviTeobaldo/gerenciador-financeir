document.addEventListener('DOMContentLoaded', function() {
    const accountList = document.querySelector('.account-list');
    let accounts = [
        {name: 'F******* P*', balance: 5000, number: '*62547-6'},
        {name: 'Raimundo Dias', balance: 2345.67, number: '.658.954-*'},
        {name: 'P**** S**', balance: 1000, number: '.658.954-*'}
    ];

    // Função para atualizar a lista de contas
    function updateAccountList() {
        accountList.innerHTML = ''; // Limpa a lista de contas
        accounts.forEach((account, index) => {
            const accountItem = document.createElement('div');
            accountItem.classList.add('account-item');
            accountItem.innerHTML = `
                <span class="account-name">${account.name}</span>
                <span class="balance">Saldo: R$${account.balance.toFixed(2)}</span>
                <span class="account-number">${account.number}</span>
                <button class="btn btn-sm btn-primary" onclick="editAccount(${index})">Editar</button>
                <button class="btn btn-sm btn-danger" onclick="deleteAccount(${index})">Excluir</button>
            `;
            accountList.appendChild(accountItem);
        });

        // Botão de Adicionar Conta
        const addAccountButton = document.createElement('div');
        addAccountButton.classList.add('add-account');
        addAccountButton.innerHTML = `<span class="add-icon">+</span><span class="add-text">Adicionar Conta</span>`;
        addAccountButton.onclick = openAddAccountModal;
        accountList.appendChild(addAccountButton);
    }

    // Função para adicionar uma nova conta
    window.openAddAccountModal = function() {
        const addAccountModal = new bootstrap.Modal(document.getElementById('addAccountModal'));
        addAccountModal.show();
    };

    window.addAccount = function() {
        const name = document.getElementById('newName').value;
        const balance = parseFloat(document.getElementById('newBalance').value);
        const number = document.getElementById('newNumber').value;
        const newAccount = { name, balance, number };

        accounts.push(newAccount);
        updateAccountList();

        const addAccountModal = bootstrap.Modal.getInstance(document.getElementById('addAccountModal'));
        addAccountModal.hide();
    };

    // Função para editar uma conta
    window.editAccount = function(index) {
        const account = accounts[index];
        document.getElementById('editName').value = account.name;
        document.getElementById('editBalance').value = account.balance;
        document.getElementById('editNumber').value = account.number;

        const editAccountModal = new bootstrap.Modal(document.getElementById('editAccountModal'));
        editAccountModal.show();

        // Atualiza a conta após editar
        window.updateAccount = function() {
            accounts[index].name = document.getElementById('editName').value;
            accounts[index].balance = parseFloat(document.getElementById('editBalance').value);
            accounts[index].number = document.getElementById('editNumber').value;

            updateAccountList();

            const editAccountModal = bootstrap.Modal.getInstance(document.getElementById('editAccountModal'));
            editAccountModal.hide();
        };
    };

    // Função para excluir uma conta
    window.deleteAccount = function(index) {
        const deleteAccountModal = new bootstrap.Modal(document.getElementById('deleteAccountModal'));
        deleteAccountModal.show();

        window.confirmDelete = function() {
            accounts.splice(index, 1);
            updateAccountList();

            const deleteAccountModal = bootstrap.Modal.getInstance(document.getElementById('deleteAccountModal'));
            deleteAccountModal.hide();
        };
    };

    // Inicializa a lista de contas
    updateAccountList();
});
