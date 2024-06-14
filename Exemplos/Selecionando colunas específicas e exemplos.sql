--****************************--
--         Preparação         --
--****************************--

-- Adicionar produtos que não foram comprados
INSERT INTO products (productname,brand,category,discount,price) VALUES
('impressora','hp','eletronicos',0.12,489.9),
('luminaria','ge','eletronicos',0.5,46.80),
('drone','dji','eletronico',0.12,9856.0)

SELECT * FROM produtcs

--Cross join 

SELECT * FROM clients, products
SELECT * FROM products,clients
SELECT * FROM clients CROSS JOIN products


-- Inner Join (relaciona por PK/FK)

SELECT firstname, productname FROM clients INNER JOIN products
ON clients.idclient = products.idclient
WHERE firstname='Rodrigo' 

SELECT * FROM clients INNER JOIN products USING (idclient)

SELECT * FROM clients NATURAL INNER JOIN products