CREATE TABLE [dbo].[Address]
(
	[AddressId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [AddressTypeId] INT NOT NULL, 
    [AddressLine1] NVARCHAR(60) NOT NULL, 
    [AddressLine2] NVARCHAR(60) NULL, 
    [City] NVARCHAR(50) NOT NULL, 
    [StateProvinceId] INT NOT NULL, 
    [PostalCode] NVARCHAR(15) NOT NULL, 
    [DateUpdated] DATETIME NOT NULL, 
    [UserUpdated] INT NOT NULL, 
    [IsActive] BIT NOT NULL DEFAULT 0x1
)
