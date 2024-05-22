use ods11_grp10_pi;
desc comunidade;

insert into comunidade
(`idComunidade`, `nome`, `localidade`)
values
(1, 'Aguas_Compridas', 'Olinda');

SELECT 
    *
FROM
    comunidade;

desc usuario;
INSERT INTO usuario 
(`cpf`, `nome`, `idade`, `sexo`, `telefone1`, `telefone2`, `e-mail`, `Participa_da_Comunidade_idComunidade` ) 
VALUES 
('61135266409', 'Luiz Correia Gomes', 31, 'M', '(81) 92822-0290', NULL, 'luizC@gmail.com', 1);

SELECT 
    *
FROM
    usuario;

alter table usuario modify column telefone1 varchar(20);
alter table usuario modify column telefone2 varchar(20);

UPDATE usuario 
SET 
    telefone1 = '(81) 92822-0290'
WHERE
    idUsuario = 1;

desc usuario;
SELECT 
    *
FROM
    usuario;

SELECT 
    *
FROM
    comunidade;
insert into comunidade
(`nome`, `localidade`)
VALUES
('Brasília Teimosa', 'Recife'),
('Alto do Mandu', 'Recife'),
('Cohab', 'Jaboatão dos Guararapes'),
('Dois Unidos', 'Recife'),
('Vasco da Gama', 'Recife'),
('Santo Amaro', 'Recife'),
('Cabugá', 'Caruaru'),
('Lagoa Encantada', 'Recife'),
('Jiquiá', 'Recife'),
('Vila Tamandaré', 'Paulista');

select * from comunidade;

INSERT INTO usuario
(`cpf`, `nome`, `idade`, `sexo`, `telefone1`, `telefone2`, `e-mail`, `Participa_da_Comunidade_idComunidade`)
VALUES
('98765432101', 'Maria Silva', 25, 'F', '(81) 93243-4132', NULL, 'maria.silva@gmail.com', 7),
('12345678901', 'João Santos', 30, 'M', '(81) 92617-3456', '(81) 92313-1425', 'joao.santos@gmail.com', 2),
('23456789012', 'Ana Oliveira', 35, 'F', '(81) 92554-0597', NULL, 'ana.oliveira@gmail.com', 10),
('34567890123', 'Pedro Souza', 28, 'M', '(81) 93482-5991', NULL, 'pedro.souza@gmail.com', 3),
('45678901234', 'Juliana Costa', 32, 'F', '(81) 93305-7181', NULL, 'juliana.costa@hotmail.com', 9),
('56789012345', 'Lucas Pereira', 27, 'M', '(81) 92446-9513', NULL, 'lucas.pereira@yahoo.com', 5),
('67890123456', 'Mariana Santos', 29, 'F', '(81) 92258-6959', '(81) 93216-7861' , 'mariana.santos@hotmail.com', 1),
('78901234567', 'Rafael Costa', 31, 'M', '(81) 93419-2495', NULL, 'rafael.costa@yahoo.com', 8),
('89012345678', 'Camila Oliveira', 26, 'F', '(81) 93861-8475', NULL, 'camila.oliveira@hotmail.com', 4),
('90123456789', 'Gabriel Souza', 33, 'M', '(81) 93165-1064', NULL, 'gabriel.souza@gmail.com', 11);

