DELIMITER $$
CREATE FUNCTION ContagemDiariaClientes(data DATE)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total
  FROM clientes
  WHERE data_cadastro = data;
  RETURN total;
END $$
DELIMITER ;

O exemplo abaixo retornará o número de clientes cadastrados em 26 de dezembro de 2023.
SELECT ContagemDiariaClientes('2023-12-26');
