use dbpesquisa;

-- Soma das pessoas do gênero masculino que gostam de cachorro e gato
SELECT  genero, 
		count(genero) as total
FROM stg_pesquisa
WHERE genero = 'Masculino' AND animal_estimacao IN ('cachorro', 'gato');


-- Cria tabela temporária idade para análise
CREATE TEMPORARY TABLE idade
SELECT  cod_pessoa, 
		genero, 
        data_nascimento,
        timestampdiff(YEAR, pessoa.data_nascimento, NOW()) AS idade
FROM pessoa;


-- Média de idades de homens que gostam de chá e clima frio
SELECT  id.genero, 
		AVG(idade) as media,
        stg.bebida_favorita,
        stg.clima
FROM idade as id
JOIN stg_pesquisa as stg ON id.cod_pessoa = stg.cod_pessoa
WHERE id.genero = 'Masculino' AND bebida_favorita = 'Chá' AND clima = 'frio';

-- Hobbie de menor preferência entre as mulheres
SELECT  genero,
		hobbies, 
		count(hobbies) as total
FROM stg_pesquisa
WHERE genero = 'Feminino'
GROUP BY hobbies
ORDER BY total ASC
LIMIT 1;

-- Hobbie de maior preferência entre os homens que gostam de cachorro
SELECT  genero,
		hobbies,
        count(hobbies) as total
FROM stg_pesquisa
WHERE genero = 'Masculino' AND animal_estimacao = 'cachorro'
GROUP BY hobbies
ORDER BY total DESC
LIMIT 1;

-- Bebida favorita entre mulheres e homens
SELECT  genero,
		bebida_favorita,
		count(bebida_favorita) as total
FROM stg_pesquisa
GROUP BY genero, bebida_favorita
ORDER BY total DESC;

-- Média de idade das pessoas que tem como hobbie ler livros
SELECT  hobbies,
		avg(idade) as media
FROM stg_pesquisa as stg
JOIN idade as id ON id.cod_pessoa = stg.cod_pessoa
WHERE hobbies = 'Ler livros';

-- Quantidade de pessoas que tem hobbie escrever e sua média de idade
SELECT  hobbies,
		count(hobbies) as total,
		avg(idade) as media_idade
FROM stg_pesquisa as stg
JOIN idade as id ON id.cod_pessoa = stg.cod_pessoa
WHERE hobbies = 'Escrever';

-- Quantidade de pessoas que gostam de tempo frio
SELECT 	clima,
		count(clima) as total
FROM stg_pesquisa
WHERE clima = 'frio';

-- Animal de estimação preferido entre as mulheres
SELECT 	genero,
		animal_estimacao,
        count(animal_estimacao) as total
FROM stg_pesquisa 
WHERE genero = 'Feminino'
GROUP BY animal_estimacao
ORDER BY count(animal_estimacao) DESC
LIMIT 1;

-- Quantidade de pessoas que gostam do clima quente por gênero
SELECT 	genero,
		clima,
        count(clima) as total
FROM stg_pesquisa
WHERE clima = 'quente'
GROUP BY genero;

-- Número total de pessoas que responderam na pesquisa que gostam de cachorro
SELECT  ae.animal_estimacao, 
		count(1) as total
FROM pesquisa as p
JOIN animal_estimacao as ae
ON p.cod_animal_estimacao = ae.cod_animal_estimacao
WHERE ae.animal_estimacao = 'cachorro'
GROUP BY animal_estimacao;
        