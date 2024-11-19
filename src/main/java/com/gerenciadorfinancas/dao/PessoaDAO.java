package com.gerenciadorfinancas.dao;

import com.gerenciadorfinancas.model.Pessoa;
import com.gerenciadorfinancas.util.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PessoaDAO {

    public void create(Pessoa pessoa) throws SQLException {
        String sql = "INSERT INTO pessoa (nomeUsuario, email, senha) VALUES (?, ?, ?)";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, pessoa.getNomeUsuario());
            stmt.setString(2, pessoa.getEmail());
            stmt.setString(3, pessoa.getSenha());
            stmt.executeUpdate();
        }
    }

    public Pessoa read(int id) throws SQLException {
        String sql = "SELECT * FROM pessoa WHERE id = ?";
        Pessoa pessoa = null;

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                pessoa = new Pessoa();
                pessoa.setId(rs.getInt("id"));
                pessoa.setNomeUsuario(rs.getString("nomeUsuario"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setSenha(rs.getString("senha"));
            }
        }
        return pessoa;
    }

    public List<Pessoa> readAll() throws SQLException {
        String sql = "SELECT * FROM pessoa";
        List<Pessoa> pessoas = new ArrayList<>();

        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Pessoa pessoa = new Pessoa();
                pessoa.setId(rs.getInt("id"));
                pessoa.setNomeUsuario(rs.getString("nomeUsuario"));
                pessoa.setEmail(rs.getString("email"));
                pessoa.setSenha(rs.getString("senha"));
                pessoas.add(pessoa);
            }
        }
        return pessoas;
    }

    public void update(Pessoa pessoa) throws SQLException {
        String sql = "UPDATE pessoa SET nomeUsuario = ?, email = ?, senha = ? WHERE id = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, pessoa.getNomeUsuario());
            stmt.setString(2, pessoa.getEmail());
            stmt.setString(3, pessoa.getSenha());
            stmt.setInt(4, pessoa.getId());
            stmt.executeUpdate();
        }
    }

    public void delete(int id) throws SQLException {
        String sql = "DELETE FROM pessoa WHERE id = ?";

        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }
}
