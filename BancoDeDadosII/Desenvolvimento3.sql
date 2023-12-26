DELIMITER $$
CREATE PROCEDURE RelatorioDiarioCompras()
BEGIN
  SELECT data_compra, id_produto, COUNT(*) as quantidade
  FROM compras
  GROUP BY data_compra, id_produto;
END $$
DELIMITER ;