INSERT INTO usuario
(`cpf`, `nome`, `idade`, `sexo`, `telefone1`, `telefone2`, `e-mail`, `Participa_da_Comunidade_idComunidade`)
VALUES
('58765432101', 'Amanda Silva', 26, 'F', '(81) 94234-4132', NULL, 'amanda.silva@gmail.com', 7),
('22345678901', 'Pedro Santos', 31, 'M', '(81) 92627-3456', '(81) 92133-1425', 'pedro.santos@gmail.com', 2),
('33456789012', 'Juliana Oliveira', 36, 'F', '(81) 92544-0597', NULL, 'juliana.oliveira@gmail.com', 10),
('44567890123', 'Lucas Souza', 29, 'M', '(81) 93582-5991', NULL, 'lucas.souza@gmail.com', 3),
('55678901234', 'Mariana Costa', 33, 'F', '(81) 93405-7181', NULL, 'mariana.costa@hotmail.com', 9),
('66789012345', 'Rafael Pereira', 28, 'M', '(81) 92456-9513', NULL, 'rafael.pereira@yahoo.com', 5),
('77890123456', 'Camila Santos', 30, 'F', '(81) 92258-6959', '(81) 93217-7861', 'camila.santos@hotmail.com', 1),
('88901234567', 'Gabriela Costa', 32, 'M', '(81) 93419-2495', NULL, 'gabriela.costa@yahoo.com', 8),
('90012345678', 'Joana Oliveira', 27, 'F', '(81) 93861-8475', NULL, 'joana.oliveira@hotmail.com', 4),
('01123456789', 'Matheus Souza', 34, 'M', '(81) 93165-1064', NULL, 'matheus.souza@gmail.com', 11),
('65765432101', 'Bruna Silva', 27, 'F', '(81) 93243-4132', NULL, 'bruna.silva@gmail.com', 7),
('72345678901', 'Ricardo Santos', 32, 'M', '(81) 92617-3456', '(81) 92313-1425', 'ricardo.santos@gmail.com', 2),
('83456789012', 'Carolina Oliveira', 37, 'F', '(81) 92554-0597', NULL, 'carolina.oliveira@gmail.com', 10),
('94567890123', 'Gabriel Souza', 30, 'M', '(81) 93482-5991', NULL, 'gabriel.souza@gmail.com', 3),
('05678901234', 'Fernanda Costa', 34, 'F', '(81) 93305-7181', NULL, 'fernanda.costa@hotmail.com', 9),
('16789012345', 'Matias Pereira', 28, 'M', '(81) 92446-9513', NULL, 'matias.pereira@yahoo.com', 5),
('27890123456', 'Larissa Santos', 30, 'F', '(81) 92258-6959', '(81) 93216-7861', 'larissa.santos@hotmail.com', 1),
('38901234567', 'Rafaela Costa', 32, 'M', '(81) 93419-2495', NULL, 'rafaela.costa@yahoo.com', 8),
('40012345678', 'Camila Oliveira', 27, 'F', '(81) 93861-8475', NULL, 'camila.oliveira@hotmail.com', 4),
('51123456789', 'Gabriela Souza', 34, 'M', '(81) 93165-1064', NULL, 'gabriela.souza@gmail.com', 11),
('94765432101', 'Rafaela Silva', 26, 'F', '(81) 93243-4132', NULL, 'rafaela.silva@gmail.com', 7),
('02345678901', 'Gabriel Santos', 31, 'M', '(81) 92617-3456', '(81) 92313-1425', 'gabriel.santos@gmail.com', 2),
('13456789012', 'Carolina Oliveira', 36, 'F', '(81) 92554-0597', NULL, 'carolina.oliveira@gmail.com', 10),
('24567890123', 'Lucas Souza', 29, 'M', '(81) 93482-5991', NULL, 'lucas.souza@gmail.com', 3),
('35678901234', 'Mariana Costa', 33, 'F', '(81) 93305-7181', NULL, 'mariana.costa@hotmail.com', 9),
('46789012345', 'Rafael Pereira', 28, 'M', '(81) 92446-9513', NULL, 'rafael.pereira@yahoo.com', 5),
('57890123456', 'Camila Santos', 30, 'F', '(81) 92258-6959', '(81) 93216-7861', 'camila.santos@hotmail.com', 1),
('68901234567', 'Gabriela Costa', 32, 'M', '(81) 93419-2495', NULL, 'gabriela.costa@yahoo.com', 8),
('79012345678', 'Joana Oliveira', 27, 'F', '(81) 93861-8475', NULL, 'joana.oliveira@hotmail.com', 4),
('80123456789', 'Matheus Souza', 34, 'M', '(81) 93165-1064', NULL, 'matheus.souza@gmail.com', 11),
('75765432101', 'Bruna Silva', 26, 'F', '(81) 93243-4132', NULL, 'bruna.silva@gmail.com', 7),
('82345678901', 'Ricardo Santos', 31, 'M', '(81) 92617-3456', '(81) 92313-1425', 'ricardo.santos@gmail.com', 2),
('93456789012', 'Carolina Oliveira', 36, 'F', '(81) 92554-0597', NULL, 'carolina.oliveira@gmail.com', 10),
('04567890123', 'Gabriel Souza', 29, 'M', '(81) 93482-5991', NULL, 'gabriel.souza@gmail.com', 3),
('15678901234', 'Fernanda Costa', 33, 'F', '(81) 93305-7181', NULL, 'fernanda.costa@hotmail.com', 9),
('26789012345', 'Matias Pereira', 28, 'M', '(81) 92446-9513', NULL, 'matias.pereira@yahoo.com', 5),
('37890123456', 'Larissa Santos', 30, 'F', '(81) 92258-6959', '(81) 93216-7861', 'larissa.santos@hotmail.com', 1),
('48901234567', 'Rafaela Costa', 32, 'M', '(81) 93419-2495', NULL, 'rafaela.costa@yahoo.com', 8),
('50012345678', 'Camila Oliveira', 27, 'F', '(81) 93861-8475', NULL, 'camila.oliveira@hotmail.com', 4),
('61123456789', 'Gabriela Souza', 34, 'M', '(81) 93165-1064', NULL, 'gabriela.souza@gmail.com', 11),
('86765432101', 'Amanda Silva', 26, 'F', '(81) 93243-4132', NULL, 'amanda.silva@gmail.com', 7),
('92345678901', 'Pedro Santos', 31, 'M', '(81) 92627-3456', '(81) 92133-1425', 'pedro.santos@gmail.com', 2),
('03456789012', 'Juliana Oliveira', 36, 'F', '(81) 92544-0597', NULL, 'juliana.oliveira@gmail.com', 10),
('14567890123', 'Lucas Souza', 29, 'M', '(81) 93582-5991', NULL, 'lucas.souza@gmail.com', 3),
('25678901234', 'Mariana Costa', 33, 'F', '(81) 93405-7181', NULL, 'mariana.costa@hotmail.com', 9),
('36789012345', 'Rafael Pereira', 28, 'M', '(81) 92456-9513', NULL, 'rafael.pereira@yahoo.com', 5),
('47890123456', 'Camila Santos', 30, 'F', '(81) 92258-6959', '(81) 93217-7861', 'camila.santos@hotmail.com', 1),
('58901234567', 'Gabriela Costa', 32, 'M', '(81) 93419-2495', NULL, 'gabriela.costa@yahoo.com', 8),
('60012345678', 'Joana Oliveira', 27, 'F', '(81) 93861-8475', NULL, 'joana.oliveira@hotmail.com', 4),
('71123456789', 'Matheus Souza', 34, 'M', '(81) 93165-1064', NULL, 'matheus.souza@gmail.com', 11);

