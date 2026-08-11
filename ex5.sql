CREATE TABLE `Departamento` (
    `numero` INT PRIMARY KEY,
    `nome` VARCHAR(100) NOT NULL
);

CREATE TABLE `Empregado` (
    `rg` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `sexo` VARCHAR(20),
    `dataNascimento` DATE,
    `salario` FLOAT,
    `nDepartamento` INT,
    FOREIGN KEY (`nDepartamento`) REFERENCES `Departamento`(`numero`)
);

CREATE TABLE `Dependente` (
    `id` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `sexo` VARCHAR(20),
    `dataNascimento` DATE,
    `grauParentesco` VARCHAR(100),
    `rgEmpregado` INT,
    FOREIGN KEY (`rgEmpregado`) REFERENCES `Empregado`(`rg`)
);

CREATE TABLE `Endereco` (
    `id` INT PRIMARY KEY,
    `cep` INT,
    `cidade` VARCHAR(100),
    `numero` INT,
    `logradouro` VARCHAR(100),
    `bairro` VARCHAR(100),
    `complementos` VARCHAR(100),
    `nDepartamento` INT,
    FOREIGN KEY (`nDepartamento`) REFERENCES `Departamento`(`numero`)
);


