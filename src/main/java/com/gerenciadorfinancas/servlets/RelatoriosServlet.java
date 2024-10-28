package com.gerenciadorfinancas.servlets;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/relatorio")
public class RelatoriosServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Exemplo de dados de receitas, despesas e investimentos
        List<Receita> receitas = Arrays.asList(
            new Receita("Janeiro", 1500.0),
            new Receita("Fevereiro", 2000.0),
            new Receita("Março", 1800.0)
        );

        List<Despesa> despesas = Arrays.asList(
            new Despesa("Janeiro", 1200.0),
            new Despesa("Fevereiro", 1000.0),
            new Despesa("Março", 1300.0)
        );

        List<Investimento> investimentos = Arrays.asList(
            new Investimento("Investimento A", 5000.0, 2.5),
            new Investimento("Investimento B", 3000.0, 3.0)
        );

        // Calcular indicadores financeiros
        double receitaTotal = receitas.stream().mapToDouble(Receita::getValor).sum();
        double despesaTotal = despesas.stream().mapToDouble(Despesa::getValor).sum();
        double investimentoTotal = investimentos.stream().mapToDouble(Investimento::getValor).sum();

        // Passar os dados para o JSP
        request.setAttribute("receitas", receitas);
        request.setAttribute("despesas", despesas);
        request.setAttribute("investimentos", investimentos);
        request.setAttribute("receitaTotal", receitaTotal);
        request.setAttribute("despesaTotal", despesaTotal);
        request.setAttribute("investimentoTotal", investimentoTotal);

        request.getRequestDispatcher("/relatorio.jsp").forward(request, response);
    }
}
