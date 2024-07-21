Claro! Aqui estão 10 exercícios práticos sobre inserção de dados em tabelas no PostgreSQL:

### Exercícios Práticos

#### 1. Inserção Simples

1. **Insira um novo registro na tabela `clientes` com os seguintes dados: nome `José Almeida`, email `jose@example.com`, data de nascimento `1991-08-15`.**
   ```sql
   INSERT INTO clientes (nome, email, data_nascimento) VALUES ('José Almeida', 'jose@example.com', '1991-08-15');
   ```

#### 2. Inserindo Múltiplos Registros

2. **Insira três novos registros na tabela `clientes` com os seguintes dados:**
   - nome: `Luisa Martins`, email: `luisa@example.com`, data de nascimento: `1988-03-22`
   - nome: `Felipe Nogueira`, email: `felipe@example.com`, data de nascimento: `1977-07-05`
   - nome: `Gabriela Ramos`, email: `gabriela@example.com`, data de nascimento: `1995-11-30`
   ```sql
   INSERT INTO clientes (nome, email, data_nascimento) VALUES 
   ('Luisa Martins', 'luisa@example.com', '1988-03-22'),
   ('Felipe Nogueira', 'felipe@example.com', '1977-07-05'),
   ('Gabriela Ramos', 'gabriela@example.com', '1995-11-30');
   ```

#### 3. Uso de Valores Padrão

3. **Insira um novo produto na tabela `produtos` com o nome `Tablet` e use os valores padrão para as outras colunas.**
   ```sql
   INSERT INTO produtos (nome) VALUES ('Tablet');
   ```

#### 4. Inserindo Dados em Tabelas com Chaves Estrangeiras

4. **Crie uma nova categoria chamada `Livros` na tabela `categorias` e insira um novo produto `Romance` na tabela `produtos` com preço `19.99` e atribua a categoria recém-criada.**
   ```sql
   INSERT INTO categorias (nome) VALUES ('Livros');
   INSERT INTO produtos (nome, preco, categoria_id) VALUES ('Romance', 19.99, (SELECT id FROM categorias WHERE nome = 'Livros'));
   ```

#### 5. Inserindo Dados com `RETURNING`

5. **Insira um novo registro na tabela `clientes` com os seguintes dados: nome `Ana Pereira`, email `ana@example.com`, data de nascimento `1990-05-19` e retorne o `id` do cliente inserido.**
   ```sql
   INSERT INTO clientes (nome, email, data_nascimento) VALUES ('Ana Pereira', 'ana@example.com', '1990-05-19') RETURNING id;
   ```

#### 6. Inserindo Dados com Subconsultas

6. **Insira dados na tabela `novos_clientes` copiando todos os clientes da tabela `clientes` que têm a data de nascimento anterior a `1990-01-01`.**
   ```sql
   INSERT INTO novos_clientes (nome, email, data_nascimento)
   SELECT nome, email, data_nascimento FROM clientes WHERE data_nascimento < '1990-01-01';
   ```

#### 7. Lidando com Conflitos

7. **Insira um novo registro na tabela `clientes` com os seguintes dados: nome `Bruno Silva`, email `bruno@example.com`, data de nascimento `1983-12-25`. Se o email já existir, atualize o nome e a data de nascimento.**
   ```sql
   INSERT INTO clientes (nome, email, data_nascimento) VALUES ('Bruno Silva', 'bruno@example.com', '1983-12-25')
   ON CONFLICT (email) DO UPDATE SET nome = EXCLUDED.nome, data_nascimento = EXCLUDED.data_nascimento;
   ```

#### 8. Inserindo Dados em Colunas de Tipo JSON

8. **Insira um novo registro na tabela `configuracoes` com os seguintes parâmetros JSON: tema `claro` e notificacoes `false`.**
   ```sql
   INSERT INTO configuracoes (parametros) VALUES ('{"tema": "claro", "notificacoes": false}');
   ```

#### 9. Inserindo Dados em Colunas de Tipo Array

9. **Insira um novo registro na tabela `etiquetas` com as tags `prioridade` e `trabalho`.**
   ```sql
   INSERT INTO etiquetas (tags) VALUES (ARRAY['prioridade', 'trabalho']);
   ```

#### 10. Inserindo Dados com Valores Padrão

10. **Insira um novo registro na tabela `produtos` com os seguintes dados: nome `Fone de Ouvido`, preço `99.99`. Deixe a coluna `em_estoque` com o valor padrão.**
    ```sql
    INSERT INTO produtos (nome, preco) VALUES ('Fone de Ouvido', 99.99);
    ```

Esses exercícios cobrem uma variedade de cenários de inserção de dados em tabelas no PostgreSQL, incluindo inserção simples, múltiplos registros, uso de valores padrão, manipulação de chaves estrangeiras, uso de `RETURNING`, subconsultas, tratamento de conflitos, e inserções com tipos de dados JSON e arrays.