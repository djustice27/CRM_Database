CREATE TABLE [dbo].[AssetType](
	[AssetTypeId] [int] IDENTITY(1,1) NOT NULL,
	[AssetType] [nvarchar](20) NULL,
	[Description] [nvarchar](256) NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdated] [Uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
 CONSTRAINT [PK_AssetTypeId] PRIMARY KEY CLUSTERED 
(
	[AssetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];
