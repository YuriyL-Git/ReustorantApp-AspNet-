﻿CREATE TABLE [dbo].[Food]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [Description] NCHAR(250) NOT NULL, 
    [Price] MONEY NOT NULL
)
