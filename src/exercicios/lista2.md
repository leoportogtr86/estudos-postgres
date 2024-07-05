Claro! Aqui estão 20 exercícios práticos sobre SQL que cobrem os conceitos fundamentais discutidos no artigo:

### Exercícios Práticos de SQL

#### 1. Criação de Banco de Dados e Tabelas

1. Crie um banco de dados chamado `loja`.
   ```sql
   CREATE DATABASE loja;
   ```

2. Crie uma tabela chamada `produtos` com as colunas `id` (inteiro, chave primária), `nome` (texto), `preco` (decimal), e `estoque` (inteiro).
   ```sql
   CREATE TABLE produtos (
       id SERIAL PRIMARY KEY,
       nome VARCHAR(100),
       preco DECIMAL(10, 2),
       estoque INT
   );
   ```

3. Crie uma tabela chamada `clientes` com as colunas `id` (inteiro, chave primária), `nome` (texto), `email` (texto).
   ```sql
   CREATE TABLE clientes (
       id SERIAL PRIMARY KEY,
       nome VARCHAR(100),
       email VARCHAR(100)
   );
   ```

4. Crie uma tabela chamada `vendas` com as colunas `id` (inteiro, chave primária), `produto_id` (inteiro), `cliente_id` (inteiro), `quantidade` (inteiro), `data_venda` (data).
   ```sql
   CREATE TABLE vendas (
       id SERIAL PRIMARY KEY,
       produto_id INT,
       cliente_id INT,
       quantidade INT,
       data_venda DATE,
       FOREIGN KEY (produto_id) REFERENCES produtos(id),
       FOREIGN KEY (cliente_id) REFERENCES clientes(id)
   );
   ```

#### 2. Inserção de Dados

5. Insira três registros na tabela `produtos`.
   ```sql
   INSERT INTO produtos (nome, preco, estoque) VALUES ('Produto A', 10.00, 100);
   INSERT INTO produtos (nome, preco, estoque) VALUES ('Produto B', 20.00, 50);
   INSERT INTO produtos (nome, preco, estoque) VALUES ('Produto C', 30.00, 70);
   ```

6. Insira três registros na tabela `clientes`.
   ```sql
   INSERT INTO clientes (nome, email) VALUES ('Cliente 1', 'cliente1@example.com');
   INSERT INTO clientes (nome, email) VALUES ('Cliente 2', 'cliente2@example.com');
   INSERT INTO clientes (nome, email) VALUES ('Cliente 3', 'cliente3@example.com');
   ```

7. Insira dois registros na tabela `vendas`.
   ```sql
   INSERT INTO vendas (produto_id, cliente_id, quantidade, data_venda) VALUES (1, 1, 2, '2024-07-01');
   INSERT INTO vendas (produto_id, cliente_id, quantidade, data_venda) VALUES (2, 2, 1, '2024-07-02');
   ```

#### 3. Consultas Básicas

8. Selecione todos os registros da tabela `produtos`.
   ```sql
   SELECT * FROM produtos;
   ```

9. Selecione os nomes e preços dos produtos que têm estoque maior que 50.
   ```sql
   SELECT nome, preco FROM produtos WHERE estoque > 50;
   ```

10. Selecione o nome e email dos clientes que realizaram uma compra.
   ```sql
   SELECT c.nome, c.email FROM clientes c
   INNER JOIN vendas v ON c.id = v.cliente_id;
   ```

#### 4. Atualização de Dados

11. Atualize o preço do `Produto A` para 12.00.
   ```sql
   UPDATE produtos SET preco = 12.00 WHERE nome = 'Produto A';
   ```

12. Atualize o estoque do `Produto B` para 45.
   ```sql
   UPDATE produtos SET estoque = 45 WHERE nome = 'Produto B';
   ```

#### 5. Deleção de Dados

13. Delete o cliente com o email `cliente3@example.com`.
   ```sql
   DELETE FROM clientes WHERE email = 'cliente3@example.com';
   ```

14. Delete todos os produtos que têm estoque menor que 50.
   ```sql
   DELETE FROM produtos WHERE estoque < 50;
   ```

#### 6. Funções Agregadas

15. Calcule a média de preços dos produtos.
   ```sql
   SELECT AVG(preco) FROM produtos;
   ```

16. Calcule a soma das quantidades vendidas.
   ```sql
   SELECT SUM(quantidade) FROM vendas;
   ```

#### 7. Agrupamento e Filtragem

17. Agrupe as vendas por `produto_id` e mostre a quantidade total vendida para cada produto.
   ```sql
   SELECT produto_id, SUM(quantidade) AS total_vendido
   FROM vendas
   GROUP BY produto_id;
   ```

18. Agrupe os produtos por estoque e mostre a quantidade de produtos em cada grupo.
   ```sql
   SELECT estoque, COUNT(*) AS total_produtos
   FROM produtos
   GROUP BY estoque;
   ```

#### 8. Junções (JOINs)

19. Realize uma consulta que mostre os nomes dos produtos vendidos juntamente com os nomes dos clientes que os compraram.
   ```sql
   SELECT p.nome AS produto, c.nome AS cliente
   FROM vendas v
   INNER JOIN produtos p ON v.produto_id = p.id
   INNER JOIN clientes c ON v.cliente_id = c.id;
   ```

#### 9. Criação de Views

20. Crie uma view chamada `vendas_detalhadas` que mostre o id da venda, o nome do produto, o nome do cliente, a quantidade e a data da venda.
   ```sql
   CREATE VIEW vendas_detalhadas AS
   SELECT v.id AS venda_id, p.nome AS produto, c.nome AS cliente, v.quantidade, v.data_venda
   FROM vendas v
   INNER JOIN produtos p ON v.produto_id = p.id
   INNER JOIN clientes c ON v.cliente_id = c.id;
   ```

Esses exercícios fornecem uma prática abrangente e variada dos conceitos fundamentais de SQL, desde a criação e manipulação de estruturas de banco de dados até consultas complexas envolvendo junções e agregações.