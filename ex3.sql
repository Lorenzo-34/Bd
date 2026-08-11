CREATE TABLE `Disciplina` (
    `id` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `anoSemestre` VARCHAR(20),
    `cargaHoraria` INT
);

CREATE TABLE `Trabalho` (
    `id` INT PRIMARY KEY,
    `titulo` VARCHAR(100),
    `arquivo` VARCHAR(10000),
    `dataDeEntrega` DATE,
    `nota` FLOAT,
    `idDisciplina` INT,
    FOREIGN KEY (`idDisciplina`) REFERENCES `Disciplina`(`id`)
);

CREATE TABLE `Autor` (
    `matricula` INT PRIMARY KEY,
    `nome` VARCHAR(100),
    `email` VARCHAR(100)
);

CREATE TABLE `Faz` (
    `idTrabalho` INT,
    `matricula` INT,
    PRIMARY KEY (`idTrabalho`, `matricula`),
    FOREIGN KEY (`idTrabalho`) REFERENCES `Trabalho`(`id`),
    FOREIGN KEY (`matricula`) REFERENCES `Autor`(`matricula`)
);

