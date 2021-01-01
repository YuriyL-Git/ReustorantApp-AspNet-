CREATE PROCEDURE [dbo].[spOrders_UpdateName]
@Id int,
@OrderName nvarchar(50)
AS

begin
set nocount on;

update dbo.[Order]
SET OrderName = @OrderName
where Id = @Id;


end

