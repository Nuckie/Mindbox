
SELECT 
	p.[Name] AS 'Продукт',
	ISNULL(c.[Name], '') AS 'Категория'
FROM [Mindbox].[dbo].[Product] p
LEFT JOIN [dbo].[ProductCategory] pc ON p.Id = pc.ProductId
LEFT JOIN [dbo].[Category] c ON c.Id = pc.CategoryId