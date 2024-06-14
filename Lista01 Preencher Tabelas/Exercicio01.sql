	CREATE TABLE Livro (
	ISBN varchar (13) PRIMARY KEY,
	titulo varchar (250),
	editora varchar (100),
	DataPublicacao Date
)

INSERT INTO Livro (ISBN, titulo, editora, DataPublicacao) Values
('9780553293357', 'O Senhor dos Anéis', 'Editora Martins', '1954-07-29'),
('9780345803504', '1984', 'Editora Companhia das Letras', '1949-06-08'),
('9780060935467', 'O Apanhador no Campo de Centeio', 'Editora Globo', '1951-07-16'),
('9788535901459', 'Cem Anos de Solidão', 'Editora Record', '1967-05-30'),
('9788520933945', 'A Revolução dos Bichos', 'Editora Intrínseca', '1945-08-17'),
('9788532504929', 'O Pequeno Príncipe', 'Editora Agir', '1943-04-06'),
('9788535910550', 'Dom Quixote', 'Editora Rocco', '1605-01-16'),
('9788532525757', 'Crime e Castigo', 'Editora Saraiva', '1866-11-14'),
('9788535910574', 'Guerra e Paz', 'Editora Leya', '1869-01-22'),
('9788532515062', 'O Grande Gatsby', 'Editora Globo Livros', '1925-04-10')

SELECT * FROM Livro

CREATE TABLE Autor (
	IdAutor Serial PRIMARY KEY,
	Nome varchar (100)
)

Insert into Autor (IdAutor, Nome) values
(1, 'Maria Silva'),
(2, 'João Oliveira'),
(3, 'Ana Souza'),
(4, 'Pedro Santos'),
(5, 'Carla Costa'),
(6, 'Lucas Pereira'),
(7, 'Juliana Lima'),
(8, 'Rafael Fernandes'),
(9, 'Patrícia Almeida'),
(10, 'Gabriel Martins')

SELECT * FROM Autor 

CREATE TABLE Relacoes (
	ISBN varchar (13),
	IdAutor Serial,
	FOREIGN KEY (ISBN) REFERENCES Livro (ISBN),
	FOREIGN KEY (IdAutor) REFERENCES Autor (IdAutor)
)

SELECT * FROM Relacoes