package br.senac.senac.pi.perfumaria.java.servlet.dao;

import br.senac.senac.pi.perfumaria.java.servlet.Conexao;
import br.senac.senac.pi.perfumaria.java.servlet.entidades.Cliente;
import java.util.List;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * @author Fabricio
 */
public class ClienteDAO {

    public static List<Cliente> listarClientes() {
        List<Cliente> clientes = new ArrayList<>();
        String query = "SELECT * FROM cliente;";

        Connection con = Conexao.getConexao();
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Cliente cliente = new Cliente();

                int idCliente = rs.getInt("id_cliente");
                String nome = rs.getString("nome");
                String cpf = rs.getString("cpf");
                String numeroTelefone = rs.getString("numero_telefone");
                String email = rs.getString("email");
                Date dataNascimento = rs.getDate("data_nascimento");
                String estadoCivil = rs.getString("estado_civil");
                String logradouro = rs.getString("logradouro");
                String bairro = rs.getString("bairro");
                int numero = rs.getInt("numero");
                String cep = rs.getString("cep");
                String cidade = rs.getString("cidade");
                String uf = rs.getString("uf");

                cliente.setIdCliente(idCliente);
                cliente.setNome(nome);
                cliente.setCpf(cpf);
                cliente.setNumeroTelefone(numeroTelefone);
                cliente.setEmail(email);
                cliente.setDataNascimento(dataNascimento);
                cliente.setEstadoCivil(estadoCivil);
                cliente.setLogradouro(logradouro);
                cliente.setBairro(bairro);
                cliente.setNumero(numero);
                cliente.setCep(cep);
                cliente.setCidade(cidade);
                cliente.setUf(uf);

                clientes.add(cliente);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return clientes;
    }

    public static boolean inserirCliente(Cliente cliente) {
        boolean ok = true;
        String query = "INSERT INTO cliente(nome, cpf, numero_telefone, email, data_nascimento, estado_civil, logradouro, bairro, numero, cep, cidade, uf) "
                     + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        Connection con = Conexao.getConexao();

        try {
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, cliente.getNome());
            ps.setString(2, cliente.getCpf());
            ps.setString(3, cliente.getNumeroTelefone());
            ps.setString(4, cliente.getEmail());
            ps.setDate(5, new java.sql.Date(cliente.getDataNascimento().getTime()));
            ps.setString(6, cliente.getEstadoCivil());
            ps.setString(7, cliente.getLogradouro());
            ps.setString(8, cliente.getBairro());
            ps.setInt(9, cliente.getNumero());
            ps.setString(10, cliente.getCep());
            ps.setString(11, cliente.getCidade());
            ps.setString(12, cliente.getUf());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }

        return ok;
    }

    public static boolean atualizarCliente(Cliente cliente) {
        boolean ok = true;
        String query = "UPDATE cliente set nome=?, "
                                        + "cpf=?, "
                                        + "numero_telefone=?, "
                                        + "email=?, "
                                        + "data_nascimento=?, "
                                        + "estado_civil=?, "
                                        + "logradouro=?, "
                                        + "bairro=?, "
                                        + "numero=?, "
                                        + "cep=?, "
                                        + "cidade=?, "
                                        + "uf=? "
                     + "WHERE id_cliente = ?;";
        Connection con = Conexao.getConexao();

        try {
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, cliente.getNome());
            ps.setString(2, cliente.getCpf());
            ps.setString(3, cliente.getNumeroTelefone());
            ps.setString(4, cliente.getEmail());
            ps.setDate(5, new java.sql.Date(cliente.getDataNascimento().getTime()));
            ps.setString(6, cliente.getEstadoCivil());
            ps.setString(7, cliente.getLogradouro());
            ps.setString(8, cliente.getBairro());
            ps.setInt(9, cliente.getNumero());
            ps.setString(10, cliente.getCep());
            ps.setString(11, cliente.getCidade());
            ps.setString(12, cliente.getUf());
            ps.setInt(13, cliente.getIdCliente());

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }

        return ok;
    }

    public static boolean deletarCliente(int idCliente) {
        boolean ok = true;
        String query = "DELETE FROM cliente WHERE id_cliente = ?";
        Connection con = Conexao.getConexao();

        try {
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, idCliente);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }

        return ok;
    }
}