SELECT * FROM DimProduct
WHERE UnitPrice NOT BETWEEN 50 AND 100


SELECT * FROM DimEmployee
WHERE HireDate BETWEEN '1999-01-01' AND '2000-01-01' AND Gender = 'F'
ORDER BY HireDate
