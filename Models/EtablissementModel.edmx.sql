
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/31/2021 14:15:24
-- Generated from EDMX file: C:\Users\ISSAM\Desktop\Web Cote Serveur\TP\Asp.net MVC TP 9\Models\EtablissementModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Etablaissement];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Eleves'
CREATE TABLE [dbo].[Eleves] (
    [Id_Eleve] int IDENTITY(1,1) NOT NULL,
    [Nom] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Notes'
CREATE TABLE [dbo].[Notes] (
    [Id_Mat] int IDENTITY(1,1) NOT NULL,
    [Note1] decimal(18,0)  NOT NULL,
    [Note2] decimal(18,0)  NOT NULL,
    [Id_Eleve] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id_Eleve] in table 'Eleves'
ALTER TABLE [dbo].[Eleves]
ADD CONSTRAINT [PK_Eleves]
    PRIMARY KEY CLUSTERED ([Id_Eleve] ASC);
GO

-- Creating primary key on [Id_Mat] in table 'Notes'
ALTER TABLE [dbo].[Notes]
ADD CONSTRAINT [PK_Notes]
    PRIMARY KEY CLUSTERED ([Id_Mat] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Id_Eleve] in table 'Notes'
ALTER TABLE [dbo].[Notes]
ADD CONSTRAINT [FK_EleveNote]
    FOREIGN KEY ([Id_Eleve])
    REFERENCES [dbo].[Eleves]
        ([Id_Eleve])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EleveNote'
CREATE INDEX [IX_FK_EleveNote]
ON [dbo].[Notes]
    ([Id_Eleve]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------