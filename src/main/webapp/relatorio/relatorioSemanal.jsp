<%-- 
    Document   : relatorioSemanal
    Created on : 24 de out de 2021, 22:04:33
    Author     : Felype
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <c:import url="../uteis/header-import.jsp"/>
        <title>Relatório de Vendas Semanais</title>
    </head>
    <body class="">
        <c:import url="../uteis/menuLateral.jsp"/>
        <div class="pc-container">
            <div class="pcoded-content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h3>Relatório de Vendas Semanais</h3>
                            </div>
                            <div class="card-body">
                                <form class="row g-3">
                                    <h4>Selecione o Período</h4>
                                    <div class="col-sm-2 position-relative">
                                        <label for="peridoRelSemanalDe" class="form-label">De:</label>
                                        <input type="text" class="form-control" name="peridoRelSemanalDe" id="peridoRelSemanalDe" required">
                                    </div>
                                    <div class="col-sm-2 position-relative">
                                        <label for="peridoRelSemanalAte" class="form-label">Até:</label>
                                        <input type="text" class="form-control" name="peridoRelSemanalAte" id="peridoRelSemanalAte" required">
                                    </div>
                                    <div class="col-sm-8 position-relative">
                                        <button class="btn btn-primary mt-4" type="submit">Gerar</button>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>Basic line chart</h5>
                                            </div>
                                            <div class="card-body">
                                                <div id="chart-vendas-semanais"></div>
                                            </div>
                                        </div>
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
    <script src="${pageContext.request.contextPath}/lib/js/plugins/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/js/pages/chart-apex.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#peridoRelSemanalDe').mask('00/00/0000');
            $('#peridoRelSemanalAte').mask('00/00/0000');
        });
        $(document).ready(function () {
            setTimeout(function () {
                $(function () {
                    var options = {
                        chart: {
                            height: 350,
                            type: 'bar',
                        },
                        plotOptions: {
                            bar: {
                                horizontal: false,
                                columnWidth: '55%',
                                endingShape: 'rounded'
                            },
                        },
                        dataLabels: {
                            enabled: false
                        },
                        colors: ["#7267ef", "#17c666", "#ea4d4d", "#3ec9d6", "#ffa21d"],
                        stroke: {
                            show: true,
                            width: 2,
                            colors: ['transparent']
                        },
                        series: [{
                                name: 'Campina Grande',
                                data: [44, 55, 57, 56, 61, 58, 63]
                            }, {
                                name: 'São Paulo*',
                                data: [76, 85, 101, 98, 87, 8, 91]
                            }, {
                                name: 'Brasília',
                                data: [35, 41, 36, 26, 45, 48, 52]
                            }, {
                                name: 'Joinville',
                                data: [35, 41, 36, 26, 45, 48, 52]
                            }, {
                                name: 'Total do Dia',
                                data: [150, 150, 200, 150, 175, 150, 200]

                            }],
                        xaxis: {
                            categories: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
                        },
                        yaxis: {
                            title: {
                                text: 'Vendas na Semanal'
                            }
                        },
                        fill: {
                            opacity: 1

                        },
                        tooltip: {
                            y: {
                                formatter: function (val) {
                                    return val + " vendas no dia"
                                }
                            }
                        }
                    }
                    var chart = new ApexCharts(
                            document.querySelector("#chart-vendas-semanais"),
                            options
                            );
                    chart.render();
                });
            }, 700);
        });
    </script>
</html>