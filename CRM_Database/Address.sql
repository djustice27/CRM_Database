CREATE TABLE [dbo].[Address]
(
	[AddressId] INT IDENTITY(1,1) NOT NULL , 
    [AddressTypeId] INT NOT NULL, 
    [AddressLine1] NVARCHAR(60) NOT NULL, 
    [AddressLine2] NVARCHAR(60) NULL, 
    [City] NVARCHAR(50) NOT NULL, 
    [StateProvinceId] INT NOT NULL, 
    [PostalCode] NVARCHAR(15) NOT NULL, 
    [DateUpdated] DATETIME NOT NULL, 
    [UserUpdatedId] INT NOT NULL, 
    [IsActive] BIT NOT NULL DEFAULT 0x1,
	 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY], 
    CONSTRAINT [FK_Address_AddressType] FOREIGN KEY ([AddressTypeId]) REFERENCES [AddressType]([AddressTypeId]),
    CONSTRAINT [FK_Address_StateProvince] FOREIGN KEY ([StateProvinceId]) REFERENCES [StateProvince]([StateProvinceId]),
    CONSTRAINT [FK_Address_User] FOREIGN KEY ([UserUpdatedId]) REFERENCES [User]([UserId])
) ON [PRIMARY];
