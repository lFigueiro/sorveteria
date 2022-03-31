
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
                PRIMARY KEY (sk_data)
);