create database perfumaria


CREATE TABLE Cliente (
    id varchar(11),
    CPF varchar(11),
    nome varchar(60),
    email varchar(30),
    data_nasc varchar(10),
    telefone varchar(10),
    endereço varchar(30),
    cep varchar(10),
    PRIMARY KEY (id, CPF)
),

CREATE TABLE Categoria Produto (
    Perfumaria varchar(20),
    Corpo_banho varchar(20),
    Presentes varchar(20),
    Maquiagem varchar(20),
    Cabelos varchar(20),
    Pele varchar(20)),

/* brModelo: */

CREATE TABLE Venda (
    fk_Funcionário_id_func varchar(11),
    fk_Cliente_id varchar(11),
    fk_Cliente_CPF varchar(11)
);
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_1
    FOREIGN KEY (fk_Funcionário_id_func)
    REFERENCES Funcionário (id_func)
    ON DELETE SET NULL;
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_2
    FOREIGN KEY (fk_Cliente_id, fk_Cliente_CPF)
    REFERENCES Cliente (id, CPF)
    ON DELETE SET NULL;
    
    /* brModelo: */

CREATE TABLE Funcionário (
    id_func varchar(11) PRIMARY KEY,
    nome_func varchar(30),
    cargo_func varchar(11),
    salario_func varchar(11)
);
 
ALTER TABLE Funcionário ADD CONSTRAINT FK_Funcionário_2
    FOREIGN KEY (salario_func)
    REFERENCES Fornecedor  (id_fornec);
    
    /* brModelo: */

CREATE TABLE Fornecedor  (
    nome_fornec varchar(11),
    id_fornec varchar(11) PRIMARY KEY,
    cidade_fornec varchar(11),
    endereço_fornec varchar(20)
);

/* brModelo: */

CREATE TABLE Filiais (
    fk_Funcionário_id_func varchar(11),
    fk_Fornecedor _id_fornec varchar(11)
);
 
ALTER TABLE Filiais ADD CONSTRAINT FK_Filiais_1
    FOREIGN KEY (fk_Funcionário_id_func)
    REFERENCES Funcionário (id_func)
    ON DELETE SET NULL;
 
ALTER TABLE Filiais ADD CONSTRAINT FK_Filiais_2
    FOREIGN KEY (fk_Fornecedor _id_fornec)
    REFERENCES Fornecedor  (id_fornec)
    ON DELETE SET NULL;
    
    /* brModelo: */

CREATE TABLE Produto (
    id_prod varchar(10) PRIMARY KEY,
    nome_prod varchar(10),
    preço_prod varchar(11),
    categoria_prod varchar(20)
);

/* brModelo: */

CREATE TABLE Categoria Produto (
    Perfumaria varchar(20),
    Corpo_banho varchar(20),
    Presentes varchar(20),
    Maquiagem varchar(20),
    Cabelos varchar(20),
    Pele varchar(20)
);
    
 