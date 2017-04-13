package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;

public class DadosPagamento {

	private BigDecimal valor;

	public DadosPagamento(BigDecimal valor) {
		this.valor = valor;
	}

	public DadosPagamento() {
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

}
