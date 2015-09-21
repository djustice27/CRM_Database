CREATE TABLE [dbo].[Campaign](
	[CampaignId] [int] IDENTITY(1,1) NOT NULL,
	[CampaignTypeId] [int] NOT NULL,
	[CampaignNumber] [nvarchar](50) NULL,
	[CampaignCode] [nvarchar](50) NULL,
	[CampaignName] [nvarchar](50) NULL,
	[CampaignShortName] [nvarchar](10) NULL,
	[Description] [nvarchar](256) NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
	 CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED 
(
	[CampaignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY], 
    CONSTRAINT [FK_Campaign_CampaignType] FOREIGN KEY ([CampaignTypeId]) REFERENCES [CampaignType]([CampaignTypeId]),
    CONSTRAINT [FK_Campaign_User] FOREIGN KEY ([UserUpdatedId]) REFERENCES [User]([UserId])
) ON [PRIMARY];

GO

CREATE NONCLUSTERED INDEX [IX_CampaignTypeId] ON [dbo].[Campaign]
(
	[CampaignTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

