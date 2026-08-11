CREATE TABLE `Cantor` (
    `id` INT PRIMARY KEY,
    `nome` VARCHAR(100)
);

CREATE TABLE `Musica` (
    `id` INT PRIMARY KEY,
    `titulo` VARCHAR(100),
    `letra` TEXT
);

CREATE TABLE `Gravacao` (
    `id` INT PRIMARY KEY,
    `duracao` INT,
    `idCantor` INT,
    `idMusica` INT,
    FOREIGN KEY (`idCantor`) REFERENCES `Cantor`(`id`),
    FOREIGN KEY (`idMusica`) REFERENCES `Musica`(`id`)
);

CREATE TABLE `Compositor` (
    `cpf` VARCHAR(14) PRIMARY KEY,
    `nome` VARCHAR(100)
);

CREATE TABLE `MusicaCompositor` (
    `cpfCompositor` VARCHAR(14),
    `idMusica` INT,
    PRIMARY KEY (`cpfCompositor`, `idMusica`),
    FOREIGN KEY (`cpfCompositor`) REFERENCES `Compositor`(`cpf`),
    FOREIGN KEY (`idMusica`) REFERENCES `Musica`(`id`)
);
