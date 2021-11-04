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
                                <form class="row g-3 needs-validation" novalidate>
                                    <div class="col-md-8 position-relative">
                                        <label for="validationTooltip01" class="form-label">Nome do Produto</label>
                                        <input type="text" class="form-control" id="validationTooltip01" required>
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="exampleFormControlSelect1">Categoria</label>
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>Perfumaria</option>
                                                <option>Corpo e banho</option>
                                                <option>Maquiagem</option>
                                                <option>Cabelo</option>
                                                <option>Pele</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="exampleFormControlTextarea1">Descrição</label>
                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="validationTooltip01" class="form-label">Quantidade</label>
                                        <input type="text" class="form-control" id="validationTooltip01" required>
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="validationTooltip01" class="form-label">Preço</label>
                                        <input type="text" class="form-control" id="validationTooltip01" required>
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