--Atualizar telefone
UPDATE PACIENTE
SET Telefone = '(19) 99999-0000'
WHERE ID_Paciente = 1;

--Atualizar especialidade
UPDATE MEDICO
SET Especialidade = 'Endocrinologia'
WHERE ID_Medico = 2;

--Mudar sala de uma consulta
UPDATE CONSULTA
SET ID_Sala = 3
WHERE ID_Consulta = 1;
