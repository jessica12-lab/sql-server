SELECT TOP(10)
	UnitCost,
	ProductName,
	Weight
FROM DimProduct
ORDER BY 
UnitCost DESC, Weight DESC

-- ORDER BY

SELECT TOP (10) * FROM DimStore
ORDER BY 
	EmployeeCount DESC