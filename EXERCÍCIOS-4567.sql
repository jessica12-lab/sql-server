--4. Voc� foi alocado para criar um relat�rio das lojas registradas atualmente na Contoso.
--a) Descubra quantas lojas a empresa tem no total. Na consulta que voc� dever� fazer � tabela
--DimStore, retorne as seguintes informa��es: StoreName, OpenDate, EmployeeCount
--b) Renomeeie as colunas anteriores para deixar a sua consulta mais intuitiva.
--c) Dessas lojas, descubra quantas (e quais) lojas ainda est�o ativas. 294 ATIVAS

SELECT STORENAME AS NOME_DA_LOJA, OPENDATE AS ABERTURA, EMPLOYEECOUNT AS QTD_FUNCION�RIO, CloseReason FROM DimStore
WHERE CloseReason IS NULL
SELECT * FROM DimStore

--5 O gerente da �rea de controle de qualidade notificou � Contoso que todos os produtos Home
--Theater da marca Litware, disponibilizados para venda no dia 15 de mar�o de 2009, foram
--identificados com defeitos de f�brica.
--O que voc� dever� fazer � identificar os ID�s desses produtos e repassar ao gerente para que ele
--possa notificar as lojas e consequentemente solicitar a suspens�o das vendas desses produtos.SELECT * FROM DimProductWHERE BrandName = 'LITWARE' AND PRODUCTNAME LIKE '%HOME THEATER%' AND AvailableForSaleDate = '20090315'


--6. Imagine que voc� precise extrair um relat�rio da tabela DimStore, com informa��es de lojas.
--Mas voc� precisa apenas das lojas que n�o est�o mais funcionando atualmente.
--a) Utilize a coluna de Status para filtrar a tabela e trazer apenas as lojas que n�o est�o mais
--funcionando.
--b) Agora imagine que essa coluna de Status n�o existe na sua tabela. Qual seria a outra forma
--que voc� teria de descobrir quais s�o as lojas que n�o est�o mais funcionando?SELECT * FROM DimStoreWHERE Status = 'OFF'SELECT * FROM DimStoreWHERE CloseDate IS NOT NULL --7. De acordo com a quantidade de funcion�rios, cada loja receber� uma determinada quantidade
--de m�quinas de caf�. As lojas ser�o divididas em 3 categorias:
--CATEGORIA 1: De 1 a 20 funcion�rios -> 1 m�quina de caf� 69 LOJAS
--CATEGORIA 2: De 21 a 50 funcion�rios -> 2 m�quinas de caf� 181 LOJAS
--CATEGORIA 3: Acima de 51 funcion�rios -> 3 m�quinas de caf� 42 LOJASSELECT StoreName, EmployeeCount  FROM DimStoreWHERE EmployeeCount BETWEEN 1 AND 20 AND Status = 'ON'ORDER BY EmployeeCount DESCSELECT StoreName, EmployeeCount FROM DimStoreWHERE EmployeeCount BETWEEN 21 AND 50 AND Status = 'ON'ORDER BY EmployeeCount DESCSELECT StoreName, EmployeeCount FROM DimStoreWHERE EmployeeCount BETWEEN 51 AND 306 AND STATUS = 'ON'ORDER BY EmployeeCount DESC