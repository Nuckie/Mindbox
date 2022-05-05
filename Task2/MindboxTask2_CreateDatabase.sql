USE [master]
GO
/****** Object:  Database [Mindbox]    Script Date: 05.05.2022 19:05:15 ******/
CREATE DATABASE [Mindbox]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mindbox', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Mindbox.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mindbox_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Mindbox_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Mindbox] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mindbox].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mindbox] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mindbox] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mindbox] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mindbox] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mindbox] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mindbox] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mindbox] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mindbox] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mindbox] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mindbox] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mindbox] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mindbox] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mindbox] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mindbox] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mindbox] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mindbox] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mindbox] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mindbox] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mindbox] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mindbox] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mindbox] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mindbox] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mindbox] SET RECOVERY FULL 
GO
ALTER DATABASE [Mindbox] SET  MULTI_USER 
GO
ALTER DATABASE [Mindbox] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mindbox] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mindbox] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mindbox] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mindbox] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mindbox] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Mindbox', N'ON'
GO
ALTER DATABASE [Mindbox] SET QUERY_STORE = OFF
GO
USE [Mindbox]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05.05.2022 19:05:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.05.2022 19:05:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 05.05.2022 19:05:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Электроника')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Портативная электроника')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Скидки')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [Name]) VALUES (1, N'Телевизор')
GO
INSERT [dbo].[Product] ([Id], [Name]) VALUES (2, N'Микроволновая печь')
GO
INSERT [dbo].[Product] ([Id], [Name]) VALUES (3, N'Ноутбук')
GO
INSERT [dbo].[Product] ([Id], [Name]) VALUES (4, N'Холодильник')
GO
INSERT [dbo].[Product] ([Id], [Name]) VALUES (5, N'Мобильный телефон')
GO
INSERT [dbo].[Product] ([Id], [Name]) VALUES (6, N'Фен')
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (2, 2, 1)
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (3, 3, 1)
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (4, 4, 1)
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (5, 5, 1)
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (6, 3, 2)
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (7, 5, 2)
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (8, 2, 3)
GO
INSERT [dbo].[ProductCategory] ([Id], [ProductId], [CategoryId]) VALUES (9, 4, 3)
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Category]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Product]
GO
USE [master]
GO
ALTER DATABASE [Mindbox] SET  READ_WRITE 
GO
