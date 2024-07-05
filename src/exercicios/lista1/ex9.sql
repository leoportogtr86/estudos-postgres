create table departamentos
(
    id   serial primary key,
    nome varchar(100) not null
);

alter table funcionarios
    add COLUMN departamento_id int;

alter table funcionarios
    add constraint fk_departamento
        foreign key (departamento_id) REFERENCES departamentos (id);