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
                                <form class="row g-3" validate>
                                    <div class="col-md-8 position-relative">
                                        <label for="nomeCliente" class="form-label">Nome Completo</label>
                                        <input type="text" name="nomeCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="cpfCliente" class="form-label">CPF</label>
                                        <input type="text" name="cpfCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-6 position-relative">
                                        <label for="emailCliente" class="form-label">E-mail</label>
                                        <input type="text" name="emailCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="dataNascimentoCliente" class="form-label">Data de Nascimento</label>
                                        <input type="text" name="dataNascimentoCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="estadoCivilCliente">Estado Cívil</label>
                                            <select name="estadoCivilCliente" class="form-control">
                                                <option>Selecione um Estado...</option>
                                                <option>Solteiro</option>
                                                <option>Casado</option>
                                                <option>Separado</option>
                                                <option>Viúvo</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="telefoneCliente" class="form-label">Telefone</label>
                                        <input type="text" name="telefoneCliente" class="form-control" required>
                                    </div>
                                    <h5 class="mt-5">Endereço</h5>
                                    <hr>
                                    <div class="col-md-6 position-relative">
                                        <label for="logradouroCliente" class="form-label">Lougradouro</label>
                                        <input type="text" name="logradouroCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="numeroCliente" class="form-label">Número</label>
                                        <input type="text" name="numeroCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cepCliente" class="form-label">CEP</label>
                                        <input type="text" name="cepCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="bairroCliente" class="form-label">Bairro</label>
                                        <input type="text" name="bairroCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="cidadeCliente" class="form-label">Cidade</label>
                                        <input type="text" name="cidadeCliente" class="form-control" required>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="ufCliente">Estado</label>
                                            <select class="form-control" name="ufCliente">
                                                <option>Selecione um Estado</option>
                                                <option>AC</option>
                                                <option>AL</option>
                                                <option>AP</option>
                                                <option>AM</option>
                                                <option>BA</option>
                                                <option>CE</option>
                                                <option>DF</option>
                                                <option>ES</option>
                                                <option>GO</option>
                                                <option>MA</option>
                                                <option>MT</option>
                                                <option>MS</option>
                                                <option>MG</option>
                                                <option>PA</option>
                                                <option>PB</option>
                                                <option>PR</option>
                                                <option>PE</option>
                                                <option>PI</option>
                                                <option>RJ</option>
                                                <option>RO</option>
                                                <option>RR</option>
                                                <option>SC</option>
                                                <option>SP</option>
                                                <option>SE</option>
                                                <option>TO</option>
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