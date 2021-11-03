<%-- 
    Document   : menuLateral
    Created on : 28 de out de 2021, 22:40:02
    Author     : Felype
--%>


<!-- [ Pre-loader ] start -->
<div class="loader-bg">
    <div class="loader-track">
        <div class="loader-fill"></div>
    </div>
</div>
<!-- [ Pre-loader ] End -->
<!-- [ Mobile header ] start -->
<div class="pc-mob-header pc-header">
    <div class="pcm-logo">
        <img src="${pageContext.request.contextPath}/lib/images/logo.svg" alt="" class="logo logo-lg">
    </div>
    <div class="pcm-toolbar">
        <a href="#!" class="pc-head-link" id="mobile-collapse">
            <div class="hamburger hamburger--arrowturn">
                <div class="hamburger-box">
                    <div class="hamburger-inner"></div>
                </div>
            </div>
        </a>
        <a href="#!" class="pc-head-link" id="headerdrp-collapse">
            <i data-feather="align-right"></i>
        </a>
        <a href="#!" class="pc-head-link" id="header-collapse">
            <i data-feather="more-vertical"></i>
        </a>
    </div>
</div>
<!-- [ Mobile header ] End -->

<!-- [ navigation menu ] start -->
<nav class="pc-sidebar ">
    <div class="navbar-wrapper">
        <div class="m-header">
            <a href="index.html" class="b-brand">
                <!-- ========   change your logo hear   ============ -->
                <img src="${pageContext.request.contextPath}/lib/images/logo.svg" alt="" class="logo logo-lg">
                <img src="${pageContext.request.contextPath}/lib/images/logo-sm.svg" alt="" class="logo logo-sm">
            </a>
        </div>
        <div class="navbar-content">
            <ul class="pc-navbar">
                <li class="pc-item pc-caption">
                    <label>Menu de Navegação</label>
                </li>
                <li class="pc-item">
                    <a href="${pageContext.request.contextPath}/index.jsp" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">home</i></span><span class="pc-mtext">Inicio</span></a>
                </li>
                <li class="pc-item">
                    <a href="${pageContext.request.contextPath}/venda.jsp" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">next_week</i></span><span class="pc-mtext">Realizar Vendas</span></a>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">dvr</i></span><span class="pc-mtext">Cadastro</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="${pageContext.request.contextPath}/cliente/listarCliente.jsp">Clientes</a></li>
                        <li class="pc-item"><a class="pc-link" href="${pageContext.request.contextPath}/produto/listarProduto.jsp">Produtos</a></li>
                        <li class="pc-item"><a class="pc-link" href="${pageContext.request.contextPath}/categoria/listarCategoria.jsp">Categorias de Produto</a></li>
                        <li class="pc-item"><a class="pc-link" href="${pageContext.request.contextPath}/fornecedor/listarFornecedor.jsp">Fornecedor</a></li>
                        <li class="pc-item"><a class="pc-link" href="${pageContext.request.contextPath}/filial/listarFilial.jsp">Filial</a></li>
                        <li class="pc-item"><a class="pc-link" href="${pageContext.request.contextPath}/usuario/listarUsuario.jsp">Usuários</a></li>
                    </ul>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">trending_up</i></span><span class="pc-mtext">Relatórios</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="${pageContext.request.contextPath}/relatorio/relatorioFilial.jsp">Vendas Semanais</a></li>
                        <li class="pc-item"><a class="pc-link" href="${pageContext.request.contextPath}/relatorio/relatorioSemanal.jsp">Vendas por Filial</a></li>
                    </ul>
                </li>
                <li class="pc-item">
                    <a href="icon-feather.html" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">history_edu</i></span><span class="pc-mtext">Controle de Usuários</span></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- [ navigation menu ] end -->


