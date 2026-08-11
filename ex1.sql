CREATE TABLE `Grupo` (
    `id` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `grauImportancia` VARCHAR(100)
);

CREATE TABLE `Contato` (
    `id` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `ocupacao` VARCHAR(100),
    `endereco` VARCHAR(100),
    `email` VARCHAR(100),
    `idGrupo` INT,
    FOREIGN KEY (`idGrupo`) REFERENCES `Grupo`(`id`)
);

CREATE TABLE `Telefone` (
    `id` INT PRIMARY KEY,
    `rotulo` VARCHAR(100),
    `numero` INT,
    `idContato` INT,
    FOREIGN KEY (`idContato`) REFERENCES `Contato`(`id`)
);

