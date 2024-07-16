### Exercícios Práticos

#### 1. Criação de Tabelas Simples

1. **Crie uma tabela chamada `alunos` com as colunas `id` (chave primária), `nome` (texto de até 100 caracteres) e `data_nascimento` (data).**
   ```sql
   CREATE TABLE alunos (
       id SERIAL PRIMARY KEY,
       nome VARCHAR(100),
       data_nascimento DATE
   );
   ```

2. **Crie uma tabela chamada `cursos` com as colunas `id` (chave primária), `nome` (texto de até 50 caracteres) e `descricao` (texto).**
   ```sql
   CREATE TABLE cursos (
       id SERIAL PRIMARY KEY,
       nome VARCHAR(50),
       descricao TEXT
   );
   ```

#### 2. Adição de Restrições

3. **Adicione uma restrição `NOT NULL` à coluna `descricao` na tabela `cursos`.**
   ```sql
   ALTER TABLE cursos ALTER COLUMN descricao SET NOT NULL;
   ```

4. **Crie uma tabela chamada `inscricoes` com as colunas `id` (chave primária), `aluno_id` (chave estrangeira para `alunos`), `curso_id` (chave estrangeira para `cursos`) e `data_inscricao` (data, não nula).**
   ```sql
   CREATE TABLE inscricoes (
       id SERIAL PRIMARY KEY,
       aluno_id INT REFERENCES alunos(id),
       curso_id INT REFERENCES cursos(id),
       data_inscricao DATE NOT NULL
   );
   ```

#### 3. Tipos de Dados Diferentes

5. **Crie uma tabela chamada `produtos` com as colunas `id` (chave primária), `nome` (texto de até 100 caracteres), `preco` (decimal com 10 dígitos e 2 casas decimais) e `em_estoque` (booleano).**
   ```sql
   CREATE TABLE produtos (
       id SERIAL PRIMARY KEY,
       nome VARCHAR(100),
       preco DECIMAL(10, 2),
       em_estoque BOOLEAN
   );
   ```

6. **Crie uma tabela chamada `enderecos` com as colunas `id` (chave primária), `rua` (texto de até 100 caracteres), `cidade` (texto de até 50 caracteres), `estado` (texto de 2 caracteres), `cep` (texto de 10 caracteres).**
   ```sql
   CREATE TABLE enderecos (
       id SERIAL PRIMARY KEY,
       rua VARCHAR(100),
       cidade VARCHAR(50),
       estado CHAR(2),
       cep VARCHAR(10)
   );
   ```

#### 4. Colunas de Data e Hora

7. **Crie uma tabela chamada `eventos` com as colunas `id` (chave primária), `nome` (texto de até 100 caracteres), `data_inicio` (timestamp), `data_fim` (timestamp).**
   ```sql
   CREATE TABLE eventos (
       id SERIAL PRIMARY KEY,
       nome VARCHAR(100),
       data_inicio TIMESTAMP,
       data_fim TIMESTAMP
   );
   ```

8. **Adicione uma coluna `criado_em` (timestamp com fuso horário) com valor padrão de `NOW()` à tabela `eventos`.**
   ```sql
   ALTER TABLE eventos ADD COLUMN criado_em TIMESTAMPTZ DEFAULT NOW();
   ```

#### 5. Trabalhando com JSON e Arrays

9. **Crie uma tabela chamada `configuracoes` com as colunas `id` (chave primária) e `parametros` (JSONB).**
   ```sql
   CREATE TABLE configuracoes (
       id SERIAL PRIMARY KEY,
       parametros JSONB
   );
   ```

10. **Crie uma tabela chamada `etiquetas` com as colunas `id` (chave primária) e `tags` (array de texto).**
    ```sql
    CREATE TABLE etiquetas (
        id SERIAL PRIMARY KEY,
        tags TEXT[]
    );
    ```

#### 6. Manipulação de Tabelas

11. **Adicione uma coluna `telefone` (texto de até 15 caracteres) à tabela `alunos`.**
    ```sql
    ALTER TABLE alunos ADD COLUMN telefone VARCHAR(15);
    ```

12. **Remova a coluna `telefone` da tabela `alunos`.**
    ```sql
    ALTER TABLE alunos DROP COLUMN telefone;
    ```

13. **Renomeie a coluna `nome` na tabela `produtos` para `nome_produto`.**
    ```sql
    ALTER TABLE produtos RENAME COLUMN nome TO nome_produto;
    ```

14. **Renomeie a tabela `alunos` para `estudantes`.**
    ```sql
    ALTER TABLE alunos RENAME TO estudantes;
    ```

#### 7. Uso de Restrições e Padrões

15. **Adicione uma restrição `UNIQUE` na coluna `email` da tabela `estudantes`.**
    ```sql
    ALTER TABLE estudantes ADD CONSTRAINT unique_email UNIQUE (email);
    ```

16. **Adicione uma restrição `CHECK` na coluna `preco` da tabela `produtos` para garantir que os preços sejam maiores que zero.**
    ```sql
    ALTER TABLE produtos ADD CONSTRAINT check_preco CHECK (preco > 0);
    ```

17. **Adicione um valor padrão de `TRUE` para a coluna `em_estoque` da tabela `produtos`.**
    ```sql
    ALTER TABLE produtos ALTER COLUMN em_estoque SET DEFAULT TRUE;
    ```

#### 8. Exclusão de Tabelas

18. **Exclua a tabela `configuracoes`.**
    ```sql
    DROP TABLE configuracoes;
    ```

19. **Exclua a tabela `eventos` apenas se ela existir.**
    ```sql
    DROP TABLE IF EXISTS eventos;
    ```

#### 9. Criação e Exclusão de Tabelas com Restrições

20. **Crie uma tabela `biblioteca` com colunas `id` (chave primária), `titulo` (texto), `autor` (texto), `publicacao` (ano, não nulo) e `isbn` (texto, único).**
    ```sql
    CREATE TABLE biblioteca (
        id SERIAL PRIMARY KEY,
        titulo VARCHAR(255),
        autor VARCHAR(255),
        publicacao YEAR NOT NULL,
        isbn VARCHAR(20) UNIQUE
    );
    ```

    **Depois, exclua a tabela `biblioteca`.**
    ```sql
    DROP TABLE biblioteca;
    ```

Esses exercícios abrangem a criação, modificação e exclusão de tabelas, bem como a aplicação de diferentes tipos de dados e restrições no PostgreSQL. Eles fornecem uma base sólida para entender e trabalhar com a estrutura de tabelas em um banco de dados relacional.