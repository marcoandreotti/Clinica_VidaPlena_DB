--Paciente
INSERT INTO PACIENTE 
(Nome, Data_Nascimento, CPF, Telefone, Rua, Numero, Bairro, Cidade, Estado, Cep)
VALUES
('João Silva', '1985-04-10', '123.456.789-00', '(19) 98888-1111', 'Rua Primavera', '120', 'Centro', 'Campinas', 'SP', '13000-000'),
('Maria Oliveira', '1990-08-22', '987.654.321-00', '(19) 97777-2222', 'Rua das Flores', '45', 'Jardim Rosa', 'Campinas', 'SP', '13010-200'),
('Carlos Pereira', '1978-02-15', '321.654.987-00', '(19) 96666-3333', 'Av Brasil', '900', 'Estação', 'Campinas', 'SP', '13020-500');

--Médico
INSERT INTO MEDICO (Nome, CRM, Especialidade)
VALUES
('Dr. Ricardo Mendes', 'CRM12345', 'Cardiologia'),
('Dra. Paula Souza', 'CRM54321', 'Dermatologia'),
('Dr. Felipe Andrade', 'CRM99999', 'Ortopedia');

--Sala
INSERT INTO SALA (Numero, Andar)
VALUES
(101, 1),
(205, 2),
(310, 3);

--Consulta
INSERT INTO CONSULTA (Data_Hora, ID_Paciente, ID_Medico, ID_Sala)
VALUES
('2024-11-16 08:00:00', 1, 1, 1),
('2024-11-17 09:30:00', 2, 2, 2),
('2024-11-18 14:00:00', 3, 3, 3);

--Prontuário
INSERT INTO PRONTUARIO (ID_Consulta, Diagnostico, Prescricao, Observacoes)
VALUES
(1, 'Hipertensão', 'Losartana 50mg', 'Acompanhar pressão semanalmente'),
(2, 'Dermatite atópica', 'Pomada anti-inflamatória', 'Evitar exposição ao sol'),
(3, 'Tendinite ombro direito', 'Anti-inflamatório + fisioterapia', 'Retorno em 7 dias');
