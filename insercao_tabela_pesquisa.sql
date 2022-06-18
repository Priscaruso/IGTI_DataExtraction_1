use dbpesquisa;

INSERT INTO pesquisa (data_pesquisa, cod_pessoa, cod_animal_estimacao, cod_bebida, cod_hobbie, cod_clima)
( 
	SELECT stg.data_coleta as data_pesquisa,
			stg.cod_pessoa as cod_pessoa,
            animal.cod_animal_estimacao as cod_animal_estimacao,
            bebida.cod_bebida as cod_bebida,
            hobbie.cod_hobbie,
            clima.cod_clima
    FROM stg_pesquisa as stg
    JOIN animal_estimacao as animal ON animal.animal_estimacao = stg.animal_estimacao
    JOIN bebida ON bebida.bebida = stg.bebida_favorita
    JOIN hobbie ON hobbie.hobbie = stg.hobbies
    JOIN clima ON clima.clima = stg.clima

);

SELECT * FROM pesquisa;

