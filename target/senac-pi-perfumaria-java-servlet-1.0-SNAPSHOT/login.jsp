<%-- 
    Document   : Login
    Created on : 24 de out de 2021, 21:40:20
    Author     : Felype
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <c:import url="/uteis/header-import.jsp"/>
        <title>Listar Produtos</title>
    </head>
    <body>
        <div class="auth-wrapper">
            <div class="auth-content">
                <div class="card">
                    <div class="row align-items-center text-center">
                        <div class="col-md-12">
                            <div class="card-body">
                                <img src="lib/images/logo_light.jpg" alt="" class="img-fluid mb-4">
                                <h4 class="mb-3 f-w-400">Entre em Sua Conta</h4>
                                <div class="input-group mb-3">
                                    <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg></span>
                                    <input type="email" class="form-control" placeholder="Usuário">
                                </div>
                                <div class="input-group mb-4">
                                    <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg></span>
                                    <input type="password" class="form-control" placeholder="Senha">
                                </div>
                                
                                <button class="btn btn-block btn-primary mb-4">Entrar</button>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <c:import url="/uteis/footer-import.jsp"/>
</html>
