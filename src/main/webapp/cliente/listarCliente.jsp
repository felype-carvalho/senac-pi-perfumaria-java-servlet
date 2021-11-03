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
                                <h3>Listar Clientes</h3>
                            </div>
                            <div class="card-body table-border-style">
                                <form class="form-group" action="${pageContext.request.contextPath}/cliente/cadastrarCliente.jsp">
                                    <button type="submit" class="btn btn-sm btn-success">+ Novo Cliente</button>
                                </form>
                                <div class="table-responsive">
                                    <table class="display table table-hover table-striped" style="width:100%">
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
                                            <tr>
                                                <td>1</td>
                                                <td>Fabricio Belomo Saske</td>
                                                <td>00000000011</td>
                                                <td>aaa@email.com</td>
                                                <td>03/07/2000</td>
                                                <td>
                                                    
                                                    <a class="btn btn-sm btn-icon btn-info" href="#" data-toggle="modal" data-target="#viewModal"><i data-feather="eye"></i></a>
                                                    <a class="btn btn-sm btn-icon btn-warning" href="${pageContext.request.contextPath}/cliente/cadastrarCliente.jsp"><i data-feather="edit"></i></a>
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
                                <div class="modal fade" id="viewModal" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen p-25">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="viewModalLabel">Visualização de dados do cliente</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <h5 class="">Dados Pessoais</h5>
                                                <hr>
                                                <form class="row g-3 needs-validation" novalidate>
                                                    <div class="col-md-8 position-relative">
                                                        <label for="validationTooltip01" class="form-label">Nome Completo</label>
                                                        <input type="text" class="form-control" readonly value="#">

                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label for="validationTooltip02" class="form-label">CPF</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>
                                                    <div class="col-md-6 position-relative">
                                                        <label for="validationTooltip02" class="form-label">E-mail</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="validationTooltip02" class="form-label">Data de Nascimento</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <div class="form-group">
                                                            <label class="form-label" for="exampleFormControlSelect1">Estado Cívil</label>
                                                            <input type="text" class="form-control" readonly value="#">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label for="validationTooltip02" class="form-label">Telefone</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>

                                                </form>
                                                <h5 class="mt-5">Endereço</h5>
                                                <hr>
                                                <form class="row g-3 needs-validation" novalidate>
                                                    <div class="col-md-6 position-relative">
                                                        <label for="validationTooltip01" class="form-label">Lougradouro</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="validationTooltip02" class="form-label">Número</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="validationTooltip02" class="form-label">CEP</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label for="validationTooltip02" class="form-label">Bairro</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label for="validationTooltip02" class="form-label">Cidade</label>
                                                        <input type="text" class="form-control" readonly value="#">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <div class="form-group">
                                                            <label class="form-label" for="exampleFormControlSelect2">Estado</label>
                                                            <input type="text" class="form-control" readonly value="#">
                                                        </div>
                                                    </div>
                                                </form>
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
