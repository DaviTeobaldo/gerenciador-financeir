package com.gerenciadorfinancas.servlets;

public class Despesa {
	private String mes;
    private double valor;

    public Despesa(String mes, double valor) {
        this.mes = mes;
        this.valor = valor;
    }

    public String getMes() { return mes; }
    public double getValor() { return valor; }
}
