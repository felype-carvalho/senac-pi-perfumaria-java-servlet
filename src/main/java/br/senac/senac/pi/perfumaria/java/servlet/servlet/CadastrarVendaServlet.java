/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.senac.pi.perfumaria.java.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fabri
 */
public class CadastrarVendaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String operacao = request.getParameter("operacaoVenda");

        String nome = request.getParameter("nomeCliente");
        String descricao = request.getParameter("cpfCliente");
        String qtd = request.getParameter("emailCliente");
        String preco = request.getParameter("dataNascimentoCliente");
        String idCategProduto = request.getParameter("estadoCivilCliente");

//        Produto produto = new Produto();
//        produto.setNome(nome);
//        produto.setDescricao(descricao);
//        produto.setQtd(Integer.parseInt(qtd));
//        produto.setPreco(Double.parseDouble(preco));
//        produto.setIdCategProduto(Integer.parseInt(idCategProduto));
//
//        if ("1".equals(operacao)) {
//            ProdutoDAO.atualizarProduto(produto);
//        } else {
//            ProdutoDAO.inserirProduto(produto);
//        }

        response.sendRedirect(request.getContextPath()+"/uteis/sucesso.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idProduto = req.getParameter("idProduto");
        String operacaoGETProduto = req.getParameter("operacaoGetProduto");
        //OPE = 1 => Atualização
//        if ("1".equals(operacaoGETProduto)) {
//            Produto produto = ProdutoDAO.visualizarCliente(Integer.parseInt(idProduto));
//            req.setAttribute("produtoAtualizacao", produto);
//            req.getRequestDispatcher("/produto/cadastrarProduto.jsp").forward(req, resp);
//        } else {
//            ProdutoDAO.deletarProduto(Integer.parseInt(idProduto));
//            resp.sendRedirect(req.getContextPath() + "/produto/ListarProdutoServlet");
//        }
    }

}
