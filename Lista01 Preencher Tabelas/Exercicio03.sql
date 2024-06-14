CREATE TABLE Funcionario (
	IdFuncionario serial PRIMARY KEY,
	NomeFuncionario varchar (150),
	DataAdmissao DATE 

)

Insert into Funcionario (IdFuncionario, NomeFuncionario, DataAdmissao) VALUES 
(1, 'Ana Silva', '2020-01-15'),
(2, 'Pedro Oliveira', '2019-05-20'),
(3, 'Maria Santos', '2018-11-10'),
(4, 'João Pereira', '2021-03-25'),
(5, 'Carla Costa', '2017-09-03'),
(6, 'Lucas Fernandes', '2022-02-18'),
(7, 'Juliana Lima', '2016-06-12'),
(8, 'Rafael Almeida', '2023-04-30'),
(9, 'Fernanda Martins', '2015-08-07'),
(10, 'Gabriel Souza', '2024-01-22')

SELECT * FROM Funcionario

CREATE TABLE Projeto (
	IdProjeto serial PRIMARY KEY,
	NomeProjeto varchar (150),
	Descricao text

)

Insert Into Projeto (IdProjeto, NomeProjeto, Descricao) VALUES
(11, 'Implementação de Sistema de Gestão de Estoques', 'Desenvolvimento e implementação de um sistema de gestão de estoques para otimizar o controle de inventário.'),
(12, 'Projeto de Expansão Internacional', 'Plano estratégico para expandir as operações da empresa para mercados internacionais.'),
(13, 'Rede Social Corporativa', 'Desenvolvimento de uma rede social interna para facilitar a comunicação e colaboração entre os funcionários.'),
(14, 'Projeto de Automação de Processos', 'Automação de processos manuais para aumentar a produtividade e reduzir erros operacionais.'),
(15, 'Projeto de Pesquisa de Mercado', 'Realização de pesquisas de mercado para entender as necessidades e preferências dos clientes.'),
(16, 'Desenvolvimento de Plano de Negócios', 'Elaboração de um plano de negócios detalhado para orientar as atividades futuras da empresa.'),
(17, 'Projeto de Educação Corporativa', 'Implementação de programas de educação corporativa para desenvolver as habilidades dos funcionários.'),
(18, 'Projeto de Eficiência Energética', 'Implementação de medidas para reduzir o consumo de energia e promover a eficiência energética.'),
(19, 'Projeto de Lançamento de Novo Produto', 'Planejamento e execução do lançamento de um novo produto no mercado.'),
(20, 'Projeto de Gestão de Crises', 'Desenvolvimento de planos de contingência e gestão de crises para lidar com situações adversas.')

SELECT * FROM Projeto

CREATE TABLE Relacao (
	IdFuncionario serial,
	IdProjeto serial,
	FOREIGN KEY (IdFuncionario) REFERENCES Funcionario (IdFuncionario),
	FOREIGN KEY (IdProjeto) REFERENCES Projeto (IdProjeto)
)

SELECT * FROM Relacao