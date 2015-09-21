CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[AccountTypeId] [int] NOT NULL,
	[AccountOwnerId] [int] NULL,
	[AccountSiteId] [int] NULL,
	[AccountSourceId] [int] NULL,
	[AccountIndustryId] [int] NULL,
	[AccountNumber]	[nvarchar](50) NULL,
	[AccountCode] [nvarchar](50) NULL,
	[AccountName] [nvarchar](50) NULL,
	[AccountShortName] [nvarchar](10) NULL,
	[Description] [nvarchar](256) NULL,
	[TaxPayerId] [nvarchar](20) NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] INT NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
	 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY], 
    CONSTRAINT [FK_Account_AccountType] FOREIGN KEY ([AccountTypeId]) REFERENCES [AccountType]([AccountTypeId]),
    CONSTRAINT [FK_Account_User] FOREIGN KEY ([UserUpdatedId]) REFERENCES [User]([UserId])
) ON [PRIMARY];

GO

CREATE NONCLUSTERED INDEX [IX_AccountTypeId] ON [dbo].[Account]
(
	[AccountTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

