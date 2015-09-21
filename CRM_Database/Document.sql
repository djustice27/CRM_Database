CREATE TABLE [dbo].[Document](
	[DocumentId] [int] IDENTITY(1,1) NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[DocumentOwnerId] [int] NULL,
	[DocumentNumber] [nvarchar](50) NULL,
	[DocumentCode] [nvarchar](50) NULL,
	[DocumentName] [nvarchar](50) NULL,
	[Document] [varbinary](max) FILESTREAM NULL,
	[Description] [nvarchar](256) NULL,
	[DateUpdated] [datetime] NOT NULL,
	[UserUpdatedId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0x1,
	 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY], 
    CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY ([DocumentTypeId]) REFERENCES [DocumentType]([DocumentTypeId])
) ON [PRIMARY];

GO

CREATE NONCLUSTERED INDEX [IX_DocumentTypeId] ON [dbo].[Document]
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

