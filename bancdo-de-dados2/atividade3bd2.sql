CREATE TABLE VENDAS (
    VendaID INT PRIMARY KEY,
    ProdutoID INT,
    DataVenda DATE,
    Quantidade INT,
    FOREIGN KEY (ProdutoID) REFERENCES PRODUTOS(ProdutoID)
);

DELIMITER $$

CREATE PROCEDURE RelatorioVendasDiario(IN dataRelatorio DATE)
BEGIN
    SELECT DataVenda, ProdutoID, SUM(Quantidade) AS TotalVendido
    FROM VENDAS
    WHERE DataVenda = dataRelatorio
    GROUP BY DataVenda, ProdutoID;
END $$

DELIMITER ;