select * from usuario;
select * from comunidade;
select * from lider_comunitario;

ALTER TABLE usuario
ADD COLUMN participa_da_comunidade int,
ADD CONSTRAINT participar
FOREIGN KEY (participa_da_comunidade)
REFERENCES comunidade (idComunidade);

select * from usuario;
desc usuario;

ALTER TABLE usuario
DROP FOREIGN KEY participar,
DROP COLUMN participa_da_comunidade;

desc usuario;

desc comunidade;

ALTER TABLE comunidade
ADD COLUMN lider_comunitario int,
ADD CONSTRAINT liderar
FOREIGN KEY (lider_comunitario)
REFERENCES usuario (idUsuario);

desc lider_comunitario;

drop table lider_comunitario;

desc comunidade;
desc usuario;
select * from usuario;
select * from comunidade;


UPDATE comunidade
SET lider_comunitario = (
  SELECT idUsuario
  FROM usuario
  WHERE Participa_da_Comunidade_idComunidade = comunidade.idComunidade
  LIMIT 1
);

select * from usuario ;
select * from comunidade;

INSERT INTO usuario
(`cpf`, `nome`, `idade`, `sexo`, `telefone1`, `telefone2`, `e-mail`, `Participa_da_Comunidade_idComunidade`)
VALUES
('24456789012', 'Carla Oliveira', 35, 'F', '(81) 92555-0597', NULL, 'carla.oliveira@gmail.com', 6);


UPDATE comunidade
SET lider_comunitario = NULL;

UPDATE comunidade
SET lider_comunitario = (
  SELECT idUsuario
  FROM usuario
  WHERE Participa_da_Comunidade_idComunidade = comunidade.idComunidade
  LIMIT 1
);

