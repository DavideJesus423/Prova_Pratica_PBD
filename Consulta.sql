SELECT 
    A.nome AS Nome_Aluno, 
    D.nome_disciplina AS Disciplina, 
    M.nota AS Nota,
    M.desempenho AS Situacao
FROM Aluno A
JOIN Matricula M ON A.id_aluno = M.id_aluno
JOIN Disciplina D ON M.id_disciplina = D.id_disciplina;