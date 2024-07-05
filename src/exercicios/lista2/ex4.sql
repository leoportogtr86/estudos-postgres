create table vendas
(
    id         serial primary key,
    produto_id int references produtos (id),
    cliente_id int references clientes (id),
    quantidade int,
    data_venda date
);