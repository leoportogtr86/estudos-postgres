SELECT c.email, c.nome
FROM clientes c
         INNER JOIN vendas v ON c.id = v.cliente_id;