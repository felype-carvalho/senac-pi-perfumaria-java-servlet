<%-- 
    Document   : visulizarCliente
    Created on : 24 de out de 2021, 21:45:40
    Author     : Felype
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <c:import url="../uteis/header-import.jsp"/>
        <title>Listar Usuário</title>
    </head>
    <body class="">
        <!-- <h1>Tela Principal</h1> -->
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
                                <h3>Listar Usuário</h3>
                            </div>
                            <div class="card-body table-border-style">
                                <form class="form-group" action="${pageContext.request.contextPath}/usuario/cadastrarUsuario.jsp">
                                    <button type="submit" class="btn btn-sm btn-success">+ Novo Usuário</button>
                                </form>
                                <div class="table-responsive">
                                    <table class="display table table-hover table-striped pt-2" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Usuário</th>
                                                <th>Nome</th>
                                                <th>CPF</th>
                                                <th>Perfil</th>
                                                <th>Funções</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="funcionario" items="${listaFuncionarios}">
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
                                                <td>fcarvalho</td>
                                                <td>Felype Carvalho</td>
                                                <td>49498785225</td>
                                                <td>Gerente</td>
                                                <td>
                                                    <a class="btn btn-sm btn-icon btn-info" href="#" data-toggle="modal" data-target="#viewModalUsuario"><i data-feather="eye"></i></a>
                                                    <a class="btn btn-sm btn-icon btn-warning" href="${pageContext.request.contextPath}/usuario/cadastrarUsuario.jsp"><i data-feather="edit"></i></a>
                                                    <a class="btn btn-sm btn-icon btn-danger" href="#" data-toggle="modal" data-target="#deleteUsuarioModal"><i data-feather="x"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Modals -->

                                <!-- Modal Delete -->
                                <div class="modal fade" id="deleteUsuarioModal" tabindex="-1" aria-labelledby="deleteUsuarioModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen-md-down">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="deleteUsuarioModalLabel">Atenção!</h5>
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
                                <div class="modal fade" id="viewModalUsuario" tabindex="-1" aria-labelledby="viewModalUsuarioLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen p-25">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="viewModalUsuarioLabel">Visualização de Dados do Produto</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <form class="row g-3">
                                                    <div class="col-md-6 position-relative">
                                                        <label for="vNomeUsuario" class="form-label">Nome do Usuário</label>
                                                        <input type="text" class="form-control" name="vNomeUsuario" readonly value="${usuarioAtualizacao.nome}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="vCPFUsuario" class="form-label">CPF</label>
                                                        <input type="number" class="form-control" name="vCPFUsuario" readonly value="${usuarioAtualizacao.nome}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="vDataNascimentoUsuario" class="form-label">Data de Nascimento</label>
                                                        <input type="number" class="form-control" name="vDataNascimentoUsuario" readonly value="${usuarioAtualizacao.nome}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label class="form-label" for="vPerfilUsuário">Peril do Usuário</label>
                                                        <input type="text" class="form-control" name="vPerfilUsuário" readonly value="${usuarioAtualizacao.perfil}">
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
    </body>
    <c:import url="../uteis/footer-import.jsp"/>
    <c:import url="../uteis/data-table-import.jsp"/>
</html>