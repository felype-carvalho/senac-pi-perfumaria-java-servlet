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
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

        String nome = request.getParameter("cNomeCliente");
        String cpf = request.getParameter("cCpfCliente");
        String email = request.getParameter("cEmailCliente");
        String dataNascimento = request.getParameter("cDataNascimentoCliente");
        String estadoCivil = request.getParameter("cEstadoCivilCliente");
        String numeroTelefone = request.getParameter("cTelefoneCliente");
        String logradouro = request.getParameter("cLogradouroCliente");
        String numero = request.getParameter("cNumeroCliente");
        String cep = request.getParameter("cCepCliente");
        String bairro = request.getParameter("cBairroCliente");
        String cidade = request.getParameter("cCidadeCliente");
        String uf = request.getParameter("cUfCliente");
        
        SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");
        Date novaDataFormatada = new Date();
        try {
            novaDataFormatada = formatoData.parse(dataNascimento);
        } catch (ParseException ex) {
            System.out.println("Erro na conversão de data! " + ex);
        }

        Cliente cliente = new Cliente();
        cliente.setNome(nome);
        cliente.setCpf(cpf);
        cliente.setEmail(email);
        cliente.setDataNascimento(novaDataFormatada);
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
