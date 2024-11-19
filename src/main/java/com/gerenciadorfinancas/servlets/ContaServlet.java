// src/main/java/com/gerenciadorfinancas/servlets/ContaServlet.java
package com.gerenciadorfinancas.servlets;

import com.gerenciadorfinancas.model.Conta;
import com.gerenciadorfinancas.service.ContaService;
import com.gerenciadorfinancas.util.DatabaseConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;

public class ContaServlet extends HttpServlet {
    private ContaService contaService;

    public void init() throws ServletException {
        try (Connection connection = DatabaseConnection.getConnection()) {
            contaService = new ContaService(new ContaDAOImpl(connection));
        } catch (Exception e) {
            throw new ServletException("Erro ao inicializar ContaService", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Implementação do CRUD para contas
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Implementação do CRUD para contas
    }
}
