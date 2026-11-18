--create database I_Yumm
--use I_Yumm

create table tb_clientes(
id_user int identity primary key,
nome varchar(100),
email varchar(100),
telefone varchar(15)
)

create table tb_pedidos(
id_pedidos int identity primary key,
nome_cliente varchar(100),
data_pedido date,
qntidade_pedidos int,
valor_total decimal(10,2),
id_user int not null,
pagamento_efetuado varchar(40),
foreign key (id_user) references tb_clientes(id_user)
)

create table tb_categoria(
id_categoria int identity primary key,
nome_categoria varchar(200)
)

insert into tb_categoria values
('brasileira'),
('mexicana'),
('bolivia')

create table tb_produtos(
Code_produt int identity primary key,
nome_produt varchar(70),
preco decimal(10,2),
produt_pertecente varchar(50),
foreign key (Code_produt) references tb_categoria(id_categoria)
)

insert into tb_produtos values
('Chilaquiles','25.00','mexicana'),
('Salchipapas','30.00','bolivia'),
('Feijoada','15.00','brasileira')

insert into tb_clientes values
('Palmido de Soares','PalmitoPTkj154@gmail.com','11 98676-9908'),
('Milena de Jesus','Jesusebom333@gmail.com','11 98467-6342'),
('Kleiton de Manau','Graude71rapa@gmail.com','11 96767-7643')

insert into tb_pedidos values
('Milena de Jesus','16-08-2026',4,'40.00',2,'Pix'),
('Palmido de Soares','13-08-2026',2,'15.00',1,'Débito'),
('Kleiton de Manau','04-07-2026',6,'60.00',3,'Crédito')

select * from
tb_clientes

select * from
tb_pedidos

select * from
tb_categoria

select * from
tb_produtos