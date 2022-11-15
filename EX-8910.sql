--8. A empresa decidiu que todas as televisões de LCD receberão um super desconto no próximo
--mês. O seu trabalho é fazer uma consulta à tabela DimProduct e retornar os ID’s, Nomes e
--Preços de todos os produtos LCD existentes.

SELECT ProductKey, ProductName,UnitPrice, ProductDescription FROM DimProduct
WHERE ProductName LIKE '%TV%'




--9. Faça uma lista com todos os produtos das cores: Green, Orange, Black, Silver e Pink. Estes
--produtos devem ser exclusivamente das marcas: Contoso, Litware e Fabrikam.

SELECT ColorName AS COR, 
	BrandName AS MARCA
FROM DimProduct
WHERE ColorName IN ('GREEN', 'BLACK', 'ORANGE', 'SILVER', 'PINK') AND BrandName IN ('CONTOSO', 'LITWARE', 'FABRIKAM')





--10. A empresa possui 16 produtos da marca Contoso, da cor Silver e com um UnitPrice entre 10 e
--30. Descubra quais são esses produtos e ordene o resultado em ordem decrescente de acordo
--com o preço (UnitPrice).

SELECT BrandName, ColorName, UnitPrice FROM DimProduct
WHERE BrandName = 'CONTOSO' AND ColorName = 'SILVER' AND UnitPrice BETWEEN 10 AND 30
ORDER BY UnitPrice DESC