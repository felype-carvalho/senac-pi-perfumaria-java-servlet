package br.senac.senac.pi.perfumaria.java.servlet.entidades;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

/**
 * @author Fabricio
 */
@Getter
@Setter
public class Cliente {

    private int idCliente;

    private String nome;

    private String cpf;

    private String numeroTelefone;

    private String email;

    private Date dataNascimento;

    private String estadoCivil;

    private String endereco;

   private String cep;

   private String cidade;

   private String uf;

}
