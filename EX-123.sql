--1. Voc� � o gerente da �rea de compras e precisa criar um relat�rio com as TOP 100 vendas, de
--acordo com a quantidade vendida. Voc� precisa fazer isso em 10min pois o diretor de compras
--solicitou essa informa��o para apresentar em uma reuni�o.
--Utilize seu conhecimento em SQL para buscar essas TOP 100 vendas, de acordo com o total
--vendido (SalesAmount).

SELECT TOP(100) SalesQuantity,
	SalesAmount,
	ProductKey
FROM FactSales
ORDER BY SalesAmount DESC

--2 Os TOP 10 produtos com maior UnitPrice possuem exatamente o mesmo pre�o. Por�m, a
--empresa quer diferenciar esses pre�os de acordo com o peso (Weight) de cada um.

SELECT DISTINCT TOP(10) * FROM DimProduct
WHERE StockTypeName = 'HIGH'
ORDER BY Weight DESC 

--3. Voc� � respons�vel pelo setor de log�stica da empresa Contoso e precisa dimensionar o
--transporte de todos os produtos em categorias, de acordo com o peso.
--Os produtos da categoria A, com peso acima de 100kg, dever�o ser transportados na primeira
--leva.
--Fa�a uma consulta no banco de dados para descobrir quais s�o estes produtos que est�o na
--categoria A.
--a) Voc� dever� retornar apenas 2 colunas nessa consulta: Nome do Produto e Peso.
--b) Renomeie essas colunas com nomes mais intuitivos.
--c) Ordene esses produtos do mais pesado para o mais leve.

SELECT TOP(100) ProductName AS PRODUTO,
	Weight AS PESO
FROM DimProduct
WHERE Weight >=100
ORDER BY Weight DESC




