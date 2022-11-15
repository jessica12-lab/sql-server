--1. Você é o gerente da área de compras e precisa criar um relatório com as TOP 100 vendas, de
--acordo com a quantidade vendida. Você precisa fazer isso em 10min pois o diretor de compras
--solicitou essa informação para apresentar em uma reunião.
--Utilize seu conhecimento em SQL para buscar essas TOP 100 vendas, de acordo com o total
--vendido (SalesAmount).

SELECT TOP(100) SalesQuantity,
	SalesAmount,
	ProductKey
FROM FactSales
ORDER BY SalesAmount DESC

--2 Os TOP 10 produtos com maior UnitPrice possuem exatamente o mesmo preço. Porém, a
--empresa quer diferenciar esses preços de acordo com o peso (Weight) de cada um.

SELECT DISTINCT TOP(10) * FROM DimProduct
WHERE StockTypeName = 'HIGH'
ORDER BY Weight DESC 

--3. Você é responsável pelo setor de logística da empresa Contoso e precisa dimensionar o
--transporte de todos os produtos em categorias, de acordo com o peso.
--Os produtos da categoria A, com peso acima de 100kg, deverão ser transportados na primeira
--leva.
--Faça uma consulta no banco de dados para descobrir quais são estes produtos que estão na
--categoria A.
--a) Você deverá retornar apenas 2 colunas nessa consulta: Nome do Produto e Peso.
--b) Renomeie essas colunas com nomes mais intuitivos.
--c) Ordene esses produtos do mais pesado para o mais leve.

SELECT TOP(100) ProductName AS PRODUTO,
	Weight AS PESO
FROM DimProduct
WHERE Weight >=100
ORDER BY Weight DESC