select * from comunidade;
select * from centrocomunitario;
insert into centrocomunitario
(`idCentroComunitario`, `responsavel`, `qtdeVagas`, `e-mail`, `telefone1`, `telefone2`, `Comunidade_idComunidade`)
VALUES
('1', 'Eqp ComunidadeemAlerta', 100, 'centro1@gmail.com', '(81) 2081-1344', NULL, '1');

alter table centrocomunitario modify column telefone1 varchar(30);
alter table centrocomunitario modify column telefone2 varchar(30);

update centrocomunitario
set telefone1 = '(81) 2081-1344'
where idCentroComunitario = 1;

INSERT INTO centrocomunitario
(`responsavel`, `qtdeVagas`, `e-mail`, `telefone1`, `telefone2`, `Comunidade_idComunidade`)
VALUES
('Eqp ComunidadeemAlerta2', 100, 'centro1@gmail.com', '(81) 2081-1344', NULL, '2'),
('Centro Social Amizade', 50, 'centro2@gmail.com', '(81) 3002-4455', NULL, '3'),
('Associação União Solidária', 80, 'centro3@gmail.com', '(81) 5005-6789', NULL, '4'),
('Núcleo de Ação Comunitária', 70, 'centro4@gmail.com', '(81) 7007-1234', NULL, '5'),
('Associação Unidos pelo Bem', 60, 'centro5@gmail.com', '(81) 9009-5678', NULL, '6'),
('Centro de Desenvolvimento Comunitário', 90, 'centro6@gmail.com', '(81) 1234-5678', NULL, '7'),
('Projeto Social Harmonia', 40, 'centro7@gmail.com', '(81) 9999-8888', NULL, '8'),
('Centro Comunitário Esperança', 75, 'centro8@gmail.com', '(81) 2222-3333', NULL, '9'),
('Centro de Ação Social', 85, 'centro9@gmail.com', '(81) 4444-5555', NULL, '10'),
('Associação de Voluntários', 55, 'centro10@gmail.com', '(81) 6666-7777', NULL, '11');

select * from centrocomunitario;

update centrocomunitario
set `e-mail` = 'centro11@gmai.com'
where idCentroComunitario = 2;

select * from acolhimento;
select * from alerta;
select * from centrocomunitario;
select * from comunidade;
select * from endereco;
SELECT 
    *
FROM
    pluviometro;
select * from usuario;

INSERT INTO endereco
(`CEP`, `UF`, `cidade`, `bairro`, `rua`, `numero`, `complemento`, `Endereco_Usuario_idUsuario`, `CentroComunitario_idCentroComunitario`)
VALUES
(53160800, 'PE', 'Olinda', 'Aguas_Compridas', '1ª Travessa da Saudade', 1, NULL, '1', '1');

