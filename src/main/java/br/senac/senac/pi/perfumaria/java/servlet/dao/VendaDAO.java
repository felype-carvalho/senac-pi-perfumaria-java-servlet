/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.senac.pi.perfumaria.java.servlet.dao;

import br.senac.senac.pi.perfumaria.java.servlet.Conexao;
import br.senac.senac.pi.perfumaria.java.servlet.entidades.Venda;
import br.senac.senac.pi.perfumaria.java.servlet.entidades.ItemVenda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fabri
 */
public class VendaDAO {

    public static boolean inserirVenda(Venda venda, ArrayList<ItemVenda> itemVenda) {
        boolean retorno = false;
        Connection con = null;
        PreparedStatement instrucaoSQL = null;
        PreparedStatement instrucaoSQL2 = null;
        PreparedStatement instrucaoSQL3 = null;
        PreparedStatement instrucaoSQL4 = null;
        ResultSet rsQtd = null;

        try {
            con = Conexao.getConexao();

            instrucaoSQL = con.prepareStatement("INSERT INTO venda (data_venda, id_cliente, valor_total) VALUES (?,?,?)", Statement.RETURN_GENERATED_KEYS);
            instrucaoSQL.setDate(1, new java.sql.Date(venda.getDataVenda().getTime()));
            instrucaoSQL.setInt(2, venda.getIdCliente());
            instrucaoSQL.setDouble(3, venda.getValorTotal());

            int linhasAfetadas = instrucaoSQL.executeUpdate();
            if (linhasAfetadas > 0) {

                ResultSet rs = instrucaoSQL.getGeneratedKeys();
                int id = 0;
                if(rs.next()){
                    id = rs.getInt(1);
                    for (ItemVenda item : itemVenda) {
                        instrucaoSQL2 = con.prepareStatement("INSERT INTO item_venda (id_venda, id_produto, qtd, valor_unitario) VALUES (?,?,?,?)");
                        instrucaoSQL2.setInt(1, id);
                        instrucaoSQL2.setInt(2, item.getIdProduto());
                        instrucaoSQL2.setInt(3, item.getQtdVenda());
                        instrucaoSQL2.setDouble(4, item.getValorUnitVenda());
                        instrucaoSQL2.executeUpdate();

                        instrucaoSQL3 = con.prepareStatement("SELECT qtd FROM produto WHERE id = ?");
                        instrucaoSQL3.setInt(1, item.getIdProduto());
                        rsQtd = instrucaoSQL3.executeQuery();

                        int qtdNova = (item.getQtdVenda() - rs.getInt("qtd"));

                        instrucaoSQL4 = con.prepareStatement("UPDATE produto SET qtd = ? WHERE id = ?");
                        instrucaoSQL4.setInt(1, qtdNova);
                        instrucaoSQL4.setInt(2, item.getIdProduto());
                        instrucaoSQL4.executeUpdate();
                    }
                    retorno = true;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return retorno;
    }
}
