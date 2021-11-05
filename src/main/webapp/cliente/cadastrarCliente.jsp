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
        <title>Cadastro de Cliente</title>
    </head>
    <body class="">
        <c:import url="../uteis/menuLateral.jsp"/>
        <div class="pc-container">
            <div class="pcoded-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3>Cadastro de Cliente</h3>
                            </div>
                            <div class="card-body">
                                <h5 class="">Dados Pessoais</h5>
                                <hr>
                                <form class="row g-3" action="CadastrarClienteServlet" method="POST">
                                    <c:if test="${not empty clienteAtualizacao}">
                                        <input type="hidden" name="operacao" value="1"/>
                                        <input type="hidden" name="idCliente" value="${clienteAtualizacao.idCliente}"/>
                                    </c:if>
                                    <div class="col-md-8 position-relative">
                                        <label for="cNomeCliente" class="form-label">Nome Completo</label>
                                        <input type="text" name="cNomeCliente" class="form-control" required value="${clienteAtualizacao.nome}">
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="cCpfCliente" class="form-label">CPF</label>
                                        <input type="text" name="cCpfCliente" class="form-control" required value="${clienteAtualizacao.cpf}">
                                    </div>
                                    <div class="col-md-6 position-relative">
                                        <label for="cEmailCliente" class="form-label">E-mail</label>
                                        <input type="text" name="cEmailCliente" class="form-control" required value="${mailClienclienteAtualizacao.email}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cDataNascimentoCliente" class="form-label">Data de Nascimento</label>
                                        <input type="text" name="cDataNascimentoCliente" class="form-control" required value="${clienteAtualizacao.dataNascimento}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="cEstadoCivilCliente">Estado Cívil</label>
                                            <select name="cEstadoCivilCliente" class="form-control" >
                                                <option disabled>Selecione um Estado Civil...</option>
                                                <option value="solteiro">Solteiro</option>
                                                <option value="casado">Casado</option>
                                                <option value="separado">Separado</option>
                                                <option value="viuvo">Viúvo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="cTelefoneCliente" class="form-label">Telefone</label>
                                        <input type="text" name="cTelefoneCliente" class="form-control" required value="${clienteAtualizacao.numeroTelefone}"> 
                                    </div>
                                    <h5 class="mt-5">Endereço</h5>
                                    <hr>
                                    <div class="col-md-6 position-relative">
                                        <label for="cLogradouroCliente" class="form-label">Lougradouro</label>
                                        <input type="text" name="cLogradouroCliente" class="form-control" required value="${clienteAtualizacao.lougradouro}"> 
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cNumeroCliente" class="form-label">Número</label>
                                        <input type="text" name="cNumeroCliente" class="form-control" required value="${clienteAtualizacao.numero}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cCepCliente" class="form-label">CEP</label>
                                        <input type="text" name="cCepCliente" class="form-control" required value="${clienteAtualizacao.cep}">
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="cBairroCliente" class="form-label">Bairro</label>
                                        <input type="text" name="cBairroCliente" class="form-control" required value="${clienteAtualizacao.bairro}">
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="cCidadeCliente" class="form-label">Cidade</label>
                                        <input type="text" name="cCidadeCliente" class="form-control" required value="${clienteAtualizacao.cidade}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="cUfCliente">Estado</label>
                                            <select class="form-control" name="cUfCliente">
                                                <option disabled>Selecione um Estado</option>
                                                <option value="AC">AC</option>
                                                <option value="AL">AL</option>
                                                <option value="AP">AP</option>
                                                <option value="AM">AM</option>
                                                <option value="BA">BA</option>
                                                <option value="CE">CE</option>
                                                <option value="DF">DF</option>
                                                <option value="ES">ES</option>
                                                <option value="GO">GO</option>
                                                <option value="MA">MA</option>
                                                <option value="MT">MT</option>
                                                <option value="MS">MS</option>
                                                <option value="MG">MG</option>
                                                <option value="PA">PA</option>
                                                <option value="PB">PB</option>
                                                <option value="PR">PR</option>
                                                <option value="PE">PE</option>
                                                <option value="PI">PI</option>
                                                <option value="RJ">RJ</option>
                                                <option value="RO">RO</option>
                                                <option value="RR">RR</option>
                                                <option value="SC">SC</option>
                                                <option value="SP">SP</option>
                                                <option value="SE">SE</option>
                                                <option value="TO">TO</option>
                                            </select>
                                        </div>
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