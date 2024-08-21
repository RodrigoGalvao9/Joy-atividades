CREATE DATABASE EmpresaDB;
USE EmpresaDB;

CREATE TABLE FUNCIONARIO (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Salario DECIMAL(10, 2)
);

CREATE TABLE DEPARTAMENTO (
    DepartamentoID INT PRIMARY KEY,
    Nome VARCHAR(50),
    GerenteID INT,
    FOREIGN KEY (GerenteID) REFERENCES FUNCIONARIO(FuncionarioID)
);

CREATE TABLE PROJETO (
    ProjetoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES DEPARTAMENTO(DepartamentoID)
);

INSERT INTO FUNCIONARIO (FuncionarioID, Nome, Cargo, Salario)
VALUES 
(1, 'Ana Souza', 'Gerente', 8000.00),
(2, 'João Lima', 'Analista', 5000.00),
(3, 'Maria Silva', 'Desenvolvedor', 4500.00);

INSERT INTO DEPARTAMENTO (DepartamentoID, Nome, GerenteID)
VALUES 
(1, 'TI', 1),
(2, 'Financeiro', 2);

INSERT INTO PROJETO (ProjetoID, Nome, DepartamentoID)
VALUES 
(1, 'Sistema Interno', 1),
(2, 'Auditoria Anual', 2);

CREATE TRIGGER NovoFuncionario
AFTER INSERT ON FUNCIONARIO
FOR EACH ROW
BEGIN
    DECLARE dept_id INT;

    SELECT DepartamentoID INTO dept_id 
    FROM DEPARTAMENTO 
    WHERE GerenteID = NEW.FuncionarioID;

    IF dept_id IS NOT NULL THEN
        INSERT INTO PROJETO (ProjetoID, Nome, DepartamentoID)
        VALUES (NULL, 'Onboarding ' || NEW.Nome, dept_id);
    END IF;
END;

