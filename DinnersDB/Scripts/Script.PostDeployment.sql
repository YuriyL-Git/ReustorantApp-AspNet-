/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
if not exists (SELECT * FROM dbo.Food)
BEGIN
 insert into dbo. Food(Title, [Description], Price)
values ('Cheeseburger Meal', 'A cheeseburger, fries, and a drink', 5.95), 
        ('Chili Dog Meal', 'Two chili dogs, fries, and a drink', 4.15),
        ('Vegan Meal', 'A large salad, fries, and a drink', 5.95),
        ('Desert', 'Cherry desert', 4.35)
END
