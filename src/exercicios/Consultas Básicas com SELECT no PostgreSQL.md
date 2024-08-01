### Exercícios Práticos com SELECT

#### 1. Selecionando Todas as Colunas

1. **Selecione todas as colunas da tabela `clientes`.**
   ```sql
   SELECT * FROM clientes;
   ```

#### 2. Selecionando Colunas Específicas

2. **Selecione os nomes e emails de todos os clientes.**
   ```sql
   SELECT nome, email FROM clientes;
   ```

#### 3. Filtrando Resultados com WHERE

3. **Selecione todos os clientes que nasceram após o ano de 1990.**
   ```sql
   SELECT * FROM clientes WHERE data_nascimento > '1990-01-01';
   ```

#### 4. Ordenando Resultados com ORDER BY

4. **Selecione todos os produtos ordenados pelo preço em ordem decrescente.**
   ```sql
   SELECT * FROM produtos ORDER BY preco DESC;
   ```

#### 5. Limitando Resultados com LIMIT

5. **Selecione os 5 primeiros registros da tabela `produtos`.**
   ```sql
   SELECT * FROM produtos LIMIT 5;
   ```

#### 6. Contagem de Registros

6. **Conte o número total de clientes na tabela `clientes`.**
   ```sql
   SELECT COUNT(*) FROM clientes;
   ```

#### 7. Agrupamento de Resultados com GROUP BY

7. **Agrupe os clientes pela cidade e conte quantos clientes há em cada cidade.**
   ```sql
   SELECT cidade, COUNT(*) FROM clientes GROUP BY cidade;
   ```

#### 8. Junção de Tabelas com INNER JOIN

8. **Selecione os nomes dos clientes e os valores dos pedidos usando `INNER JOIN` entre `clientes` e `pedidos`.**
   ```sql
   SELECT clientes.nome, pedidos.valor_total
   FROM clientes
   INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;
   ```

#### 9. Subconsulta em WHERE

9. **Selecione todos os clientes que têm pedidos com valor total maior que 100.**
   ```sql
   SELECT * FROM clientes WHERE id IN (SELECT cliente_id FROM pedidos WHERE valor_total > 100);
   ```

#### 10. Funções de Texto

10. **Concatenar o nome e o email dos clientes em uma coluna `contato`.**
    ```sql
    SELECT nome || ' - ' || email AS contato FROM clientes;
    ```

Esses exercícios cobrem uma variedade de operações básicas e intermediárias usando o comando `SELECT` no PostgreSQL, incluindo seleção de colunas, filtragem de resultados, ordenação, limite, contagem, agrupamento, junção de tabelas, subconsultas e manipulação de texto.