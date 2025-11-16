CREATE TABLE PACIENTE (
    ID_Paciente      SERIAL PRIMARY KEY,
    Nome             VARCHAR(100) NOT NULL,
    Data_Nascimento  DATE NOT NULL,
    CPF              VARCHAR(14) UNIQUE NOT NULL,
    Telefone         VARCHAR(20),
    Rua              VARCHAR(100),
    Numero           VARCHAR(10),
    Complemento      VARCHAR(50),
    Bairro           VARCHAR(50),
    Cidade           VARCHAR(50),
    Estado           CHAR(2),
    Cep              VARCHAR(10)
);

CREATE TABLE MEDICO (
    ID_Medico     SERIAL PRIMARY KEY,
    Nome          VARCHAR(100) NOT NULL,
    CRM           VARCHAR(20) UNIQUE NOT NULL,
    Especialidade VARCHAR(50) NOT NULL
);

CREATE TABLE SALA (
    ID_Sala  SERIAL PRIMARY KEY,
    Numero   INT NOT NULL,
    Andar    INT NOT NULL
);

CREATE TABLE CONSULTA (
    ID_Consulta  SERIAL PRIMARY KEY,
    Data_Hora    TIMESTAMP NOT NULL,
    ID_Paciente  INT NOT NULL REFERENCES PACIENTE(ID_Paciente),
    ID_Medico    INT NOT NULL REFERENCES MEDICO(ID_Medico),
    ID_Sala      INT NOT NULL REFERENCES SALA(ID_Sala)
);

CREATE TABLE PRONTUARIO (
    ID_Prontuario SERIAL PRIMARY KEY,
    ID_Consulta   INT NOT NULL REFERENCES CONSULTA(ID_Consulta),
    Diagnostico   TEXT,
    Prescricao    TEXT,
    Observacoes   TEXT
);
