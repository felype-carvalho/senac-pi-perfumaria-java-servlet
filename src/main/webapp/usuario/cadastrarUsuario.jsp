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
        <title>Cadastrar Usuário</title>
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
                                <h3>Cadastrar Usuário</h3>
                            </div>
                            <div class="card-body">
                                <form class="row g-3">
                                    <c:if test="${not empty usuarioAtualizacao}">
                                        <input type="hidden" name="operacaoUsuario" value="1"/>
                                        <input type="hidden" name="idUsuario" value="${usuarioAtualizacao.idUsuario}"/>
                                    </c:if>
                                    <div class="col-md-6 position-relative">
                                        <label for="cNomeUsuario" class="form-label">Nome do Usuário</label>
                                        <input type="text" class="form-control" name="cNomeUsuario" required value="${usuarioAtualizacao.nome}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cSenhaUsuario" class="form-label">Senha</label>
                                        <input type="password" class="form-control" name="cSenhaUsuario" required value="${usuarioAtualizacao.nome}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cCPFUsuario" class="form-label">CPF</label>
                                        <input type="number" class="form-control" name="cCPFUsuario" required value="${usuarioAtualizacao.nome}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <label for="cDataNascimentoUsuario" class="form-label">Data de Nascimento</label>
                                        <input type="number" class="form-control" name="cDataNascimentoUsuario" required value="${usuarioAtualizacao.nome}">
                                    </div>
                                    <div class="col-md-3 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="cPerfilUsuário">Peril do Usuário</label>
                                            <select class="form-control" name="cPerfilUsuário" required>
                                                <option value="">Item</option>
                                                <option value="">Item</option>
                                                <option value="">Item</option>
                                                <option value="">Item</option>
                                                <option value="">Item</option>
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
        </div>
    </body>
    <c:import url="../uteis/footer-import.jsp"/>
</html>