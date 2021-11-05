/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.senac.pi.perfumaria.java.servlet.entidades;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author fabri
 */
@Getter
@Setter
public class Venda {

    private int idVenda;

    private Date dataVenda;

    private int idCliente;

    private double valorTotal;
}
