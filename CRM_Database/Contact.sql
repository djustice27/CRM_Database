CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[ContactTypeId] [int] NOT NULL,
	[ContactSourceId] [int] NULL,
	[ContactNumber]	[nvarchar](50) NULL,
	[ContactCode] [nvarchar](50) NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactShortName] [nvarchar](10) NULL,
	[Description] [nvarchar](256) NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
	 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY], 
    CONSTRAINT [FK_Contact_ContactType] FOREIGN KEY ([ContactTypeId]) REFERENCES [ContactType]([ContactTypeId]),
    CONSTRAINT [FK_Contact_User] FOREIGN KEY ([UserUpdatedId]) REFERENCES [User]([UserId])
) ON [PRIMARY];

GO

CREATE NONCLUSTERED INDEX [IX_ContactTypeId] ON [dbo].[Contact]
(
	[ContactTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

