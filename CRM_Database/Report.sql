CREATE TABLE [dbo].[Report](
	[ReportId] [int] IDENTITY(1,1) NOT NULL,
	[ReportName] [varchar](100) NOT NULL,
	[ReportTitle] [varchar] (100) NOT NULL,
	[ReportPath] [varchar] (100) NOT NULL,
	[Index] [int] NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
	 CONSTRAINT [PK_ReportId] PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
    CONSTRAINT [FK_Report_User] FOREIGN KEY ([UserUpdatedId]) REFERENCES [User]([UserId])
) ON [PRIMARY];
