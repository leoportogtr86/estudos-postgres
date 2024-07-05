Claro! Aqui estão 20 exercícios práticos cobrindo os temas abordados sobre conceitos básicos de banco de dados e PostgreSQL:

### Exercícios Práticos

#### 1. Criação de Banco de Dados
1. Crie um banco de dados chamado `empresa`.

#### 2. Criação de Tabelas
2. Dentro do banco de dados `empresa`, crie uma tabela chamada `funcionarios` com as colunas `id` (inteiro, chave primária), `nome` (texto), `idade` (inteiro), e `departamento` (texto).

#### 3. Inserção de Dados
3. Insira três registros na tabela `funcionarios` com os seguintes dados:
   - João, 30, TI
   - Maria, 25, RH
   - Pedro, 35, Vendas

#### 4. Consulta Básica
4. Realize uma consulta para retornar todos os registros da tabela `funcionarios`.

#### 5. Filtragem de Dados
5. Realize uma consulta para retornar apenas os funcionários do departamento de TI.

#### 6. Atualização de Dados
6. Atualize a idade de Maria para 26 anos.

#### 7. Deleção de Dados
7. Delete o funcionário Pedro da tabela `funcionarios`.

#### 8. Criação de Índice
8. Crie um índice na coluna `nome` da tabela `funcionarios`.

#### 9. Chave Estrangeira
9. Crie uma tabela chamada `departamentos` com as colunas `id` (inteiro, chave primária) e `nome` (texto). Adicione uma chave estrangeira na tabela `funcionarios` que referencia a coluna `id` da tabela `departamentos`.

#### 10. Junção (JOIN)
10. Realize uma consulta para retornar o nome dos funcionários juntamente com o nome do departamento ao qual pertencem.

#### 11. Agrupamento de Dados
11. Realize uma consulta para contar quantos funcionários existem em cada departamento.

#### 12. Funções Agregadas
12. Realize uma consulta para calcular a média de idade dos funcionários.

#### 13. Criação de View
13. Crie uma view chamada `funcionarios_ti` que contenha apenas os funcionários do departamento de TI.

#### 14. Criação de Tabela Temporária
14. Crie uma tabela temporária chamada `temp_funcionarios` que contenha os mesmos dados da tabela `funcionarios`.

#### 15. Utilização de Transações
15. Dentro de uma transação, insira um novo funcionário e, em seguida, realize um rollback. Verifique se o funcionário foi realmente inserido ou não.

#### 16. Manipulação de Dados de Texto
16. Realize uma consulta que retorne o nome dos funcionários em letras maiúsculas.

#### 17. Utilização de Funções de Data e Hora
17. Adicione uma coluna `data_contratacao` (tipo data) na tabela `funcionarios` e insira uma data de contratação para cada funcionário. Em seguida, realize uma consulta para retornar os funcionários contratados no último ano.

#### 18. Criação de Trigger
18. Crie um trigger que insira a data atual na coluna `data_contratacao` automaticamente quando um novo funcionário for adicionado.

#### 19. Backup e Restauração
19. Realize um backup do banco de dados `empresa` utilizando o comando `pg_dump`. Em seguida, restaure esse backup em um novo banco de dados chamado `empresa_backup`.

#### 20. Segurança e Gerenciamento de Usuários
20. Crie um novo usuário chamado `usuario_teste` com senha `senha123`. Conceda permissões de leitura na tabela `funcionarios` para este usuário.

Esses exercícios cobrem uma ampla gama de operações e conceitos básicos, ajudando a reforçar o entendimento e a prática com bancos de dados e PostgreSQL.