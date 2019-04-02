
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/02/2019 18:10:45
-- Generated from EDMX file: E:\MIT\5120\Project\FamiliyGo\FamilyGo\FamilyGo\Models\FamilyGoModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FamilyGoDB];
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

-- Creating table 'Activities'
CREATE TABLE [dbo].[Activities] (
    [ActivityId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Places'
CREATE TABLE [dbo].[Places] (
    [PlaceId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Facility] nvarchar(max)  NOT NULL,
    [Lat] nvarchar(max)  NOT NULL,
    [Lon] nvarchar(max)  NOT NULL,
    [Suburb] nvarchar(max)  NOT NULL,
    [ActivityActivityId] int  NOT NULL
);
GO

-- Creating table 'Games'
CREATE TABLE [dbo].[Games] (
    [GameId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ActivityId] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [PK_Activities]
    PRIMARY KEY CLUSTERED ([ActivityId] ASC);
GO

-- Creating primary key on [PlaceId] in table 'Places'
ALTER TABLE [dbo].[Places]
ADD CONSTRAINT [PK_Places]
    PRIMARY KEY CLUSTERED ([PlaceId] ASC);
GO

-- Creating primary key on [GameId] in table 'Games'
ALTER TABLE [dbo].[Games]
ADD CONSTRAINT [PK_Games]
    PRIMARY KEY CLUSTERED ([GameId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ActivityActivityId] in table 'Places'
ALTER TABLE [dbo].[Places]
ADD CONSTRAINT [FK_ActivityPlace]
    FOREIGN KEY ([ActivityActivityId])
    REFERENCES [dbo].[Activities]
        ([ActivityId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivityPlace'
CREATE INDEX [IX_FK_ActivityPlace]
ON [dbo].[Places]
    ([ActivityActivityId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------