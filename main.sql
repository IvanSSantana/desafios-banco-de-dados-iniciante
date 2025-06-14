-- Criando a Tabela
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY IDENTITY, --IDENTITY = AUTOINCREMENT
    nome VARCHAR(50) NOT NULL,
    preco_custo NUMERIC(20, 2) NOT NULL,
    preco_venda NUMERIC(21, 2) NOT NULL
);

-- 1)
INSERT INTO Produto
(nome, preco_custo, preco_venda)
VALUES
('Smartphone', 200.00, 400.00);

/* INSERT INTO Produto
(nome, preco_custo, preco_venda)
VALUES('Café', 10.00, 30.00); */

-- 2)
UPDATE Produto
SET
    preco_venda = 15.00
WHERE nome = 'Café';

-- 3)
SELECT TOP 5 nome, preco_venda FROM Produto P
ORDER BY p.preco_venda DESC;

-- 4)
DELETE FROM Produto
WHERE preco_venda < preco_custo;