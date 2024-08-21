CREATE TABLE CLIENTES (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    DataCadastro DATE
);

DELIMITER $$

CREATE FUNCTION ContarClientesDia(dataCadastro DATE) 
RETURNS INT
BEGIN
    DECLARE totalClientes INT;
    
    SELECT COUNT(*) INTO totalClientes
    FROM CLIENTES
    WHERE DataCadastro = dataCadastro;
    
    RETURN totalClientes;
END $$

DELIMITER ;

SELECT ContarClientesDia('2024-08-20') AS TotalClientes;
