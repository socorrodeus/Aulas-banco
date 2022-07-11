CREATE TABLE `Livros` (
	`livro_id` int(11) NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) not null,
	`valor` int(11) NOT NULL,
	`data_publicacao` DATE NOT NULL,
	`edicao` int(11) NOT NULL,
	`quantidade_paginas` int(255) NOT NULL,
	`resumo` TEXT NOT NULL,
	`genero_id` int(11) NOT NULL,
	`usuario_id` int(11) NOT NULL,
	`autor_id` int(11) NOT NULL,
	`editora_id` int(11) NOT NULL,
	`galeria_livros_id` int(11) NOT NULL,
	PRIMARY KEY (`livro_id`)
);

CREATE TABLE `Autor` (
	`autor_id` int(11) NOT NULL,
	`nome_autor` varchar(255) NOT NULL,
	`nome_autor_fantasia` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`bio` TEXT NOT NULL,
	`galeria_autor_id` int(11) NOT NULL,
	`pais_origem` varchar(255) NOT NULL,
	PRIMARY KEY (`autor_id`)
);

CREATE TABLE `Genero` (
	`genero_id` int(11) NOT NULL AUTO_INCREMENT,
	`genero_nome` varchar(255) NOT NULL,
	PRIMARY KEY (`genero_id`)
);

CREATE TABLE `Editora` (
	`editora_id` int(11) NOT NULL,
	`editora_nome` int(11) NOT NULL,
	PRIMARY KEY (`editora_id`)
);


CREATE TABLE `Usuario` (
	`usuario_id` int(11) NOT NULL AUTO_INCREMENT,
	`usuario_nome` varchar(255) NOT NULL ,
	`usuario_senha` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`perfil` int(11) NOT NULL ,
	`galeria_usuario_id` varchar(255) NOT NULL,
	PRIMARY KEY (`usuario_id`)
);

CREATE TABLE `Galeria_Autor` (
	`galeria_autor_id` int(11) NOT NULL,
	`caminho` varchar(255) NOT NULL,
	PRIMARY KEY (`galeria_autor_id`)
);

ALTER TABLE `Livros` ADD CONSTRAINT `Livros_fk0` FOREIGN KEY (`genero_id`) REFERENCES `Genero`(`genero_id`);

ALTER TABLE `Livros` ADD CONSTRAINT `Livros_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`usuario_id`);

ALTER TABLE `Livros` ADD CONSTRAINT `Livros_fk2` FOREIGN KEY (`autor_id`) REFERENCES `Autor`(`autor_id`);

ALTER TABLE `Livros` ADD CONSTRAINT `Livros_fk3` FOREIGN KEY (`editora_id`) REFERENCES `Editora`(`editora_id`);

ALTER TABLE `Autor` ADD CONSTRAINT `Autor_fk0` FOREIGN KEY (`galeria_autor_id`) REFERENCES `Galeria_Autor`(`galeria_autor_id`);



