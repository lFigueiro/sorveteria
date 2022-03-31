
CREATE TABLE dim_local (
                sk_local INT NOT NULL,
                nk_local VARCHAR NOT NULL,
                nm_cliente VARCHAR(50) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                rua VARCHAR(50) NOT NULL,
                PRIMARY KEY (sk_local)
);