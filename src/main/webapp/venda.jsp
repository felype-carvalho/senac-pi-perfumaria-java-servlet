<%-- 
    Document   : venda
    Created on : 31 de out de 2021, 19:17:41
    Author     : Felype
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <c:import url="uteis/header-import.jsp"/>
        <title>Realizar Vendas</title>
    </head>
    <body class="">
        <!-- <h1>Tela Principal</h1> -->
        <c:import url="uteis/menuLateral.jsp"/>
        <div class="pc-container">
            <div class="pcoded-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3>Realizar Vendas</h3>
                            </div>
                            <div class="card-body table-border-style">
                                <h5>Cliente</h5>
                                <hr>
                                <dl class="row">
                                    <dt class="col-sm-1 position-relative">ID</dt>
                                    <dd class="col-sm-3 position-relative">Nenhum Cliente Selecionado</dd>
                                    <dt class="col-sm-1 position-relative">Nome</dt>
                                    <dd class="col-sm-3 position-relative">Nenhum Cliente Selecionado</dd>
                                    <dt class="col-sm-1 position-relative">CPF</dt>
                                    <dd class="col-sm-3 position-relative">Nenhum Cliente Selecionado</dd>
                                </dl>
                                <a class="btn btn-sm btn-info" href="#" data-toggle="modal" data-target="#selectClientModal">Selecionar Cliente</a>
                                <h5 class="mt-5">Carrinho</h5>
                                <hr>
                                <form class="form-group">                        
                                    <a class="btn btn-sm btn-primary" href="#" data-toggle="modal" data-target="#selectProdutoModal">+ Adicionar Produto</a>
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
                                            <tr>
                                                <td>1</td>
                                                <td>Malbac</td>
                                                <td>3</td>
                                                <td>Perfumaria</td>
                                                <td>R$150,00</td>
                                                <td>
                                                    <a class="btn btn-sm btn-icon btn-danger" href="#" data-toggle="modal" data-target="#deleteProdutoCarrinhoModal"><i data-feather="x"></i></a>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>

                                </div>
                                <dl class="row">
                                    <dt class="col-sm-1 position-relative">Valor Total:</dt>
                                    <dd class="col-sm-3 position-relative">R$ -</dd>
                                </dl>
                                <button class="btn btn-success" type="submit">Finalizar Venda</button>
                                <!-- Modals -->

                                <!-- Modal Delete -->
                                <div class="modal fade" id="deleteProdutoCarrinhoModal" tabindex="-1" aria-labelledby="deleteProdutoCarrinhoModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen-md-down">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="deleteProdutoCarrinhoModalLabel">Atenção!</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p>Tem certeza que deseja excluir esse registro? </p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="deletarCliente('')">Excluir</button>
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal Select Client -->
                                <div class="modal fade" id="selectClientModal" tabindex="-1" aria-labelledby="selectClientModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen p-25">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="selectClientModalLabel">Selecione o Cliente</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="table-responsive">
                                                    <table class="display table table-hover table-striped pt-2" style="width:100%">
                                                        <thead>
                                                            <tr>
                                                                <th>#</th>
                                                                <th>Nome</th>
                                                                <th>CPF</th>
                                                                <th>E-mail</th>
                                                                <th>Data de Nascimento</th>
                                                                <th>Funções</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="cliente" items="${listaClientes}">
                                                                <tr>
                                                                    <td>${cliente.idCliente}</td>
                                                                    <td>${cliente.nome}</td>
                                                                    <td>${cliente.cpf}</td>
                                                                    <td>${cliente.email}</td>
                                                                    <td>${cliente.dataNascimento}</td>
                                                                    <td>
                                                                        <a class="btn btn-sm btn-icon btn-primary" href="" data-dismiss="modal"><i data-feather="check"></i></a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>

                                                            <tr>
                                                                <td>1</td>
                                                                <td>Fabricio Belomo Saske</td>
                                                                <td>00000000011</td>
                                                                <td>aaa@email.com</td>
                                                                <td>03/07/2000</td>
                                                                <td>
                                                                    <a class="btn btn-sm btn-icon btn-primary" href="" data-dismiss="modal"><i data-feather="check"></i></a>
                                                                </td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">Fechar</button>
                                        </div>
                                    </div>
                                </div>

                                <!-- Modal Select Produto -->
                                <div class="modal fade" id="selectProdutoModal" tabindex="-1" aria-labelledby="selectProdutoModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen p-25">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="selectProdutoModalLabel">Selecione o Produto</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="col-md-3 position-relative">
                                                    <label for="cQuantidadeProduto" class="form-label">Quantidade</label>
                                                    <input type="number" class="form-control" name="cQuantidadeProduto" required="" value="">
                                                </div>
                                                <div class="table-responsive">
                                                    <table class="display table table-hover table-striped pt-2" style="width:100%">
                                                        <thead>
                                                            <tr>
                                                                <th>#</th>
                                                                <th>Nome</th>
                                                                <th>Qtde. Estoque</th>
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
                                                                        <a class="btn btn-sm btn-icon btn-primary" href="" data-dismiss="modal"><i data-feather="check"></i></a>
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
                                                                    <a class="btn btn-sm btn-icon btn-primary" href="" data-dismiss="modal"><i data-feather="check"></i></a>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
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
    </body>

    <c:import url="uteis/footer-import.jsp"/>
    <c:import url="uteis/data-table-import.jsp"/>

</html>
