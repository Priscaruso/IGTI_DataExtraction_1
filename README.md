# IGTI DATA EXTRACTION PROJECT NUMBER 1

🇧🇷
### Tópicos 

:small_blue_diamond: [Enunciado do projeto](#enunciado-do-projeto)

:small_blue_diamond: [Objetivo](#objetivo)

:small_blue_diamond: [Execução](#execução)

:small_blue_diamond: [Banco de Dados MySQL](#banco-de-dados-mysql)

:small_blue_diamond: [Diagrama entidade e relacionamento](#diagrama-entidade-e-relacionamento)

:small_blue_diamond: [Script para Criação das estruturas das Tabelas](#script-para-criação-das-estruturas-das-tabelas)

:small_blue_diamond: [Script de Inserção dos dados na Tabela Pesquisa](#script-de-inserção-dos-dados-na-tabela-pesquisa)

:small_blue_diamond: [Consultas SQL](#consultas-sql)


## Enunciado do projeto
 Um instituto de pesquisa realizou uma pesquisa durante todos os dias do ano de 2020, no qual foram entrevistadas diversas pessoas e coletado dados            referentes a preferências pessoais delas em relação aos seguintes assuntos:
  * Animal de estimação
  * Bebida
  * Clima
  * Hobbies

## Objetivo

<p align="justify">
  Trabalho prático de coleta de dados desenvolvido durante o Bootcamp DiversiData Tech PAN do IGTI em parceria com o banco PAN.
  O trabalho consiste em realizar as seguintes atividades:
  
  * Extrair os dados fictícios dessa pesquisa realizada por meio de uma lista de arquivos
  * Criar estruturas de tabelas no banco de dados MySQL
  * Inserir os dados coletados na estrutura de tabelas criadas
  * Realizar comandos SQL para extrair informações dos dados armazenados
  
  </p>
 
## Execução
  Para realizar o projeto foi usado um jupyter notebook usando a linguagem Python. 
  Primeiramente, é preciso criar um ambiente virtual para instalar todos os pacotes necessários no projeto com os seguintes comandos: 
  'python -m venv /path/to/directory', onde /path/to/directory é o diretório onde será criado o ambiente virtual e depois ativar o ambiente virtual com o comando '.      /path/to/directory/bin/activate'.
  Depois é necessário baixar o arquivo do notebook 'coleta_dados_pesquisa.ipynb' e o dataset usado contido na pasta 'BASE_TP'. Depois é só fazer o upload do notebook     para o Google Colab, seguir cada passo descrito no notebook, fazendo os ajustes necessários no notebook quanto ao local de armazenamento do dataset e aos dados de     conexão para acessar o banco MySQL.
  
 
 ## Banco de dados MySQL
  Para criar as estruturas de tabelas para armazenar os dados da pesquisa, foi utilizado o Banco de Dados relacional MySQL. Para usá-lo baixar instalar seguindo as       instruções no link abaixo, dependendo do sistema operacional:
  
  https://dev.mysql.com/downloads/mysql/
  
  
  Além do servidor, é preciso instalar também o MySQL Workbench usado como o SGBD (Sistema Gerenciador de Banco de Dados), contido no link abaixo:
  
  https://dev.mysql.com/downloads/workbench/
  
  
  ## Diagrama Entidade e Relacionamento 
   O diagrama criado no banco MySQL encontra-se no arquivo 'diagrama_pesquisa.mwb'. Basta baixar e fazer o upload dele para o MySQL Workbench.
  
  ## Script para Criação das estruturas das Tabelas
  Para criar as tabelas a partir do diagrama entidade e relacionamento feito, foi gerado o script 'script_pesquisa.sql'. Basta baixá-lo, fazer o carregamento dele no
  MySQL Workbench e executar o script.
  
  ## Script de Inserção dos dados na Tabela Pesquisa
  Para inserir os dados na tabela pesquisa no banco MySQL, foi criado o script SQL 'insercao_tabela_pesquisa.sql' a partir dos dados inseridos já nas outras tabelas no banco. Basta baixá-lo, fazer o upload para o Workbench e rodar o script.
  
  ## Consultas SQL 
  
  Para extrair as informações necessárias a partir dos dados armazenados no banco, foi criado um arquivo de consultas SQL 'consultas.sql'. Basta baixá-lo e fazer o upload do mesmo para o MySQL Workbench e executá-lo para obter as informações.

