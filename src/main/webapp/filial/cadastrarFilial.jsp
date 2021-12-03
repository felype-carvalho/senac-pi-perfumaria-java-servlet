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
        <title>Cadastrar Filial</title>
    </head>
    <body class="">
        <c:import url="../uteis/menuLateral.jsp"/>
        <div class="pc-container">
            <div class="pcoded-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3>Cadastrar Filial</h3>
                            </div>
                            <div class="card-body">
                                <form class="row g-3" action="CadastrarClienteServlet" method="POST">
                                    <c:if test="${not empty filialAtualizacao}">
                                        <input type="hidden" name="operacaoFilial" value="1"/>
                                        <input type="hidden" name="idFilial" value="${filialAtualizacao.idFilial}"/>
                                    </c:if>
                                    <div class="col-md-6 position-relative">
                                        <label for="cNomeFilial" class="form-label">Nome da Filial</label>
                                        <input type="text" name="cNomeFilial" class="form-control" required value="${filialAtualizacao.nome}">
                                    </div>
                                    <div class="col-md-6 position-relative">
                                        <label for="cLogradouroFilial" class="form-label">Lougradouro</label>
                                        <input type="text" name="cLogradouroFilial" class="form-control" required value="${filialAtualizacao.lougradouro}"> 
                                    </div>
                                    <div class="col-md-2 position-relative">
                                        <label for="cNumeroFilial" class="form-label">Número</label>
                                        <input type="text" name="cNumeroFilial" class="form-control" required value="${filialAtualizacao.numero}">
                                    </div>
                                    <div class="col-md-2 position-relative">
                                        <label for="cCepFilial" class="form-label">CEP</label>
                                        <input type="text" name="cCepFilial" class="form-control" required value="${filialAtualizacao.cep}">
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="cBairroFilial" class="form-label">Bairro</label>
                                        <input type="text" name="cBairroFilial" class="form-control" required value="${filialAtualizacao.bairro}">
                                    </div>
                                    <div class="col-md-4 position-relative">
                                        <label for="cCidadeFilial" class="form-label">Cidade</label>
                                        <input type="text" name="cCidadeFilial" class="form-control" required value="${filialAtualizacao.cidade}">
                                    </div>
                                    <div class="col-md-2 position-relative">
                                        <div class="form-group">
                                            <label class="form-label" for="cUfFilial">Estado</label>
                                            <select class="form-control" name="cUfFilial">
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
        </div>
    </body>
    <c:import url="../uteis/footer-import.jsp"/>
</html>
