-- Criação de Tabela
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(100),
    DataCadastro DATE
);

-- Inserção de Dados
INSERT INTO Clientes (ClienteID, Nome, Email, DataCadastro)
VALUES (1, 'João Silva', 'joao@email.com', '2023-01-15');

-- Consulta de Dados
SELECT Nome, Email
FROM Clientes
WHERE DataCadastro >= '2023-01-01';

-- Atualização de Dados
UPDATE Clientes
SET Email = 'novoemail@email.com'
WHERE ClienteID = 1;

-- Exclusão de Dados
DELETE FROM Clientes
WHERE ClienteID = 1;

-- Criação de Tabela Relacionada
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Consulta com Junção (JOIN)
SELECT Clientes.Nome, Pedidos.DataPedido
FROM Clientes
JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

-- Funções Agregadas
SELECT AVG(Valor) AS MediaValor
FROM Pedidos;

-- Agrupamento de Resultados
SELECT Categoria, COUNT(*) AS TotalProdutos
FROM Produtos
GROUP BY Categoria;

-- Normalização de Dados
CREATE TABLE Cidades (
    CidadeID INT PRIMARY KEY,
    NomeCidade VARCHAR(50)
);

CREATE TABLE Estados (
    EstadoID INT PRIMARY KEY,
    NomeEstado VARCHAR(50)
);

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(50),
    CidadeID INT,
    EstadoID INT,
    FOREIGN KEY (CidadeID) REFERENCES Cidades(CidadeID),
    FOREIGN KEY (EstadoID) REFERENCES Estados(EstadoID)
);

-- Índices (exemplo de criação de índice)
CREATE INDEX idx_Clientes_Nome
ON Clientes (Nome);

-- Exclusão de Tabela
DROP TABLE Pedidos;

-- Consulta com Subconsulta
SELECT Nome, Email
FROM Clientes
WHERE ClienteID IN (SELECT ClienteID FROM Pedidos WHERE DataPedido >= '2023-01-01');
