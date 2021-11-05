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
        <title>Listar Clientes</title>
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
                                <c:import url="../uteis/deleteModal.jsp"/>

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
                                                <form class="row g-3 needs-validation" novalidate>
                                                    <div class="col-md-8 position-relative">
                                                        <label for="validationTooltip01" class="form-label">Nome do Produto</label>
                                                        <input type="text" class="form-control" id="validationTooltip01" readonly required>
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <div class="form-group">
                                                            <label class="form-label" for="exampleFormControlSelect1">Categoria</label>
                                                            <input type="text" class="form-control" id="validationTooltip01" readonly required>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 position-relative">
                                                        <div class="form-group">
                                                            <label class="form-label" for="exampleFormControlTextarea1">Descrição</label>
                                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="validationTooltip01" class="form-label">Quantidade</label>
                                                        <input type="text" class="form-control" id="validationTooltip01" readonly required>
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="validationTooltip01" class="form-label">Preço</label>
                                                        <input type="text" class="form-control" id="validationTooltip01" readonly required>
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
</html>
