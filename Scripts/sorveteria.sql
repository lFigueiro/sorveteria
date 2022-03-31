
CREATE TABLE dim_local (
                sk_local INT NOT NULL,
                nk_local VARCHAR NOT NULL,
                nm_cliente VARCHAR(50) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                rua VARCHAR(50) NOT NULL,
                PRIMARY KEY (sk_local)
);


CREATE TABLE dim_venda (
                sk_venda INT NOT NULL,
                nk_venda INT NOT NULL,
                nm_saborproduto VARCHAR(20) NOT NULL,
                notafiscal INT NOT NULL,
                preco INT NOT NULL,
                PRIMARY KEY (sk_venda)
);


CREATE TABLE dim_data (
                sk_data INT NOT NULL,
                nk_data DATE NOT NULL,
                desc_data_completa VARCHAR(60) NOT NULL,
                nr_ano INT NOT NULL,
                nm_trimestre VARCHAR(20) NOT NULL,
                nr_ano_trimestre VARCHAR(20) NOT NULL,
                nr_mes INT NOT NULL,
                nm_mes VARCHAR(20) NOT NULL,
                ano_mes VARCHAR(20) NOT NULL,
                nr_semana INT NOT NULL,
                ano_semana VARCHAR(20) NOT NULL,
                nr_dia INT NOT NULL,
                nr_dia_ano INT NOT NULL,
                nm_dia_semana VARCHAR(20) NOT NULL,
                flag_final_semana CHAR NOT NULL,
                flag_feriado CHAR NOT NULL,
                nm_feriado VARCHAR(60) NOT NULL,
                etl_dt_inicio DATETIME NOT NULL,
                etl_dt_fim DATETIME NOT NULL,
                PRIMARY KEY (sk_data)
);


CREATE TABLE dim_cliente (
                sk_cliente INT NOT NULL,
                nk_cliente INT NOT NULL,
                nm_cliente VARCHAR(50) NOT NULL,
                genero VARCHAR(10) NOT NULL,
                dt_nascimento DATE NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                rua VARCHAR(50) NOT NULL,
                PRIMARY KEY (sk_cliente)
);


CREATE TABLE ft_sorveteria (
                sk_venda INT NOT NULL,
                sk_cliente INT NOT NULL,
                sk_local INT NOT NULL,
                sk_data INT NOT NULL,
                dd_codpedido INT NOT NULL,
                dd_hora_pedido VARCHAR(50) NOT NULL,
                md_qtd INT NOT NULL,
                md_desconto INT NOT NULL,
                md_valor_total DOUBLE PRECISION NOT NULL
);


ALTER TABLE ft_sorveteria ADD CONSTRAINT dim_local_ft_sorveteria_fk
FOREIGN KEY (sk_local)
REFERENCES dim_local (sk_local)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ft_sorveteria ADD CONSTRAINT dim_venda_ft_sorveteria_fk
FOREIGN KEY (sk_venda)
REFERENCES dim_venda (sk_venda)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ft_sorveteria ADD CONSTRAINT dim_data_ft_sorveteria_fk
FOREIGN KEY (sk_data)
REFERENCES dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ft_sorveteria ADD CONSTRAINT dim_cliente_ft_sorveteria_fk
FOREIGN KEY (sk_cliente)
REFERENCES dim_cliente (sk_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION;