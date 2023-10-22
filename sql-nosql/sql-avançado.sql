-- Consultas com Junções (JOIN)

-- Exemplo de Junção Interna (INNER JOIN)
SELECT Clientes.Nome, Pedidos.DataPedido
FROM Clientes
INNER JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

-- Exemplo de Junção à Esquerda (LEFT JOIN)
SELECT Produtos.Nome, Pedidos.Quantidade
FROM Produtos
LEFT JOIN Pedidos ON Produtos.ProdutoID = Pedidos.ProdutoID;

-- Consulta com Subconsulta

-- Exemplo de Subconsulta (Subselect)
SELECT Nome, Email
FROM Clientes
WHERE ClienteID IN (SELECT ClienteID FROM Pedidos WHERE DataPedido >= '2023-01-01');

-- Funções Agregadas

-- Exemplo de Função Agregada (COUNT)
SELECT Categoria, COUNT(*) AS TotalProdutos
FROM Produtos
GROUP BY Categoria;

-- Exemplo de Função Agregada (SUM)
SELECT Categoria, SUM(Preco) AS TotalVendas
FROM Produtos
GROUP BY Categoria;

-- Agrupamento de Resultados

-- Exemplo de Agrupamento (GROUP BY)
SELECT Departamento, AVG(Salario) AS MediaSalario
FROM Funcionarios
GROUP BY Departamento;

-- Criação de Índices

-- Exemplo de Criação de Índice
CREATE INDEX idx_Clientes_Nome
ON Clientes (Nome);

-- Exclusão de Índice
DROP INDEX idx_Clientes_Nome;

-- Consulta Otimizada com Índice
SELECT Nome
FROM Clientes
WHERE Nome = 'João Silva';

-- Uso de Índice para Otimizar Consulta
CREATE INDEX idx_Produtos_Categoria
ON Produtos (Categoria);

-- Exemplo de Consulta com Índice Otimizado
SELECT Nome
FROM Produtos
WHERE Categoria = 'Eletrônicos';