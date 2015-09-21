CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY], 
    CONSTRAINT [FK_User_UserType] FOREIGN KEY ([UserTypeId]) REFERENCES [UserType]([UserTypeId]), 
    CONSTRAINT [FK_User_User] FOREIGN KEY ([UserUpdatedId]) REFERENCES [User]([UserId])
) ON [PRIMARY];
