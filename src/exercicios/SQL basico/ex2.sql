create table produtos
(
    id      serial primary key,
    nome    varchar(100),
    preco   decimal(10, 2),
    estoque int
);