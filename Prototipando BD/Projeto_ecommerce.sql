CREATE TABLE `usuario` (
	`id` bigint AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`cpf` varchar(255) NOT NULL,
	`login` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	`data_nascimento` DATE NOT NULL,
	`data_criacao_conta` TIMESTAMP NOT NULL,
	`vendedor` BOOLEAN NOT NULL
);

CREATE TABLE `produtos` (
	`id` bigint AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`quantidade` int NOT NULL,
	`valor` DECIMAL(8,2) NOT NULL,
	`descricao` varchar(500) NOT NULL,
	`tempo_garantia` int NOT NULL,
	`usuario_id` bigint NOT NULL,
	`categoria_id` bigint NOT NULL
);

CREATE TABLE `categoria` (
	`id` bigint AUTO_INCREMENT,
	`categoria_produtos` varchar(255) NOT NULL,
	`descricao` varchar(500) NOT NULL
);

ALTER TABLE `produtos` ADD CONSTRAINT `produtos_fk0` FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`id`);

ALTER TABLE `produtos` ADD CONSTRAINT `produtos_fk1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria`(`id`);