INSERT INTO endereco
(`CEP`, `UF`, `cidade`, `bairro`, `rua`, `numero`, `complemento`, `Endereco_Usuario_idUsuario`)
VALUES
('53160300', 'PE', 'Recife', 'Pina', 'Rua das Flores', '789', NULL, '3'),
('53160400', 'PE', 'Jaboatão dos Guararapes', 'Candeias', 'Avenida Central', '1011', NULL, '4'),
('53160500', 'PE', 'Recife', 'Boa Vista', 'Travessa da Liberdade', '1213', NULL, '5'),
('53160600', 'PE', 'Olinda', 'Rio Doce', 'Rua das Palmeiras', '1415', NULL, '6'),
('53160700', 'PE', 'Recife', 'Santo Antônio', 'Avenida do Comércio', '1617', NULL, '7'),
('53160800', 'PE', 'Olinda', 'Aguas_Compridas', '1ª Travessa da Saudade', '1', NULL, '8'),
('53160900', 'PE', 'Recife', 'Brasília Teimosa', '2ª Rua da Esperança', '2', NULL, '9'),
('53161000', 'PE', 'Recife', 'Alto do Mandu', '3ª Avenida da Liberdade', '3', NULL, '10'),
('53161100', 'PE', 'Recife', 'Cohab', '4ª Praça da Paz', '4', NULL, '11'),
('53161200', 'PE', 'Recife', 'Dois Unidos', '5ª Travessa da Felicidade', '5', NULL, '12'),
('53161300', 'PE', 'Recife', 'Vasco da Gama', '6ª Rua da Amizade', '6', NULL, '13'),
('53161400', 'PE', 'Recife', 'Santo Amaro', '7ª Avenida da Harmonia', '7', NULL, '14'),
('53161500', 'PE', 'Caruaru', 'Cabugá', '8ª Rua da União', '8', NULL, '15'),
('53161600', 'PE', 'Recife', 'Lagoa Encantada', '9ª Praça do Encanto', '9', NULL, '16'),
('53161700', 'PE', 'Recife', 'Jiquiá', '10ª Travessa da Esperança', '10', NULL, '17'),
('53161800', 'PE', 'Paulista', 'Vila Tamandaré', '11ª Avenida da Paz', '11', NULL, '18'),
('53161900', 'PE', 'Recife', 'Boa Viagem', 'Rua do Sol', '12', NULL, '19'),
('53162000', 'PE', 'Olinda', 'Bairro Novo', 'Avenida Central', '13', NULL, '20'),
('53162100', 'PE', 'Recife', 'Pina', 'Rua da Liberdade', '14', NULL, '21'),
('53162200', 'PE', 'Jaboatão dos Guararapes', 'Candeias', 'Travessa das Flores', '15', NULL, '22'),
('53162300', 'PE', 'Recife', 'Boa Vista', 'Avenida do Comércio', '16', NULL, '23'),
('53162400', 'PE', 'Olinda', 'Rio Doce', 'Rua do Mar', '17', NULL, '24'),
('53162500', 'PE', 'Recife', 'Santo Antônio', 'Avenida da Esperança', '18', NULL, '25'),
('53162600', 'PE', 'Olinda', 'Aguas_Compridas', 'Rua das Palmeiras', '19', NULL, '26'),
('53162700', 'PE', 'Recife', 'Brasília Teimosa', '1ª Travessa da Liberdade', '20', NULL, '27'),
('53162800', 'PE', 'Recife', 'Alto do Mandu', '2ª Rua da Felicidade', '21', NULL, '28'),
('53162900', 'PE', 'Recife', 'Cohab', '3ª Avenida da Harmonia', '22', NULL, '29'),
('53163000', 'PE', 'Recife', 'Dois Unidos', '4ª Praça da União', '23', NULL, '30'),
('53163100', 'PE', 'Recife', 'Vasco da Gama', '5ª Travessa do Encanto', '24', NULL, '31'),
('53163200', 'PE', 'Recife', 'Santo Amaro', '6ª Rua da Esperança', '25', NULL, '32'),
('53163300', 'PE', 'Caruaru', 'Cabugá', '7ª Avenida da Paz', '26', NULL, '33'),
('53163400', 'PE', 'Recife', 'Lagoa Encantada', '8ª Praça da Liberdade', '27', NULL, '34'),
('53163500', 'PE', 'Recife', 'Jiquiá', '9ª Rua do Comércio', '28', NULL, '35'),
('53163600', 'PE', 'Paulista', 'Vila Tamandaré', '10ª Avenida da Esperança', '29', NULL, '36'),
('53163700', 'PE', 'Recife', 'Boa Viagem', 'Rua das Flores', '30', NULL, '37'),
('53163800', 'PE', 'Olinda', 'Bairro Novo', 'Avenida do Sol', '31', NULL, '38'),
('53163900', 'PE', 'Recife', 'Pina', 'Rua da Paz', '32', NULL, '39'),
('53164000', 'PE', 'Jaboatão dos Guararapes', 'Candeias', 'Travessa da União', '33', NULL, '40'),
('53164100', 'PE', 'Recife', 'Boa Vista', 'Avenida das Palmeiras', '34', NULL, '41'),
('53164200', 'PE', 'Olinda', 'Rio Doce', 'Rua da Amizade', '35', NULL, '42'),
('53164300', 'PE', 'Recife', 'Santo Antônio', 'Avenida da Harmonia', '36', NULL, '43'),
('53164400', 'PE', 'Olinda', 'Aguas_Compridas', '1ª Travessa do Mar', '37', NULL, '44'),
('53164500', 'PE', 'Recife', 'Brasília Teimosa', '2ª Rua do Encanto', '38', NULL, '45'),
('53164600', 'PE', 'Recife', 'Alto do Mandu', '3ª Avenida da Esperança', '39', NULL, '46'),
('53164700', 'PE', 'Recife', 'Cohab', '4ª Praça da Liberdade', '40', NULL, '47'),
('53164800', 'PE', 'Recife', 'Dois Unidos', '5ª Travessa da Paz', '41', NULL, '48'),
('53164900', 'PE', 'Recife', 'Vasco da Gama', '6ª Rua do Comércio', '42', NULL, '49'),
('53165000', 'PE', 'Recife', 'Santo Amaro', '7ª Avenida do Sol', '43', NULL, '50'),
('53165100', 'PE', 'Caruaru', 'Cabugá', '8ª Praça das Flores', '44', NULL, '51'),
('53165200', 'PE', 'Recife', 'Lagoa Encantada', '9ª Rua da União', '45', NULL, '52'),
('53165300', 'PE', 'Recife', 'Jiquiá', '10ª Travessa do Mar', '46', NULL, '53'),
('53165400', 'PE', 'Paulista', 'Vila Tamandaré', '11ª Avenida do Encanto', '47', NULL, '54'),
('53165500', 'PE', 'Recife', 'Boa Viagem', 'Rua da Amizade', '48', NULL, '55'),
('53165600', 'PE', 'Olinda', 'Bairro Novo', 'Avenida da Harmonia', '49', NULL, '56'),
('53165700', 'PE', 'Recife', 'Pina', 'Rua das Palmeiras', '50', NULL, '57'),
('53165800', 'PE', 'Jaboatão dos Guararapes', 'Candeias', 'Travessa da Esperança', '51', NULL, '58'),
('53165900', 'PE', 'Recife', 'Boa Vista', 'Avenida do Comércio', '52', NULL, '59'),
('53166000', 'PE', 'Olinda', 'Rio Doce', 'Rua da Liberdade', '53', NULL, '60'),
('53166100', 'PE', 'Recife', 'Santo Antônio', 'Avenida Principal', '54', NULL, '61'),
('53166200', 'PE', 'Olinda', 'Aguas_Compridas', '1ª Travessa do Sol', '55', NULL, '62'),
('53166300', 'PE', 'Recife', 'Brasília Teimosa', '2ª Rua do Encanto', '56', NULL, '63');

