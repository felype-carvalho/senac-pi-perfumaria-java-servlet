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
                                                <form class="row g-3 needs-validation">
                                                    <div class="col-md-8 position-relative">
                                                        <label for="vNomeCliente" class="form-label">Nome Completo</label>
                                                        <input type="text" class="form-control" name="vNomeCliente" readonly value="${clienteAtualizacao.nome}">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label for="vCpfCliente" class="form-label">CPF</label>
                                                        <input type="text" class="form-control" name="vCpfCliente" readonly value="${clienteAtualizacao.cpf}">
                                                    </div>
                                                    <div class="col-md-6 position-relative">
                                                        <label for="vEmailCliente" class="form-label">E-mail</label>
                                                        <input type="text" class="form-control" name="vEmailCliente" readonly value="${clienteAtualizacao.email}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="vDataNascimentoCliente" class="form-label">Data de Nascimento</label>
                                                        <input type="text" class="form-control" name="vDataNascimentoCliente" readonly value="${clienteAtualizacao.dataNascimento}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label class="form-label" for="vEstadoCivilCliente">Estado Cívil</label>
                                                        <input type="text" class="form-control" name="vEstadoCivilCliente" readonly value="${clienteAtualizacao.estadoCivil}">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label for="vTelefoneCliente" class="form-label">Telefone</label>
                                                        <input type="text" class="form-control" name="vTelefoneCliente" readonly value="${clienteAtualizacao.numeroTelefone}">
                                                    </div>
                                                    <h5 class="mt-5">Endereço</h5>
                                                    <hr>
                                                    <div class="col-md-6 position-relative">
                                                        <label for="vLogradouroCliente" class="form-label">Lougradouro</label>
                                                        <input type="text" class="form-control" name="vLogradouroCliente" readonly value="${clienteAtualizacao.lougradouro}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="vNumeroCliente" class="form-label">Número</label>
                                                        <input type="text" class="form-control" name="vNumeroCliente" readonly value="${clienteAtualizacao.numero}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label for="vCepCliente" class="form-label">CEP</label>
                                                        <input type="text" class="form-control" name="vCepCliente" readonly value="${clienteAtualizacao.cep}">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label for="vBairroCliente" class="form-label">Bairro</label>
                                                        <input type="text" class="form-control" name="vBairroCliente" readonly value="${clienteAtualizacao.bairro}">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label class="form-label" for="vCidadeCliente">Cidade</label>
                                                        <input type="text" class="form-control" name="vCidadeCliente" readonly value="${clienteAtualizacao.cidade}">
                                                    </div>
                                                    <div class="col-md-3 position-relative">
                                                        <label class="form-label" for="vUfCliente">Estado</label>
                                                        <input type="text" class="form-control" name="vUfCliente" readonly value="${clienteAtualizacao.uf}">
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
