-- EXERCÍCIOS
--1
SELECT * FROM DimEmployee
WHERE GENDER = 'F' AND DepartmentName = 'FINANCE'

--2
SELECT TOP(10) * FROM DimProduct
WHERE BrandName = 'CONTOSO'
AND ColorName='RED'
AND UnitPrice >=100
ORDER BY UnitPrice DESC

--3
SELECT * FROM DimProduct
WHERE BrandName = 'LITWARE' 
OR BrandName='FABRIKAM'
OR ColorName = 'BLACK' 

--4 
SELECT * FROM DimSalesTerritory
WHERE NOT SalesTerritoryCountry='ITALY' AND SalesTerritoryGroup = 'EUROPE'

-- QUANDO QUISER QUE SEJA INTERPRETADO PRIMEIRO, UTILIZAR O ()
SELECT * FROM DimProduct
WHERE (ColorName = 'BLACK' OR ColorName = 'RED')
 AND BrandName = 'FABRIKAM' 