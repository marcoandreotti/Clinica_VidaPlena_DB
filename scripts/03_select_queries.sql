--Lista: Pacientes ordenando por nome
SELECT * FROM PACIENTE
ORDER BY Nome ASC;

--Lista: Consultas agendadas com nome do paciente e médico
SELECT c.ID_Consulta, c.Data_Hora,
       p.Nome AS Paciente,
       m.Nome AS Medico,
       s.Numero AS Sala
FROM CONSULTA c
JOIN PACIENTE p ON p.ID_Paciente = c.ID_Paciente
JOIN MEDICO m ON m.ID_Medico = c.ID_Medico
JOIN SALA s ON s.ID_Sala = c.ID_Sala;

--Lista: Filtrar consultas por especialidade
SELECT c.ID_Consulta, c.Data_Hora, m.Especialidade
FROM CONSULTA c
JOIN MEDICO m ON m.ID_Medico = c.ID_Medico
WHERE m.Especialidade = 'Cardiologia';

--Lista: Limitar retornos
SELECT Nome, Cidade FROM PACIENTE
LIMIT 2;

--Lista: Prontuários com diagnóstico e paciente
SELECT pr.ID_Prontuario, pr.Diagnostico, p.Nome
FROM PRONTUARIO pr
JOIN CONSULTA c ON c.ID_Consulta = pr.ID_Consulta
JOIN PACIENTE p ON p.ID_Paciente = c.ID_Paciente;
