<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Seu carrinho de compras">

	<jsp:attribute name="extraScripts">
	<script>
		//<![CDATA[
		$(function() {

			$('#checkout').click(function() {
				_gaq.push([ '_trackPageview', '/checkout/finalizaCompra' ]);
			});

			$('.book-suggest').click(function() {
				var book = $(this).data('book');
				_gaq.push([ '_trackEvent', 'Recomendação', 'Livro', book ]);
			});
		});
		//]]>
	</script>
	<noscript><img alt="" src="https://www.facebook.com/offsite_event.php?id=6009930053200&amp;value=0&amp;currency=USD"></noscript>
</jsp:attribute>
	<jsp:body>
	<section class="container middle">
		<h2 id="cart-title">Seu carrinho de compras</h2>


		<table id="cart-table">
			<colgroup>
				<col class="item-col" />
				<col class="item-price-col" />
				<col class="item-quantity-col" />
				<col class="line-price-col" />
				<col class="delete-col" />
			</colgroup>
			<thead>
				<tr>
					<th class="cart-img-col"></th>
					<th width="65%">Item</th>
					<th width="10%">Preço</th>
					<th width="10%">Quantidade</th>
					<th width="10%">Total</th>
					<th width="5%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${carrinhoCompras.itens }" var="item">
					<tr>
						<td class="cart-img-col"><img
								src="http://cdn.shopify.com/s/files/1/0155/7645/products/css-eficiente-featured_large.png?v=1435245145"
								width="71px" height="100px" /></td>
						<td class="item-title">${item.produto.titulo }</td>
						<td class="numeric-cell">R$ ${item.preco }</td>
						<td class="quantity-input-cell"><input type="number" min="0"
								readonly="readonly" id="updates_4082273665" name="quantidade"
								value="${carrinhoCompras.getQuantidade(item) }" /></td>
						<td class="numeric-cell">R$ ${carrinhoCompras.getTotal(item) }</td>
						<td class="remove-item">
							<form:form
									servletRelativeAction="/carrinho/remover?produtoId=${item.produto.id }&tipoPreco=${item.tipoPreco }"
									method="post">
								<input type="image"
										src="${contextPath }resources/imagens/excluir.png"
										alt="Excluir" title="Excluir" />
							</form:form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						<form:form servletRelativeAction="/pagamento/finalizar"
								method="post">
							<input type="submit" class="checkout" name="checkout"
									value="Finalizar compra" />
						</form:form>
					</td>
					<td class="quantity-input-cell"><input type="submit"
							class="update-cart" disabled="disabled" name="update" value="" /></td>
					<td class="numeric-cell">R$ ${carrinhoCompras.total }</td>
					<td></td>
				</tr>
			</tfoot>
		</table>

		<h2>Você já conhece os outros livros da Casa do Código?</h2>
		<ul id="collection" class="related-books">
			<li class="col-left"><a href="/products/livro-plsql"
					class="block clearfix book-suggest"
					data-book="PL/SQL: Domine a linguagem do banco de dados Oracle">
					<img width="113px" height="160px"
						src="http:////cdn.shopify.com/s/files/1/0155/7645/products/plsql-featured_compact.png?v=1434740236"
						alt="PL/SQL: Domine a linguagem do banco de dados Oracle" />
			</a></li>
		</ul>

		<h2>
			<a href="${s:mvcUrl('PC#listar').build() }">Veja todos os livros
				que publicamos!</a>
		</h2>
	</section>
</jsp:body>
</tags:pageTemplate>