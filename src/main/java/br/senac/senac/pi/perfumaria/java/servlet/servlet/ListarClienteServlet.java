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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author fabri
 */
public class ListarClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Cliente> clientes = ClienteDAO.listarClientes();
        request.setAttribute("listaClientes", clientes);

        String url = "/cliente/listarCliente.jsp";
        request.getRequestDispatcher(url).forward(request, response);
    }

}
