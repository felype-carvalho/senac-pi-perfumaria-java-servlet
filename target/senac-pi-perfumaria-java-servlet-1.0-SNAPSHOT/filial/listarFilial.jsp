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
        <title>Listar Filial</title>
    </head>
    <body class="">
        <c:import url="../uteis/menuLateral.jsp"/>
        <div class="pc-container">
            <div class="pcoded-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3>Listar Filial</h3>
                            </div>
                            <div class="card-body table-border-style">
                                <form class="form-group" action="${pageContext.request.contextPath}/filial/cadastrarFilial.jsp">
                                    <button type="submit" class="btn btn-sm btn-success">+ Nova Filial</button>
                                </form>
                                <div class="table-responsive">
                                    <table class="display table table-hover table-striped pt-2" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nome Filial</th>
                                                <th>CEP</th>
                                                <th>Cidade</th>
                                                <th>Estado</th>
                                                <th>Funções</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="cliente" items="${listaClientes}">
                                                <tr>
                                                    <td>${filial.idFilial}</td>
                                                    <td>${filial.nome}</td>
                                                    <td>${filial.cep}</td>
                                                    <td>${filial.cidade}</td>
                                                    <td>${filial.uf}</td>
                                                    <td>
                                                        <a class="btn btn-sm btn-icon btn-info" href="#" data-toggle="modal" data-target="#viewFilialModal"><i data-feather="eye"></i></a>
                                                        <a class="btn btn-sm btn-icon btn-warning" href="CadastroFilialServlet?idFilial=${cliente.idCliente}&operacaoGetFilial=1"><i data-feather="edit"></i></a>
                                                        <a class="btn btn-sm btn-icon btn-danger" href="#" data-toggle="modal" data-target="#deleteFilialModal"><i data-feather="x"></i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                            <tr>
                                                <td>1</td>
                                                <td>Matriz - São Paulo</td>
                                                <td>04447999</td>
                                                <td>São Paulo</td>
                                                <td>SP</td>
                                                <td>
                                                    <a class="btn btn-sm btn-icon btn-info" href="#" data-toggle="modal" data-target="#viewFilialModal"><i data-feather="eye"></i></a>
                                                    <a class="btn btn-sm btn-icon btn-warning" href="CadastroFilialServlet?idFilial=${cliente.idCliente}&operacaoGetFilial=1"><i data-feather="edit"></i></a>
                                                    <a class="btn btn-sm btn-icon btn-danger" href="#" data-toggle="modal" data-target="#deleteFilialModal"><i data-feather="x"></i></a>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>

                                <!-- Modals -->

                                <!-- Modal Delete -->
                                <div class="modal fade" id="deleteFilialModal" tabindex="-1" aria-labelledby="deleteFilialModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen-md-down">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="deleteFilialModalLabel">Atenção!</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p>Tem certeza que deseja excluir esse registro? </p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="deletarFilial('${filial.idFilial}')">Excluir</button>
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>               

                                <!-- Modal View -->
                                <div class="modal fade" id="viewFilialModal" tabindex="-1" aria-labelledby="viewFilialModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-fullscreen p-25">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title h4" id="viewFilialModalLabel">Visualização de dados da filial</h5>
                                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
                                                </button>
                                            </div>
                                            <div class="modal-body">                                               
                                                <form class="row g-3 needs-validation">
                                                    <div class="col-md-6 position-relative">
                                                        <label for="vNomeFilial" class="form-label">Nome Completo</label>
                                                        <input type="text" class="form-control" name="vNomeFilial" readonly value="${filialAtualizacao.nome}">
                                                    </div>
                                                    <div class="col-md-6 position-relative">
                                                        <label for="vLogradouroFilial" class="form-label">Lougradouro</label>
                                                        <input type="text" class="form-control" name="vLogradouroFilial" readonly value="${filialAtualizacao.lougradouro}">
                                                    </div>
                                                    <div class="col-md-2 position-relative">
                                                        <label for="vNumeroFilial" class="form-label">Número</label>
                                                        <input type="text" class="form-control" name="vNumeroFilial" readonly value="${filialAtualizacao.numero}">
                                                    </div>
                                                    <div class="col-md-2 position-relative">
                                                        <label for="vCepFilial" class="form-label">CEP</label>
                                                        <input type="text" class="form-control" name="vCepFilial" readonly value="${filialAtualizacao.cep}">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label for="vBairroFilial" class="form-label">Bairro</label>
                                                        <input type="text" class="form-control" name="vBairroFilial" readonly value="${filialAtualizacao.bairro}">
                                                    </div>
                                                    <div class="col-md-4 position-relative">
                                                        <label class="form-label" for="vCidadeFilial">Cidade</label>
                                                        <input type="text" class="form-control" name="vCidadeFilial" readonly value="${filialAtualizacao.cidade}">
                                                    </div>
                                                    <div class="col-md-2 position-relative">
                                                        <label class="form-label" for="vUfFilial">Estado</label>
                                                        <input type="text" class="form-control" name="vUfFilial" readonly value="${filialAtualizacao.uf}">
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
    <script type="text/javascript">
        function deletarProduto(idProduto) {
            console.log("Excluindo filial ", idFilial);
            var url = "CadastroFilialServlet?idFilial=" + idFilial;
            $.ajax(url).done(function () {
                console.log("Filial removida!");
                var alerta = $("#alertaFilial");
                alerta.css("display", "block");
                setTimeout(function () {
                    alerta.css("display", "none");
                    location.reload();
                }, 1000)
            }).fail(function () {
                console.log("Erro ao remover a filial!");
            })
        }
    </script>
</html>