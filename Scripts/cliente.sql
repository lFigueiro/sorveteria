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