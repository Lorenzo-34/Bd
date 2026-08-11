CREATE TABLE `Usuario` (
    `id` INT PRIMARY KEY,
    `rtgPreferido` VARCHAR(100),
    `cidade` VARCHAR(100),
    `sexo` VARCHAR(20),
    `idade` INT,
    `nome` VARCHAR(100)
);

CREATE TABLE `Foto` (
    `id` INT PRIMARY KEY,
    `arquivo` VARCHAR(20000),
    `formato` VARCHAR(20),
    `idUsuario` INT,
    FOREIGN KEY (`idUsuario`) REFERENCES `Usuario`(`id`)
);

CREATE TABLE `Avalia` (
    `idAvaliacao` INT PRIMARY KEY,
    `avaliador` INT,
    `avaliado` INT,
    FOREIGN KEY (`avaliador`) REFERENCES `Usuario`(`id`),
    FOREIGN KEY (`avaliado`) REFERENCES `Usuario`(`id`)
);
