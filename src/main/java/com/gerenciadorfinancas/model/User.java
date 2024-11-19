package com.gerenciadorfinancas.model;

public class User {
    private String nome;
    private String email;
    private String telefone;
    private String cpf;
    private String conta;
    private String agencia;

    // Construtor, getters e setters
    public User(String nome, String email, String telefone, String cpf, String conta, String agencia) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.cpf = cpf;
        this.conta = conta;
        this.agencia = agencia;
    }

    // Getters e Setters
    public String getNome() { return nome; }
    public String getEmail() { return email; }
    public String getTelefone() { return telefone; }
    public String getCpf() { return cpf; }
    public String getConta() { return conta; }
    public String getAgencia() { return agencia; }
}