ALTER TABLE endereco
ADD COLUMN endereco_CentroComunitario INT,
ADD CONSTRAINT fk_idCentroComunitario
FOREIGN KEY (endereco_CentroComunitario)
REFERENCES centrocomunitario (idCentroComunitario);

INSERT INTO endereco
(`CEP`, `UF`, `cidade`, `bairro`, `rua`, `numero`, `complemento`, `endereco_CentroComunitario`)
VALUES
('11111-111', 'PE', 'Recife', 'Centro', 'Rua A', '10', NULL, 1),
('22222-222', 'PE', 'Recife', 'Centro', 'Rua B', '20', NULL, 2),
('33333-333', 'PE', 'Recife', 'Centro', 'Rua C', '30', NULL, 3),
('44444-444', 'PE', 'Recife', 'Centro', 'Rua D', '40', NULL, 4),
('55555-555', 'PE', 'Recife', 'Centro', 'Rua E', '50', NULL, 5),
('66666-666', 'PE', 'Recife', 'Centro', 'Rua F', '60', NULL, 6),
('77777-777', 'PE', 'Recife', 'Centro', 'Rua G', '70', NULL, 7),
('88888-888', 'PE', 'Recife', 'Centro', 'Rua H', '80', NULL, 8),
('99999-999', 'PE', 'Recife', 'Centro', 'Rua I', '90', NULL, 9),
('10101-010', 'PE', 'Recife', 'Centro', 'Rua J', '100', NULL, 10),
('11111-111', 'PE', 'Recife', 'Centro', 'Rua K', '110', NULL, 11);

DELETE FROM endereco WHERE endereco_CentroComunitario IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11);

