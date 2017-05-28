package br.com.casadocodigo.loja.daos;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

@Repository
@Transactional
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager manager;

	public void gravar(Produto produto) {
		manager.persist(produto);
	}

	public List<Produto> listar() {
		return manager.createQuery("select p from Produto p", Produto.class).getResultList();
	}

	public Produto find(Integer id) {
		return this.manager.createQuery("select p from Produto p " + " left join fetch p.precos preco where p.id = :id",
				Produto.class).setParameter("id", id).getSingleResult();
	}

	public BigDecimal somaPrecosPorTipoPreco(TipoPreco tipo) {
		return this.manager
				.createQuery("select sum(preco.valor) from Produto p "
						+ " join p.precos preco where preco.tipo = :tipo", BigDecimal.class)
				.setParameter("tipo", tipo).getSingleResult();
	}
}
