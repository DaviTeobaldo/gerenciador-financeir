package com.gerenciadorfinancas.servlets;

public class Investimento {
	 private String nome;
	 private double valor;
	 private double rentabilidade;

	 public Investimento(String nome, double valor, double rentabilidade) {
	    this.nome = nome;
	    this.valor = valor;
	    this.rentabilidade = rentabilidade;
	}

	public String getNome() { return nome; }
	public double getValor() { return valor; }
	public double getRentabilidade() { return rentabilidade; }
}
