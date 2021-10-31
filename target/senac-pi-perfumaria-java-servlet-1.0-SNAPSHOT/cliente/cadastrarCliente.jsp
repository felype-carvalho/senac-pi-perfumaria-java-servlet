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
                                <h3>Cadastro de Cliente</h3>
                            </div>
                            <div class="card-body">
                                <h5 class="">Dados Pessoais</h5>
                                <hr>
                                <form class="row g-3 needs-validation" novalidate>
                                    <div class="col-md-8 position-relative">
                                        <label for="validationTooltip01" class="form-label">Nome Completo</label>
                                        <input type="text" class="form-control" id="validationTooltip01" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="validationTooltip02" class="form-label">CPF</label>
                                        <input type="text" class="form-control" id="validationTooltip02" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-6 position-relative">
                                        <label for="validationTooltip02" class="form-label">E-mail</label>
                                        <input type="text" class="form-control" id="validationTooltip05" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="validationTooltip02" class="form-label">Data de Nascimento</label>
                                        <input type="text" class="form-control" id="validationTooltip03" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="validationTooltip02" class="form-label">Estado Civil</label>
                                        <input type="text" class="form-control" id="validationTooltip04" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="validationTooltip02" class="form-label">Telefone</label>
                                        <input type="text" class="form-control" id="validationTooltip05" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    
                                </form>
                                <h5 class="mt-5">Endereço</h5>
                                <hr>
                                <form class="row g-3 needs-validation" novalidate>
                                    <div class="col-md-6 position-relative">
                                        <label for="validationTooltip01" class="form-label">Lougradouro</label>
                                        <input type="text" class="form-control" id="validationTooltip01" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="validationTooltip02" class="form-label">Número</label>
                                        <input type="text" class="form-control" id="validationTooltip02" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="validationTooltip02" class="form-label">CEP</label>
                                        <input type="text" class="form-control" id="validationTooltip03" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="validationTooltip02" class="form-label">Bairro</label>
                                        <input type="text" class="form-control" id="validationTooltip04" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="validationTooltip02" class="form-label">Cidade</label>
                                        <input type="text" class="form-control" id="validationTooltip05" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
                                        </div>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="validationTooltip02" class="form-label">Estado</label>
                                        <input type="text" class="form-control" id="validationTooltip05" required>
                                        <div class="valid-tooltip">
                                            Looks good!
                                        </div>
                                        <div class="invalid-tooltip">
                                            Please choose a unique and valid username.
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