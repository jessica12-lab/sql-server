--4. Você foi alocado para criar um relatório das lojas registradas atualmente na Contoso.
--a) Descubra quantas lojas a empresa tem no total. Na consulta que você deverá fazer à tabela
--DimStore, retorne as seguintes informações: StoreName, OpenDate, EmployeeCount
--b) Renomeeie as colunas anteriores para deixar a sua consulta mais intuitiva.
--c) Dessas lojas, descubra quantas (e quais) lojas ainda estão ativas. 294 ATIVAS

SELECT STORENAME AS NOME_DA_LOJA, OPENDATE AS ABERTURA, EMPLOYEECOUNT AS QTD_FUNCIONÁRIO, CloseReason FROM DimStore
WHERE CloseReason IS NULL
SELECT * FROM DimStore

--5 O gerente da área de controle de qualidade notificou à Contoso que todos os produtos Home
--Theater da marca Litware, disponibilizados para venda no dia 15 de março de 2009, foram
--identificados com defeitos de fábrica.
--O que você deverá fazer é identificar os ID’s desses produtos e repassar ao gerente para que ele
--possa notificar as lojas e consequentemente solicitar a suspensão das vendas desses produtos.SELECT * FROM DimProductWHERE BrandName = 'LITWARE' AND PRODUCTNAME LIKE '%HOME THEATER%' AND AvailableForSaleDate = '20090315'


--6. Imagine que você precise extrair um relatório da tabela DimStore, com informações de lojas.
--Mas você precisa apenas das lojas que não estão mais funcionando atualmente.
--a) Utilize a coluna de Status para filtrar a tabela e trazer apenas as lojas que não estão mais
--funcionando.
--b) Agora imagine que essa coluna de Status não existe na sua tabela. Qual seria a outra forma
--que você teria de descobrir quais são as lojas que não estão mais funcionando?SELECT * FROM DimStoreWHERE Status = 'OFF'SELECT * FROM DimStoreWHERE CloseDate IS NOT NULL --7. De acordo com a quantidade de funcionários, cada loja receberá uma determinada quantidade
--de máquinas de café. As lojas serão divididas em 3 categorias:
--CATEGORIA 1: De 1 a 20 funcionários -> 1 máquina de café 69 LOJAS
--CATEGORIA 2: De 21 a 50 funcionários -> 2 máquinas de café 181 LOJAS
--CATEGORIA 3: Acima de 51 funcionários -> 3 máquinas de café 42 LOJASSELECT StoreName, EmployeeCount  FROM DimStoreWHERE EmployeeCount BETWEEN 1 AND 20 AND Status = 'ON'ORDER BY EmployeeCount DESCSELECT StoreName, EmployeeCount FROM DimStoreWHERE EmployeeCount BETWEEN 21 AND 50 AND Status = 'ON'ORDER BY EmployeeCount DESCSELECT StoreName, EmployeeCount FROM DimStoreWHERE EmployeeCount BETWEEN 51 AND 306 AND STATUS = 'ON'ORDER BY EmployeeCount DESC