-- Criação do banco de dados
CREATE DATABASE MeuBancoDeDados;

-- Uso do banco de dados criado
USE MeuBancoDeDados;

-- Criação da tabela 'Usuarios'
CREATE TABLE Usuarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

-- Criação da tabela 'Pedidos'
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    UsuarioID INT,
    Produto VARCHAR(100),
    Quantidade INT,
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(ID)
);

-- Criação de um gatilho que será ativado após uma inserção na tabela 'Pedidos'
CREATE TRIGGER NovoPedido AFTER INSERT ON Pedidos
FOR EACH ROW
BEGIN
    DECLARE @mensagem VARCHAR(100);
    SET @mensagem = CONCAT('Novo pedido adicionado com o ID: ', NEW.PedidoID);
    -- Aqui você pode definir o que deseja fazer quando um novo pedido é inserido.
    -- Por exemplo, você pode querer registrar isso em outra tabela ou enviar uma notificação.
    -- Neste exemplo, estamos apenas definindo uma mensagem.
END;

