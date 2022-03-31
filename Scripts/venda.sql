CREATE TABLE dim_venda (
                sk_venda INT NOT NULL,
                nk_venda INT NOT NULL,
                nm_saborproduto VARCHAR(20) NOT NULL,
                notafiscal INT NOT NULL,
                preco INT NOT NULL,
                PRIMARY KEY (sk_venda)
);