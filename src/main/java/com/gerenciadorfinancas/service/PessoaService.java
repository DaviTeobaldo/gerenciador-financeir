package com.gerenciadorfinancas.service;

import com.gerenciadorfinancas.dao.PessoaDAO;
import com.gerenciadorfinancas.model.Pessoa;

import java.sql.SQLException;
import java.util.List;

public class PessoaService {
    private PessoaDAO pessoaDAO;

    public PessoaService() {
        this.pessoaDAO = new PessoaDAO();
    }

    public void adicionarPessoa(Pessoa pessoa) throws SQLException {
        pessoaDAO.create(pessoa);
    }

    public Pessoa buscarPessoa(int id) throws SQLException {
        return pessoaDAO.read(id);
    }

    public List<Pessoa> listarPessoas() throws SQLException {
        return pessoaDAO.readAll();
    }

    public void atualizarPessoa(Pessoa pessoa) throws SQLException {
        pessoaDAO.update(pessoa);
    }

    public void excluirPessoa(int id) throws SQLException {
        pessoaDAO.delete(id);
    }
}
