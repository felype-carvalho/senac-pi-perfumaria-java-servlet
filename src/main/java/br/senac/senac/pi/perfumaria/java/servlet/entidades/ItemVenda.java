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
public class ItemVenda {

    private int idItemVenda;

    private int idVenda;

    private int idProduto;

    private int qtdVenda;

    private double valorUnitVenda;
}
