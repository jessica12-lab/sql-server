--FILTRO COM AND OR E NOT

SELECT * FROM DimProduct
WHERE BrandName = 'FABRIKAM' AND ColorName = 'BLUE'

SELECT
	StockTypeName AS ESTOQUE,
	BrandName AS MARCA,
	ColorName AS COR,
	UnitCost AS PREÇO
FROM DimProduct
WHERE StockTypeName = 'HIGH'
AND BrandName = 'FABRIKAM' 
AND ColorName = 'BLUE'
ORDER BY UnitCost DESC