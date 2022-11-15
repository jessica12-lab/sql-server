/*1. O gerente comercial pediu a voc� uma an�lise da Quantidade Vendida e Quantidade
Devolvida para o canal de venda mais importante da empresa: Store.
Utilize uma fun��o SQL para fazer essas consultas no seu banco de dados. Obs: Fa�a essa
an�lise considerando a tabela FactSales.*/
SELECT SUM(SalesQuantity) AS 'QUANTIDADE VENDIDA',
	   SUM(RETURNQUANTITY) AS 'QUANTIDADE DEVOLVIDA'
FROM FactSales


/*2. Uma nova a��o no setor de Marketing precisar� avaliar a m�dia salarial de todos os clientes
da empresa, mas apenas de ocupa��o ProfEssional. Utilize um comando SQL para atingir esse
resultado.*/

SELECT * FROM DimCustomer

SELECT AVG(YEARLYINCOME)
	AS 'M�DIA SALARIAL'
FROM DimCustomer
WHERE Occupation = 'PROFESSIONAL'



/*3. Voc� precisar� fazer uma an�lise da quantidade de funcion�rios das lojas registradas na
empresa. O seu gerente te pediu os seguintes n�meros e informa��es:
a) Quantos funcion�rios tem a loja com mais funcion�rios? 325
b) Qual � o nome dessa loja?
c) Quantos funcion�rios tem a loja com menos funcion�rios?
d) Qual � o nome dessa loja?*/

SELECT *FROM DimStore

--A
SELECT MAX(EmployeeCount) AS QTD_FUNCION�RIO
FROM DimStore

--B
SELECT TOP(1) StoreName AS 'NOME DA LOJA',
EmployeeCount AS QTD_FUNCION�RIO
FROM DIMSTORE
ORDER BY EmployeeCount DESC

--C

SELECT MIN(EmployeeCount) AS QTD_FUNCION�RIO
FROM DimStore

--D

SELECT TOP(1)
	StoreName AS 'NOME DA LOJA',
	EmployeeCount AS QTD_FUNCION�RIO
FROM 
	DIMSTORE
WHERE
	EMPLOYEECOUNT IS NOT NULL
ORDER BY
	EmployeeCount ASC



/*4. A �rea de RH est� com uma nova a��o para a empresa, e para isso precisa saber a quantidade
total de funcion�rios do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informa��es utilizando o SQL.*/
SELECT *FROM DimEmployee

SELECT 
	COUNT(GENDER) AS GEN�RO
FROM
	DimEmployee
	WHERE Gender = 'F'

SELECT 
	COUNT(GENDER) AS GEN�RO
FROM
	DimEmployee
	WHERE Gender = 'M'
/*b) O funcion�rio e a funcion�ria mais antigos receber�o uma homenagem. Descubra as
seguintes informa��es de cada um deles: Nome, E-mail, Data de Contrata��o.*/


SELECT TOP(1)
FirstName AS NOME,
EmailAddress AS 'E-MAIL',
HireDate AS 'DATA DE CONTRATA��O'
FROM
	DimEmployee
WHERE
Gender = 'F'AND EndDate IS NULL
ORDER BY HireDate 

SELECT TOP(1)
FirstName AS NOME,
EmailAddress AS 'E-MAIL',
HireDate AS 'DATA DE CONTRATA��O'
FROM
	DimEmployee
WHERE
Gender = 'M'AND EndDate IS NULL
ORDER BY HireDate 



/*5. Agora voc� precisa fazer uma an�lise dos produtos. Ser� necess�rio descobrir as seguintes
informa��es:
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
Para simplificar, voc� pode fazer isso em uma mesma consulta.*/