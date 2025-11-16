--Remover prontuário
DELETE FROM PRONTUARIO
WHERE ID_Prontuario = 3;

--Remover consulta
DELETE FROM CONSULTA
WHERE ID_Consulta = 3;

--Remover paciente sem consultas
DELETE FROM PACIENTE
WHERE ID_Paciente = 3;