INSERT INTO endereco
(`CEP`, `UF`, `cidade`, `bairro`, `rua`, `numero`, `complemento`, `endereco_CentroComunitario`)
VALUES
('11111-111', 'PE', 'Recife', 'Brasilía Teimosa', 'Rua A', '10', NULL, 1),
('22222-222', 'PE', 'Recife', 'Alto do Mandu', 'Rua B', '20', NULL, 2),
('33333-333', 'PE', 'Recife', 'Dois Unidos', 'Rua C', '30', NULL, 3),
('44444-444', 'PE', 'Olinda', 'Aguas_Compridas', 'Rua D', '40', NULL, 4),
('55555-555', 'PE', 'Jaboatão dos Guararapes', 'Cohab', 'Rua E', '50', NULL, 5),
('66666-666', 'PE', 'Recife', 'Santo Amaro', 'Rua F', '60', NULL, 6),
('77777-777', 'PE', 'Recife', 'Vasco da Gama', 'Rua G', '70', NULL, 7),
('88888-888', 'PE', 'Caruaru', 'Cabugá', 'Rua H', '80', NULL, 8),
('99999-999', 'PE', 'Recife', 'Lagoa Encantada', 'Rua I', '90', NULL, 9),
('10101-010', 'PE', 'Recife', 'Jiquiá', 'Rua J', '100', NULL, 10),
('11111-111', 'PE', 'Paulista', 'Vila Tamandaré', 'Rua K', '110', NULL, 11);

select * from acolhimento;
select * from alerta;
select * from centrocomunitario;
select * from comunidade;
select * from endereco;
select * from pluviometro;
select * from usuario;

insert into pluviometro
(`idPluviometro`, `local_Pluviometro`, `Comunidade_idComunidade`)
values
(1,"Barreira A", 1);

update pluviometro
set `local_Pluviometro` = 'Alto do Sol Nascente'
where idPluviometro = 1;

INSERT INTO pluviometro (`local_Pluviometro`, `Comunidade_idComunidade`)
VALUES ("9ª Travessa Francisco Valpassos", 2),
       ("Rua Cianorte", 3),
       ("Rua Asa Branca", 4),
       ("Córrego do Curió", 5),
       ("Rua Alto do Mundo Novo", 6),
       ("2ª Travessa Berlim", 7),
       ("Avenida Boa Esperança", 8),
       ("Rua Áurea", 9),
       ("Rua Cabo Walmir Ernesto Holder", 10),
       ("Praça da Bíblia", 11);
       
insert into alerta
(`data/hora`,`intensidade`, `tipoAlerta`, `CentroComunitario_idCentroComunitario`, `Pluviometro_idPluviometro`)
values
("2020-11-15 15:30:00" ,"Moderado" , "Chuva" , 1, 1);

INSERT INTO alerta (`data/hora`, `intensidade`, `tipoAlerta`, `CentroComunitario_idCentroComunitario`, `Pluviometro_idPluviometro`)
VALUES
    ('2022-03-10 09:15:00', 'Leve', 'Chuva', 2, 2),
    ('2022-06-20 14:45:00', 'Intenso', 'Tempestade', 3, 3),
    ('2022-09-05 18:30:00', 'Intenso', 'Enchente', 4, 4),
    ('2022-12-01 07:20:00', 'Leve', 'Chuva', 5, 5),
    ('2023-01-15 11:10:00', 'Moderado', 'Chuva', 6, 6),
    ('2023-04-22 16:55:00', 'Leve', 'Deslizamento de barreira', 7, 7),
    ('2023-07-12 19:40:00', 'Intenso', 'Enchente', 8, 8),
    ('2023-10-29 08:05:00', 'Moderado', 'Chuva', 9, 9),
    ('2024-02-14 13:50:00', 'Leve', 'Chuva', 10, 10),
    ('2024-05-06 17:25:00', 'Intenso', 'Deslizamento de barreira', 10, 10);
    
update alerta
set `CentroComunitario_idCentroComunitario` = '11'
where intensidade = "Intenso";

update alerta
set `CentroComunitario_idCentroComunitario` = '3'
where `Pluviometro_idPluviometro` = '3';

update alerta
set `CentroComunitario_idCentroComunitario` = '4'
where `Pluviometro_idPluviometro` = '4';

update alerta
set `CentroComunitario_idCentroComunitario` = '8'
where `Pluviometro_idPluviometro` = '8';

