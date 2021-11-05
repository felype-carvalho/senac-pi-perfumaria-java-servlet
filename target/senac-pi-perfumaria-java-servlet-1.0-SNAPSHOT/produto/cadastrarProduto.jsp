<%-- 
    Document   : cadastrarCliente
    Created on : 24 de out de 2021, 21:44:36
    Author     : Felype
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <c:import url="../uteis/header-import.jsp"/>
        <title>Cadastro de Produtos</title>
    </head>
    <body class="">
        <!-- <h1>Tela Principal</h1> -->
        <c:import url="../uteis/menuLateral.jsp"/>
        <div class="pc-container">
            <div class="pcoded-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3>Cadastro de Produtos</h3>
                            </div>
                            <div class="card-body">
                                <h5 class="">Novo Produto</h5>
                                <hr>
                                <form class="row g-3">
                                    <c:if test="${not empty produtoAtualizacao}">
                                        <input type="hidden" name="operacaoProduto" value="1"/>
                                        <input type="hidden" name="idProduto" value="${produtoAtualizacao.idCliente}"/>
                                    </c:if>
                                    <div class="col-md-8 position-relative">
                                        <label for="cNomeProduto" class="form-label">Nome do Produto</label>
                                        <input type="text" class="form-control" name="cNomeProduto" required value="${produtoAtualizacao.nome}">
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="cCategoriaProduto">Categoria</label>
                                            <select class="form-control" name="cCategoriaProduto" required>
                                                <option value="perfumaria">Perfumaria</option>
                                                <option value="corpo e banho">Corpo e banho</option>
                                                <option value="maquiagem">Maquiagem</option>
                                                <option value="perfumaria">Cabelo</option>
                                                <option value="pele">Pele</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="cDescricaoProduto">Descrição</label>
                                            <textarea class="form-control" name="cDescricaoProduto" rows="3">${produtoAtualizacao.descricao}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cQuantidadeProduto" class="form-label">Quantidade</label>
                                        <input type="text" class="form-control" name="cQuantidadeProduto" required value="${produtoAtualizacao.qtd}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cPrecoProduto" class="form-label">Preço</label>
                                        <input type="text" class="form-control" name="cPrecoProduto" required value="${produtoAtualizacao.preco}">
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary" type="submit">Cadastrar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
    <c:import url="../uteis/footer-import.jsp"/>
</html>