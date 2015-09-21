CREATE TABLE [dbo].[Asset](
	[AssetId] [int] IDENTITY(1,1) NOT NULL,
	[AssetTypeId] [int] NOT NULL,
	[AssetNumber] [nvarchar](50) NULL,
	[AssetCode] [nvarchar](50) NULL,
	[AssetName] [nvarchar](50) NULL,
	[AssetShortName] [nvarchar](10) NULL,
	[Description] [nvarchar](256) NULL,
	[IdentificationNumber] [nvarchar](50) NULL,
	[AcquisitionDate] [datetime] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] INT NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
	 CONSTRAINT [PK_Asset] PRIMARY KEY CLUSTERED 
(
	[AssetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY], 
    CONSTRAINT [FK_Asset_AssetType] FOREIGN KEY ([AssetTypeId]) REFERENCES [AssetType]([AssetTypeId]),
    CONSTRAINT [FK_Asset_User] FOREIGN KEY ([UserUpdatedId]) REFERENCES [User]([UserId])
) ON [PRIMARY];

GO

CREATE NONCLUSTERED INDEX [IX_AssetTypeId] ON [dbo].[Asset]
(
	[AssetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

