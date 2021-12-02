<%-- 
    Document   : visulizarProduto
    Created on : 24 de out de 2021, 21:45:40
    Author     : Felype
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <c:import url="../uteis/header-import.jsp"/>
        <title>Listar Produtos</title>
    </head>
    <body class="">
        <c:import url="../uteis/menuLateral.jsp"/>
        <div id="alertaProduto" class="alert alert-success" role="alert" style="display:none">
            Produto removido com sucesso!
        </div>
        <div class="pc-container">
            <div class="pcoded-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3>Listar Produtos</h3>
                            </div>
                            <div class="card-body table-border-style">
                                <form class="form-group" action="${pageContext.request.contextPath}/produto/cadastrarProduto.jsp">
                                    <button type="submit" class="btn btn-sm btn-success">+ Novo Produto</button>
                                </form>
                                <div class="table-responsive">
                                    <table class="display table table-hover table-striped pt-2" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nome</th>
                                                <th>Qtde.</th>
                                                <th>Categoria</th>
                                                <th>Preço</th>
                                                <th>Funções</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="produto" items="${listaProdutos}">
                                                <tr>
                                                    <td>${produto.idProduto}</td>
                                                    <td>${produto.nome}</td>
                                                    <td>${produto.qtd}</td>
                                                    <td>${produto.idCategProduto}</td>
                                                    <td>${produto.preco}</td>
                                                    <td>
                                                        <a class="btn btn-sm btn-icon btn-info" href="#" data-toggle="modal" data-target="#viewModalProduto"><i data-feather="eye"></i></a>
                                                        <a class="btn btn-sm btn-icon btn-warning" href="CadastroProdutoServlet?idProduto=${produto.idProduto}&operacaoGetProduto=1"><i data-feather="edit"></i></a>
                                                        <a class="btn btn-sm btn-icon btn-danger" href="#" data-toggle="modal" data-target="#deleteModal"><i data-feather="x"></i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            <tr>
                                                <td>1</td>
                                                <td>Malbac</td>
                                                <td>4536</td>
                                                <td>Perfumaria</td>
                                                <td>R$150,00</td>
                                                <td>
                                                    <a class="btn btn-sm btn-icon btn-info" href="#" data-toggle="modal" data-target="#viewModalProduto"><i data-feather="eye"></i></a>
                                                    <a class="btn btn-sm btn-icon btn-warning" href="${pageContext.request.contextPath}/produto/cadastrarProduto.jsp"><i data-feather="edit"></i></a>
                                                    <a class="btn btn-sm btn-icon btn-danger" href="#" data-toggle="modal" data-target="#deleteModal"><i data-feather="x"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Modals -->

                                <!-- Modal Delete -->
                                <div class="modal fade" id="deleteProdutoModal" tabindex="-1" aria-labelledby="deleteProdutoModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen-md-down">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="deleteProdutoModalLabel">Atenção!</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p>Tem certeza que deseja excluir esse registro? </p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="deletarProduto('${Produto.idProduto}')">Excluir</button>
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal View -->
                                <div class="modal fade" id="viewModalProduto" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen p-25">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="viewModalLabel">Visualização de Dados do Produto</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="row g-3">
                                                    <div class="col-md-8 position-relative">
                                                        <label for="vNomeProduto" class="form-label">Nome do Produto</label>
                                                        <input type="text" class="form-control" name="vNomeProduto" readonly value="${produtoAtualizacao.nome}">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <div class="form-group">
                                                            <label class="form-label" for="vCategoriaProduto">Categoria</label>
                                                            <input type="text" class="form-control" name="vCategoriaProduto" readonly value="${produtoAtualizacao.idCategProduto}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 position-relative">
                                                        <div class="form-group">
                                                            <label class="form-label" for="vDescricaoProduto">Descrição</label>
                                                            <textarea class="form-control" name="vDescricaoProduto" rows="3" readonly>${produtoAtualizacao.descricao}</textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="vQuantidadeProduto" class="form-label">Quantidade</label>
                                                        <input type="text" class="form-control" name="vQuantidadeProduto" readonly value="${produtoAtualizacao.qtd}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="vPrecoProduto" class="form-label">Preço</label>
                                                        <input type="text" class="form-control" name="vPrecoProduto" readonly value="${produtoAtualizacao.preco}">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">Fechar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<c:import url="../uteis/footer-import.jsp"/>
<c:import url="../uteis/data-table-import.jsp"/>
<script type="text/javascript">
    function deletarProduto(idProduto) {
        console.log("Excluindo produto ", idProduto);
        var url = "CadastroProdutoServlet?idProduto=" + idProduto;
        $.ajax(url).done(function () {
            console.log("Produto removido!");
            var alerta = $("#alertaProduto");
            alerta.css("display", "block");
            setTimeout(function () {
                alerta.css("display", "none");
                location.reload();
            }, 1000)
        }).fail(function () {
            console.log("Erro ao remover o produto!");
        })
    }
</script>
</html>
