-- CATEGORIA
INSERT INTO CATEGORIA (id, descricao) VALUES (1, 'Curso');
INSERT INTO CATEGORIA (id, descricao) VALUES (2, 'Oficina');

-- ATIVIDADE
INSERT INTO ATIVIDADE (id, nome, descricao, preco, categoria_id) VALUES (1, 'Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);

INSERT INTO ATIVIDADE (id, nome, descricao, preco, categoria_id) VALUES (2, 'Oficina de Github', 'Controle versões de seus projetos', 50.00, 2);

-- BLOCO
INSERT INTO BLOCO (id, inicio, fim, atividade_id) VALUES (1, '2017-09-25 08:00:00', '2017-09-25 11:00:00', 1);

INSERT INTO BLOCO (id, inicio, fim, atividade_id) VALUES (2, '2017-09-25 14:00:00', '2017-09-25 18:00:00', 1);

INSERT INTO BLOCO (id, inicio, fim, atividade_id) VALUES (3, '2017-09-26 08:00:00', '2017-09-26 11:00:00', 2);

-- PARTICIPANTE
INSERT INTO PARTICIPANTE (id, nome, email) VALUES (1, 'José Silva', 'jose@gmail.com');
INSERT INTO PARTICIPANTE (id, nome, email) VALUES (2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO PARTICIPANTE (id, nome, email) VALUES (3, 'Maria do Rosário', 'maria@gmail.com');
INSERT INTO PARTICIPANTE (id, nome, email) VALUES (4, 'Teresa Silva', 'teresa@gmail.com');

-- ATIVIDADE_PARTICIPANTE (tabela de junção)
INSERT INTO ATIVIDADE_PARTICIPANTE (atividade_id, participante_id) VALUES (1, 1);
INSERT INTO ATIVIDADE_PARTICIPANTE (atividade_id, participante_id) VALUES (1, 2);
INSERT INTO ATIVIDADE_PARTICIPANTE (atividade_id, participante_id) VALUES (2, 3);
INSERT INTO ATIVIDADE_PARTICIPANTE (atividade_id, participante_id) VALUES (2, 4);
INSERT INTO ATIVIDADE_PARTICIPANTE (atividade_id, participante_id) VALUES (2, 1);