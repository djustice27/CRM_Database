CREATE TABLE [dbo].[NoteType](
	[NoteTypeId] [int] IDENTITY(1,1) NOT NULL,
	[NoteType] [nvarchar](20) NULL,
	[Description] [nvarchar](256) NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
 CONSTRAINT [PK_NoteTypeId] PRIMARY KEY CLUSTERED 
(
	[NoteTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];
