-- WHERE

--SELECT * FROM DimProduct

SELECT TOP(100)
	UNITPRICE AS PRE�O,
	ProductName AS PRODUTO
FROM DimProduct
WHERE UnitPrice >= 2000

SELECT DISTINCT BRANDNAME FROM DimProduct

SELECT * FROM DimProduct
WHERE BrandName = 'FABRIKAM'

SELECT * FROM DimProduct
WHERE ColorName = 'BLACK'

-- FILTRO DE DATA
SELECT * FROM DimCustomer
WHERE BirthDate >= '1970-12-31'
ORDER BY BirthDate DESC
