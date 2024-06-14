CREATE TABLE Paciente (
	IdPaciente serial PRIMARY KEY,
	NomePaciente varchar (200),
	Nascimento DATE
)

Insert into Paciente (IdPaciente, NomePaciente, Nascimento) VALUES
(1, 'Maria Silva', '1990-03-15'),
(2, 'Pedro Oliveira', '1985-07-20'),
(3, 'Ana Santos', '1988-11-10'),
(4, 'João Pereira', '1993-05-25'),
(5, 'Carla Costa', '1982-09-03'),
(6, 'Lucas Fernandes', '1996-02-18'),
(7, 'Juliana Lima', '1989-06-12'),
(8, 'Rafael Almeida', '1991-10-30'),
(9, 'Fernanda Martins', '1987-04-07'),
(10, 'Gabriel Souza', '1994-08-22')

SELECT * FROM Paciente

CREATE TABLE Medico (
	IdMedico serial PRIMARY KEY,
	NomeMedico varchar (200),
	Especializacao text
)

INSERT INTO Medico (IdMEdico, NomeMedico, Especializacao) VALUES
(1, 'Dr. Ana Silva', 'Cardiologia'),
(2, 'Dr. Pedro Oliveira', 'Ortopedia'),
(3, 'Dra. Maria Santos', 'Ginecologia'),
(4, 'Dr. João Pereira', 'Pediatria'),
(5, 'Dra. Carla Costa', 'Dermatologia'),
(6, 'Dr. Lucas Fernandes', 'Oncologia'),
(7, 'Dra. Juliana Lima', 'Psiquiatria'),
(8, 'Dr. Rafael Almeida', 'Neurologia'),
(9, 'Dra. Fernanda Martins', 'Endocrinologia'),
(10, 'Dr. Gabriel Souza', 'Urologia')

SELECT * FROM Medico

CREATE TABLE Registro (
	IdRegistro serial PRIMARY KEY,
	IdPaciente serial,
	IdMedico serial,
	DataConsulta DATE,
	FOREIGN KEY (IdPaciente) REFERENCES Paciente (IdPaciente),
	FOREIGN KEY (IdMedico) REFERENCES Medico (IdMedico)
)

INSERT INTO Registro (IdRegistro, Dataconsulta) VALUES
(11, '2024-11-15'),
(12, '2024-12-20'),
(13, '2025-01-10'),
(14, '2025-02-25'),
(15, '2025-03-03'),
(16, '2025-04-18'),
(17, '2025-05-12'),
(18, '2025-06-30'),
(19, '2025-07-07'),
(20, '2025-08-22')

SELECT * FROM Registro
