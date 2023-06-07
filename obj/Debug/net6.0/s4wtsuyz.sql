IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Usuarios] (
    [Id] int NOT NULL IDENTITY,
    [NombreUser] varchar(15) NOT NULL,
    [Clave] varchar(15) NOT NULL,
    [estado] bit NOT NULL,
    CONSTRAINT [PK_Usuarios] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230607132527_Initial', N'6.0.14');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230607135926_v1', N'6.0.14');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

ALTER TABLE [Usuarios] ADD [GeneroId] int NOT NULL DEFAULT 0;
GO

CREATE TABLE [Genero] (
    [Id] int NOT NULL IDENTITY,
    [nombre] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Genero] PRIMARY KEY ([Id])
);
GO

CREATE INDEX [IX_Usuarios_GeneroId] ON [Usuarios] ([GeneroId]);
GO

ALTER TABLE [Usuarios] ADD CONSTRAINT [FK_Usuarios_Genero_GeneroId] FOREIGN KEY ([GeneroId]) REFERENCES [Genero] ([Id]) ON DELETE CASCADE;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230607143421_Initial2', N'6.0.14');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230607151108_var1', N'6.0.14');
GO

COMMIT;
GO

