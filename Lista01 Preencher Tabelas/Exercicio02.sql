CREATE TABLE Aluno (
	IdAluno serial PRIMARY KEY,
	NomeAluno varchar (100),
	Nascimento DATE
)

Insert Into Aluno (IdAluno, NomeAluno, Nascimento) VALUES
(1, 'Ana Silva', '1990-03-15'),
(2, 'Pedro Oliveira', '1985-07-20'),
(3, 'Maria Santos', '1988-11-10'),
(4, 'João Pereira', '1993-05-25'),
(5, 'Carla Costa', '1982-09-03'),
(6, 'Lucas Fernandes', '1996-02-18'),
(7, 'Juliana Lima', '1989-06-12'),
(8, 'Rafael Almeida', '1991-10-30'),
(9, 'Fernanda Martins', '1987-04-07'),
(10, 'Gabriel Souza', '1994-08-22')

SELECT * FROM Aluno

CREATE TABLE Turma (
	IdTurma serial PRIMARY KEY,
	Idcurso serial,
	IdProfessor serial
)

INSERT INTO Turma (IdTurma, IdCurso, IdProfessor) VALUES
(1, 101, 201),
(2, 102, 202),
(3, 103, 203),
(4, 104, 204),
(5, 105, 205),
(6, 106, 206),
(7, 107, 207),
(8, 108, 208),
(9, 109, 209),
(10, 110, 210)

SELECT * FROM Turma

CREATE TABLE Relacoes (
	IdAluno serial,
	IdTurma serial,
	FOREIGN KEY (IdAluno) REFERENCES Aluno (IdAluno),
	FOREIGN KEY (IdTurma) REFERENCES Turma (IdTurma)
)

SELECT * FROM Relacoes 

CREATE TABLE Curso (
	IdCurso serial PRIMARY KEY,
	NomeCurso varchar (100)
)


INSERT INTO Curso (IdCurso, NomeCurso) VALUES
(111, 'Engenharia Eletrica'),
(112, 'Medicina Veterinária'),
(113, 'Administração Pública'),
(114, 'Design Gráfico'),
(115, 'Contabilidade'),
(116, 'Engenharia Mecânica'),
(117, 'Nutrição'),
(118, 'Jornalismo'),
(119, 'Ciências Ambientais'),
(120, 'Educação Física')

SELECT * FROM Curso

