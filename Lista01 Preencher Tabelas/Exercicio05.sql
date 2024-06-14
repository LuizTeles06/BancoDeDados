Create table Departamentos (
	IDdepartamento Serial PRIMARY KEY,
	NomeDepartamento VARCHAR (250)
)

INSERT INTO Departamentos (NomeDepartamento) VALUES 
('Departamento de Recursos Humanos'),
('Departamento de Marketing'),
('Departamento de Finanças'),
('Departamento de Vendas'),
('Departamento de TI (Tecnologia da Informação'),
('Departamento de Logística'),
('Departamento de Pesquisa e Desenvolvimento'),
('Departamento Jurídico'),
('Departamento de Operações'),
('Departamento de Atendimento ao Cliente')

SELECT * FROM Departamentos

CREATE TABLE Funcionarios (
	
	IdFuncionarios SERIAL PRIMARY KEY,
	Iddepartamento Serial,
	FOREIGN KEY (IDdepartamento) REFERENCES Departamentos (IDdepartamento),
	NomeFuncionarios VARCHAR (100),
	DataAdmissao DATE,
	Cargo VARCHAR (100)
)

INSERT INTO Funcionarios (NomeFuncionarios, DataAdmissao, Cargo) VALUES
('João Silva', '2022-01-15', 'Analista de Marketing'),
('Maria Santos', '2021-08-20', 'Gerente de Vendas'),
('Carlos Oliveira', '2020-11-10', 'Especialista em Finanças'),
('Ana Pereira', '2023-03-05', 'Desenvolvedor de Software'),
('Pedro Costa', '2019-05-12', 'Coordenador de Recursos Humanos'),
('Camila Souza', '2022-09-30', 'Analista de Logística'),
('Lucas Santos', '2020-02-18', 'Advogado'),
('Juliana Lima', '2023-07-07', 'Supervisor de Operações'),
('Rafael Almeida', '2021-04-25', 'Engenheiro de Pesquisa'),
('Fernanda Castro', '2018-10-03', 'Atendente ao Cliente')

SELECT * FROM Funcionarios