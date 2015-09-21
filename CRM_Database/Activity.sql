CREATE TABLE [dbo].[Activity](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityTypeId] [int] NOT NULL,
	[ActivityNumber] [nvarchar](50) NULL,
	[ActivityCode] [nvarchar](50) NULL,
	[ActivityName] [nvarchar](50) NULL,
	[ActivityShortName] [nvarchar](10) NULL,
	[Description] [nvarchar](256) NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
	 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY], 
    CONSTRAINT [FK_Activity_ActivityType] FOREIGN KEY ([ActivityTypeId]) REFERENCES [ActivityType]([ActivityTypeId]),
    CONSTRAINT [FK_Activity_User] FOREIGN KEY ([UserUpdatedId]) REFERENCES [User]([UserId])
) ON [PRIMARY];

GO

CREATE INDEX [IX_ActivityTypeId] ON [dbo].[Activity] ([ActivityTypeId])
