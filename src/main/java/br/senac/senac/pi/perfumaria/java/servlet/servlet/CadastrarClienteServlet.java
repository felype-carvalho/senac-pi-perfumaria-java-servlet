/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.senac.pi.perfumaria.java.servlet.servlet;

import br.senac.senac.pi.perfumaria.java.servlet.dao.ClienteDAO;
import br.senac.senac.pi.perfumaria.java.servlet.entidades.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Fabricio
 */
public class CadastrarClienteServlet extends HttpServlet {

//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet CadastrarClienteServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet CadastrarClienteServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }

//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String operacao = request.getParameter("operacao");

        String nome = request.getParameter("nomeCliente");
        String cpf = request.getParameter("cpfCliente");
        String email = request.getParameter("emailCliente");
        String dataNascimento = request.getParameter("dataNascimentoCliente");
        String estadoCivil = request.getParameter("estadoCivilCliente");
        String numeroTelefone = request.getParameter("telefoneCliente");
        String logradouro = request.getParameter("logradouroCliente");
        String numero = request.getParameter("numeroCliente");
        String cep = request.getParameter("cepCliente");
        String bairro = request.getParameter("bairroCliente");
        String cidade = request.getParameter("cidadeCliente");
        String uf = request.getParameter("ufCliente");

        Cliente cliente = new Cliente();
        cliente.setNome(nome);
        cliente.setCpf(cpf);
        cliente.setEmail(email);
        cliente.setDataNascimento(new Date(dataNascimento));
        cliente.setEstadoCivil(estadoCivil);
        cliente.setNumeroTelefone(numeroTelefone);
        cliente.setLogradouro(logradouro);
        cliente.setNumero(Integer.parseInt(numero));
        cliente.setCep(cep);
        cliente.setBairro(bairro);
        cliente.setCidade(cidade);
        cliente.setUf(uf);

        if ("1".equals(operacao)) {
            ClienteDAO.atualizarCliente(cliente);
        } else {
            ClienteDAO.inserirCliente(cliente);
        }

        response.sendRedirect(request.getContextPath()+"/uteis/sucesso.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
