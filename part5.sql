
DROP DATABASE IF EXISTS loja_eletronicos;

CREATE DATABASE loja_eletronicos;

USE loja_eletronicos;


CREATE TABLE categorias (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);



CREATE TABLE produtos (
    idProduto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100),
    preco DECIMAL(10,2) NOT NULL,
    idCategoria_fk INT,

    FOREIGN KEY (idCategoria_fk)
        REFERENCES categorias(idCategoria)
);



INSERT INTO categorias (nome) VALUES
('Periféricos'),
('Notebooks'),
('Celulares'),
('Monitores'),
('Impressoras');



INSERT INTO produtos 
(nome, fabricante, preco, idCategoria_fk)
VALUES
('Mouse Gamer', 'Logitech', 150.00, 1),
('Teclado Mecânico', 'Redragon', 300.00, 1),
('Headset Gamer', 'HyperX', 450.00, 1),
('Notebook Aspire 5', 'Acer', 3500.00, 2),
('Notebook IdeaPad 3', 'Lenovo', 2800.00, 2),
('Notebook Galaxy Book', 'Samsung', 4200.00, 2),
('iPhone 15', 'Apple', 4500.00, 3),
('Galaxy S24', 'Samsung', 3999.00, 3),
('Monitor UltraWide', 'LG', 2200.00, 4),
('Monitor Gamer', 'AOC', 1800.00, 4),
('Impressora EcoTank', 'Epson', 1200.00, 5),
('Produto sem categoria', 'Genérico', 500.00, NULL);


SELECT 
    produtos.nome AS produto,
    categorias.nome AS categoria
FROM produtos
INNER JOIN categorias
    ON produtos.idCategoria_fk = categorias.idCategoria;


SELECT 
    produtos.nome,
    produtos.preco
FROM produtos
INNER JOIN categorias
    ON produtos.idCategoria_fk = categorias.idCategoria
WHERE categorias.nome = 'Periféricos';

SELECT 
    produtos.nome,
    produtos.fabricante
FROM produtos
INNER JOIN categorias
    ON produtos.idCategoria_fk = categorias.idCategoria
WHERE categorias.nome = 'Notebooks';


SELECT 
    produtos.nome,
    categorias.nome AS categoria,
    produtos.preco
FROM produtos
INNER JOIN categorias
    ON produtos.idCategoria_fk = categorias.idCategoria
WHERE produtos.preco > 2000.00;


SELECT 
    produtos.nome AS produto,
    categorias.nome AS categoria
FROM produtos
LEFT JOIN categorias
    ON produtos.idCategoria_fk = categorias.idCategoria;



SELECT 
    produtos.nome
FROM produtos
LEFT JOIN categorias
    ON produtos.idCategoria_fk = categorias.idCategoria
WHERE produtos.idCategoria_fk IS NULL;


SELECT 
    categorias.nome AS categoria,
    produtos.nome AS produto
FROM produtos
RIGHT JOIN categorias
    ON produtos.idCategoria_fk = categorias.idCategoria;



SELECT 
    categorias.nome
FROM produtos
RIGHT JOIN categorias
    ON produtos.idCategoria_fk = categorias.idCategoria
WHERE produtos.idProduto IS NULL;
