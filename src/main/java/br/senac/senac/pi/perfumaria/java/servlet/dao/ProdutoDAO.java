package br.senac.senac.pi.perfumaria.java.servlet.dao;

import br.senac.senac.pi.perfumaria.java.servlet.Conexao;
import br.senac.senac.pi.perfumaria.java.servlet.entidades.Produto;
import java.util.List;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author fabri
 */
public class ProdutoDAO {

    public static List<Produto> listarProdutos() {
        List<Produto> produtos = new ArrayList<>();
        String query = "SELECT * FROM produto;";
        Connection con = null;

        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Produto produto = new Produto();

                int idProduto = rs.getInt("id_produto");
                String nome = rs.getString("nome");
                String descricao = rs.getString("descricao");
                int qtd = rs.getInt("qtd");
                double preco = rs.getDouble("preco");
                int idCategProduto = rs.getInt("id_categoria_produto");

                produto.setIdProduto(idProduto);
                produto.setNome(nome);
                produto.setDescricao(descricao);
                produto.setQtd(qtd);
                produto.setPreco(preco);
                produto.setIdCategProduto(idCategProduto);

                produtos.add(produto);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return produtos;
    }

    public static boolean inserirProduto(Produto produto) {
        boolean ok = true;
        String query = "INSERT INTO produto(nome, descricao, qtd, preco, id_categoria_produto) "
                     + "VALUES (?,?,?,?,?,?)";
        Connection con = null;

        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, produto.getNome());
            ps.setString(2, produto.getDescricao());
            ps.setInt(3, produto.getQtd());
            ps.setDouble(4, produto.getPreco());
            ps.setInt(5, produto.getIdCategProduto());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }

        return ok;
    }

    public static boolean atualizarProduto(Produto produto) {
        boolean ok = true;
        String query = "UPDATE produto set nome=?, "
                                        + "descricao=?, "
                                        + "qtd=?, "
                                        + "preco=?, "
                                        + "id_categoria_produto=?, "
                     + "WHERE id_produto = ?;";
        Connection con = null;

        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, produto.getNome());
            ps.setString(2, produto.getDescricao());
            ps.setInt(3, produto.getQtd());
            ps.setDouble(4, produto.getPreco());
            ps.setInt(5, produto.getIdCategProduto());
            ps.setInt(6, produto.getIdProduto());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }

        return ok;
    }

    public static Produto visualizarCliente(int idProdutoV) {
        Produto produto = new Produto();
        String query = "SELECT * FROM produto WHERE id_produto = ?;";
        Connection con = null;

        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, idProdutoV);
            ResultSet rs = ps.executeQuery();

            produto.setIdProduto(rs.getInt("id_produto"));
            produto.setNome(rs.getString("nome"));
            produto.setDescricao(rs.getString("descricao"));
            produto.setQtd(rs.getInt("qtd"));
            produto.setPreco(rs.getDouble("preco"));
            produto.setIdCategProduto(rs.getInt("id_categoria_produto"));

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return produto;
    }

    public static boolean deletarProduto(int idProduto) {
        boolean ok = true;
        String query = "DELETE FROM produto WHERE id_produto = ?";
        Connection con = null;

        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, idProduto);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }

        return ok;
    }
}
