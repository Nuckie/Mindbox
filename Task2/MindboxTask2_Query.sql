
SELECT 
	p.[Name] AS '�������',
	ISNULL(c.[Name], '') AS '���������'
FROM [Mindbox].[dbo].[Product] p
LEFT JOIN [dbo].[ProductCategory] pc ON p.Id = pc.ProductId
LEFT JOIN [dbo].[Category] c ON c.Id = pc.CategoryId