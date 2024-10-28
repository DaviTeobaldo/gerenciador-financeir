package com.gerenciadorfinancas.servlets;

public class Receita {
	private String mes;
    private double valor;

    public Receita(String mes, double valor) {
        this.mes = mes;
        this.valor = valor;
    }

    public String getMes() { return mes; }
    public double getValor() { return valor; }
}
