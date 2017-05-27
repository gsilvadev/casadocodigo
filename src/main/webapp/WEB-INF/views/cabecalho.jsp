<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<header id="layout-header">
	<div class="clearfix container">
		<a href="${s:mvcUrl('HC#index').build() }" id="logo"> </a>
		<div id="header-content">
			<nav id="main-nav">
				<ul class="clearfix">
					<security:authorize access="isAuthenticated()">
						<li><a href="${s:mvcUrl('PC#listar').build() }"
							rel="nofollow">Listagem de Produtos</a></li>
						<li><a href="${s:mvcUrl('PC#form').build() }" rel="nofollow">Cadastro
								de Produtos</a></li>
					</security:authorize>
					<li>
						<a href="${s:mvcUrl('CCC#itens').build() }" rel="nofollow">
							<s:message code="menu.carrinho" arguments="${carrinhoCompras.quantidade }"/>
						</a>
					</li>
					<li>
						<a href="?locale=pt" rel="nofollow">
							<s:message code="menu.pt"/>
						</a>
					</li>
					<li>
						<a href="?locale=en_US" rel="nofollow">
							<s:message code="menu.en_US" />
						</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<nav class="categories-nav">
	<ul class="container">
		<li class="category">
			<a href="http://www.casadocodigo.com.br">
				<s:message code="navegacao.categoria.home"/>
			</a>
		</li>
		<li class="category">
			<a href="/collections/livros-de-agile">
				<s:message code="navegacao.categoria.agile"/>
			</a>
		</li>
		<li class="category">
			<a href="/collections/livros-de-front-end">
				<s:message code="navegacao.categoria.front_end"/>
			</a>
		</li>
		<li class="category">
			<a href="/collections/livros-de-games">
				<s:message code="navegacao.categoria.games"/>
			</a>
		</li>
		<li class="category">
			<a href="/collections/livros-de-java">
				<s:message code="navegacao.categoria.java"/>
			</a>
		</li>
		<li class="category">
			<a href="/collections/livros-de-mobile">
				<s:message code="navegacao.categoria.mobile"/>
			</a>
		</li>
		<li class="category">
			<a href="/collections/livros-desenvolvimento-web">
				<s:message code="navegacao.categoria.web"/>
			</a>
		</li>
		<li class="category">
			<a href="/collections/outros">
				<s:message code="navegacao.categoria.outros"/>
			</a>
		</li>
	</ul>
</nav>
