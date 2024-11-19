// Carregar dados financeiros do localStorage ou definir dados padrão
const dadosFinanceiros = JSON.parse(localStorage.getItem('dadosFinanceiros')) || {
    receitas: [],
    despesas: [],
    investimentos: []
};

// Função para salvar dados no localStorage
function salvarDados() {
    localStorage.setItem('dadosFinanceiros', JSON.stringify(dadosFinanceiros));
}

// Função para preencher cards de investimentos na seção "Investimentos e poupança"
function preencherInvestimentos() {
    const investmentCards = document.getElementById('investmentCards');
    investmentCards.innerHTML = '';  // Limpar cards

    dadosFinanceiros.investimentos.forEach((investimento, index) => {
        const card = `
            <div class="col">
                <div class="investment-card p-3">
                    <p>${investimento.nome}<br>Total investido: R$${investimento.valor.toFixed(2)}</p>
                    <p>Rentabilidade: ${investimento.rentabilidade}%</p>
                    <button class="btn btn-danger w-100" onclick="removerInvestimento(${index})">Remover</button>
                </div>
            </div>`;
        investmentCards.innerHTML += card;
    });
}

// Função para remover um investimento
function removerInvestimento(index) {
    dadosFinanceiros.investimentos.splice(index, 1);
    salvarDados();
    preencherInvestimentos();
    atualizarTabelaInvestimentos();
    mostrarIndicadores();
}

// Função para gerar gráfico de Receitas vs Despesas
function gerarGraficoReceitasDespesas() {
    const ctx = document.getElementById('graficoReceitasDespesas').getContext('2d');
    const receitas = dadosFinanceiros.receitas.map(item => item.valor);
    const despesas = dadosFinanceiros.despesas.map(item => item.valor);
    const meses = dadosFinanceiros.receitas.map(item => item.mes);

    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: meses,
            datasets: [
                { label: 'Receitas', data: receitas, backgroundColor: 'green' },
                { label: 'Despesas', data: despesas, backgroundColor: 'red' }
            ]
        },
        options: { responsive: true }
    });
}

// Função para preencher a tabela de investimentos
function atualizarTabelaInvestimentos() {
    const tabela = document.getElementById("tabelaInvestimentos");
    tabela.innerHTML = "";
    dadosFinanceiros.investimentos.forEach(investimento => {
        const row = `
            <tr>
                <td>${investimento.nome}</td>
                <td>R$${investimento.valor.toFixed(2)}</td>
                <td>${investimento.rentabilidade}%</td>
            </tr>`;
        tabela.innerHTML += row;
    });
}

// Função para mostrar indicadores financeiros
function mostrarIndicadores() {
    const receitaTotal = dadosFinanceiros.receitas.reduce((acc, item) => acc + item.valor, 0);
    const despesaTotal = dadosFinanceiros.despesas.reduce((acc, item) => acc + item.valor, 0);
    const investimentoTotal = dadosFinanceiros.investimentos.reduce((acc, item) => acc + item.valor, 0);

    document.getElementById('receitaTotal').textContent = `R$ ${receitaTotal.toFixed(2)}`;
    document.getElementById('despesaTotal').textContent = `R$ ${despesaTotal.toFixed(2)}`;
    document.getElementById('investimentoTotal').textContent = `R$ ${investimentoTotal.toFixed(2)}`;
}

// Função para adicionar um novo investimento
function addInvestment() {
    const nome = document.getElementById('investmentName').value;
    const valor = parseFloat(document.getElementById('investmentValue').value);
    const rentabilidade = parseFloat(document.getElementById('investmentReturn').value);

    if (!nome || isNaN(valor) || isNaN(rentabilidade)) {
        alert('Preencha todos os campos corretamente.');
        return;
    }

    const investimento = { nome, valor, rentabilidade };
    dadosFinanceiros.investimentos.push(investimento);
    salvarDados();

    atualizarTabelaInvestimentos();
    preencherInvestimentos();
    mostrarIndicadores();

    document.getElementById("investmentForm").reset();
    const modal = bootstrap.Modal.getInstance(document.getElementById('addInvestmentModal'));
    modal.hide();
}

// Inicializar e renderizar dados ao carregar a página
document.addEventListener("DOMContentLoaded", () => {
    document.getElementById("saveInvestmentBtn").addEventListener("click", addInvestment);
    atualizarTabelaInvestimentos();
    preencherInvestimentos();
    mostrarIndicadores();
    gerarGraficoReceitasDespesas();
});