update alerta
set `Pluviometro_idPluviometro` = '11'
where `CentroComunitario_idCentroComunitario` = '11';

select * from usuario 
where Participa_da_Comunidade_idComunidade = 11;

ALTER TABLE usuario
CHANGE `e-mail` email varchar(60);


UPDATE usuario
SET idUsuario = 1, cpf = '61135266409', nome = 'Luiz Correia Gomes', idade = 31, sexo = 'M', 
telefone1 = '(81) 92822-0290', telefone2 = NULL, email = 'luizC@gmail.com', Participa_da_Comunidade_idComunidade = 1
WHERE idUsuario = 1;
UPDATE usuario
SET cpf = '98765437045', nome = 'Joaquim Jose', idade = 54, sexo = 'M', 
telefone1 = '(81) 93225-4180', telefone2 = NULL, email = 'joca.jose@gmail.com', Participa_da_Comunidade_idComunidade = 2
WHERE idUsuario = 2;

UPDATE usuario
SET cpf = '98765432101', nome = 'Maria Silva', idade = 25, sexo = 'F', 
telefone1 = '(81) 93243-4132', telefone2 = NULL, email = 'maria.silva@gmail.com', Participa_da_Comunidade_idComunidade = 3
WHERE idUsuario = 3;

SELECT nome, COUNT(*) AS total
FROM usuario
GROUP BY nome
HAVING COUNT(*) > 1;

select * from usuario
where nome = 'Camila Oliveira';

UPDATE usuario
SET cpf = '40012345678', nome = 'Camilla Joana', idade = 25, sexo = 'F', 
telefone1 = '(81) 93786-5342', telefone2 = NULL, email = 'camillajojo@gmail.com', Participa_da_Comunidade_idComunidade = 4
WHERE idUsuario = 31;

UPDATE usuario
SET cpf = '59551643434', nome = 'Sandra Meirelles', idade = 32, sexo = 'F', 
telefone1 = '(81) 93259-3432', telefone2 = NULL, email = 'sandramei@gmail.com', Participa_da_Comunidade_idComunidade = 4
WHERE idUsuario = 51;

select * from usuario
where nome = 'Gabriel Souza';

UPDATE usuario
SET nome = 'Gabriel Mendes', idade = 32,
telefone1 = '(81) 93346-0486', telefone2 = NULL, email = 'mendesgabriel@gmail.com', Participa_da_Comunidade_idComunidade = 3
WHERE idUsuario = 26;

 SELECT nome, COUNT(*) AS total
FROM usuario
GROUP BY nome
HAVING COUNT(*) > 1;


SELECT *
FROM usuario
WHERE idUsuario IN (
    SELECT idUsuario
    FROM usuario
    GROUP BY nome
    HAVING COUNT(*) > 1
);

select * from usuario
where nome = 'Pedro Santos';

select * from acolhimento;

select * from usuario 
where Participa_da_Comunidade_idComunidade = 8;
select * from centrocomunitario;

INSERT INTO acolhimento
(`idAcolhimento`, `status`, `dataInicio`, `dataFim`, `Usuario_idUsuario`, CentroComunitario_idCentroComunitario)
VALUES
(1,"Aberto", '2024-05-06 18:00:00', NULL, 12, 11);

INSERT INTO acolhimento
(`status`, `dataInicio`, `dataFim`, `Usuario_idUsuario`, CentroComunitario_idCentroComunitario)
VALUES
("Fechado", '2020-03-31', '2020-04-15', 52, 11),
("Aberto", '2023-01-15', NULL, 28, 5),
("Fechado", '2020-07-15', '2020-07-30', 48, 5),
("Fechado", '2020-08-30', '2021-01-15', 3, 3),
("Fechado", '2020-08-30', '2021-01-15', 6, 3),
("Fechado", '2020-08-30', '2021-01-15', 16, 3),
("Aberto", '2023-05-11', NULL , 10, 8),
("Aberto", '2023-05-11', NULL , 20, 8),
("Aberto", '2023-05-11', NULL , 30, 8),
("Aberto", '2023-05-11', NULL , 40, 8);

select * from acolhimento;
select * from alerta;
select * from centrocomunitario;
select * from comunidade;
select * from endereco;
select * from pluviometro;
select * from usuario;
