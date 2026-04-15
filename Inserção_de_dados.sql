-- 1. Inserindo um Professor
INSERT INTO Professor (nome, email) VALUES ('Marcos Rocha', 'marcos.rocha@unifacema.edu.br');

-- 2. Inserindo uma Turma
INSERT INTO Turma (codigo_turma, periodo_letivo) VALUES ('ADS-03-N', '2026.1');

-- 3. Inserindo um Aluno
INSERT INTO Aluno (nome, matricula, data_nascimento) VALUES ('Seu Nome Aqui', '123456', '2000-01-01');

-- 4. Inserindo uma Disciplina vinculada ao Professor e à Turma
INSERT INTO Disciplina (nome_disciplina, carga_horaria, id_professor, id_turma) 
VALUES ('Analise e Projeto Orientada a Objetos', 80, 1, 1);

-- 5. Realizando a Matrícula (Onde a mágica acontece)
INSERT INTO Matricula (id_aluno, id_disciplina, nota, desempenho) 
VALUES (1, 1, 9.5, 'Aprovado');