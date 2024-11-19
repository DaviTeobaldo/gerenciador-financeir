package com.gerenciadorfinancas.model;

public class Pessoa {
	private int id;
    private String nomeUsuario;
    private String email;
    private String senha;
    
    public int getId() {
        return id;
    }

    public String getNomeUsuario() {
        return nomeUsuario;
    }

    public String getEmail() {
        return email;
    }

    // Setter for id (usually not recommended to modify ID after creation)
    public void setId(int id) {
        this.id = id;
    }

    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getSenha() { 
    	return senha;
    }
    public void setSenha(String senha) {
    	this.senha = senha;
    }
}
