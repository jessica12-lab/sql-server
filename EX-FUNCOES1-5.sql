/*1. O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade
Devolvida para o canal de venda mais importante da empresa: Store.
Utilize uma função SQL para fazer essas consultas no seu banco de dados. Obs: Faça essa
análise considerando a tabela FactSales.*/
SELECT SUM(SalesQuantity) AS 'QUANTIDADE VENDIDA',
	   SUM(RETURNQUANTITY) AS 'QUANTIDADE DEVOLVIDA'
FROM FactSales


/*2. Uma nova ação no setor de Marketing precisará avaliar a média salarial de todos os clientes
da empresa, mas apenas de ocupação ProfEssional. Utilize um comando SQL para atingir esse
resultado.*/

SELECT * FROM DimCustomer

SELECT AVG(YEARLYINCOME)
	AS 'MÉDIA SALARIAL'
FROM DimCustomer
WHERE Occupation = 'PROFESSIONAL'



/*3. Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na
empresa. O seu gerente te pediu os seguintes números e informações:
a) Quantos funcionários tem a loja com mais funcionários? 325
b) Qual é o nome dessa loja?
c) Quantos funcionários tem a loja com menos funcionários?
d) Qual é o nome dessa loja?*/

SELECT *FROM DimStore

--A
SELECT MAX(EmployeeCount) AS QTD_FUNCIONÁRIO
FROM DimStore

--B
SELECT TOP(1) StoreName AS 'NOME DA LOJA',
EmployeeCount AS QTD_FUNCIONÁRIO
FROM DIMSTORE
ORDER BY EmployeeCount DESC

--C

SELECT MIN(EmployeeCount) AS QTD_FUNCIONÁRIO
FROM DimStore

--D

SELECT TOP(1)
	StoreName AS 'NOME DA LOJA',
	EmployeeCount AS QTD_FUNCIONÁRIO
FROM 
	DIMSTORE
WHERE
	EMPLOYEECOUNT IS NOT NULL
ORDER BY
	EmployeeCount ASC



/*4. A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade
total de funcionários do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informações utilizando o SQL.*/
SELECT *FROM DimEmployee

SELECT 
	COUNT(GENDER) AS GENÊRO
FROM
	DimEmployee
	WHERE Gender = 'F'

SELECT 
	COUNT(GENDER) AS GENÊRO
FROM
	DimEmployee
	WHERE Gender = 'M'
/*b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.*/


SELECT TOP(1)
FirstName AS NOME,
EmailAddress AS 'E-MAIL',
HireDate AS 'DATA DE CONTRATAÇÃO'
FROM
	DimEmployee
WHERE
Gender = 'F'AND EndDate IS NULL
ORDER BY HireDate 

SELECT TOP(1)
FirstName AS NOME,
EmailAddress AS 'E-MAIL',
HireDate AS 'DATA DE CONTRATAÇÃO'
FROM
	DimEmployee
WHERE
Gender = 'M'AND EndDate IS NULL
ORDER BY HireDate 



/*5. Agora você precisa fazer uma análise dos produtos. Será necessário descobrir as seguintes
informações:
a) Quantidade distinta de cores de produtos.*/

SELECT * FROM DimProduct

SELECT 
COUNT(DISTINCT COLORNAME) AS COR,
COUNT(DISTINCT BRANDNAME) AS MARCA,
COUNT(DISTINCT ClassName) AS CLASSE
FROM 
DimProduct

/*b) Quantidade distinta de marcas*/

/*c) Quantidade distinta de classes de produto
Para simplificar, você pode fazer isso em uma mesma consulta.*/