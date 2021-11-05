/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.senac.pi.perfumaria.java.servlet.entidades;

import lombok.Getter;
import lombok.Setter;

/**
 * @author fabri
 */
@Getter
@Setter
public class Produto {

    private int idProduto;

    private String nome;

    private String descricao;

    private int qtd;

    private double preco;

    private int idCategProduto;
}
