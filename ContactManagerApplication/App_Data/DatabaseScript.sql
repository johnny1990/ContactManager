CREATE TABLE [dbo].[Addresses] (
    [ID] INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NULL,
    [City]      NVARCHAR (MAX) NULL,
    [PostalCode]   NVARCHAR (10)     NOT NULL,
    CONSTRAINT [PK_dbo.Addresses] PRIMARY KEY CLUSTERED ([ID] ASC)
);

CREATE TABLE [dbo].[Contacts] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]   NVARCHAR (MAX) NULL,
    [LastName]    NVARCHAR (MAX) NULL,
    [DateOfBirth] DATETIME       NOT NULL,
    [Email]       NVARCHAR (MAX) NULL,
    [PhoneNumber] FLOAT (53)     NOT NULL,
    [AddressID]   INT            NOT NULL,
    CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_dbo.Contacts_dbo.Addresses_ID] FOREIGN KEY ([AddressID]) REFERENCES [dbo].[Addresses] ([ID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ID]
    ON [dbo].[Contacts]([ID] ASC);

