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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String operacao = request.getParameter("operacaoCliente");

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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idCliente = req.getParameter("idCliente");
        String operacaoGETCliente = req.getParameter("operacaoGetCliente");
        //OPE = 1 => Atualização
        if ("1".equals(operacaoGETCliente)) {
            Cliente cliente = ClienteDAO.visualizarCliente(Integer.parseInt(idCliente));
            req.setAttribute("clienteAtualizacao", cliente);
            req.getRequestDispatcher("/cliente/cadastrarCliente.jsp").forward(req, resp);
        } else {
            ClienteDAO.deletarCliente(Integer.parseInt(idCliente));
            resp.sendRedirect(req.getContextPath() + "/cliente/listar");
        }
    }
}
