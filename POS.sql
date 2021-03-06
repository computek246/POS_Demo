USE [master]
GO
/****** Object:  Database [POS]    Script Date: 27-Jul-20 10:44:54 PM ******/
CREATE DATABASE [POS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\POS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'POS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\POS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [POS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POS] SET ARITHABORT OFF 
GO
ALTER DATABASE [POS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [POS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [POS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POS] SET RECOVERY FULL 
GO
ALTER DATABASE [POS] SET  MULTI_USER 
GO
ALTER DATABASE [POS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [POS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'POS', N'ON'
GO
ALTER DATABASE [POS] SET QUERY_STORE = OFF
GO
USE [POS]
GO
/****** Object:  Table [dbo].[Comment_Types]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment_Types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Comment_Types] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[FK_Comment_TypeId] [int] NOT NULL,
	[Comment_For_Id] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal_Source]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_Source](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Deal_Source] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deal_Status]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deal_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Deal_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Developers]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Developers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Developers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Person]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Person_Slab]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Person_Slab](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FK_Sales_PersonId] [int] NOT NULL,
	[FK_Units_DetailsId] [int] NOT NULL,
	[Sales_Person_Slab] [decimal](18, 2) NOT NULL,
	[Total_Amount] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Sales_Person_Slab] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units_Details]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[FK_DeveloperId] [int] NULL,
	[Unit_NO] [nvarchar](250) NOT NULL,
	[Unit_Volume] [decimal](18, 2) NOT NULL,
	[FK_Sales_PersonId] [int] NOT NULL,
	[Deal_Slab] [decimal](18, 2) NOT NULL,
	[Commission_Amount] [decimal](18, 2) NOT NULL,
	[Commission_Deduction] [decimal](18, 2) NULL,
	[Total_Commission] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_UnitsDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units_Payments]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units_Payments](
	[Id] [int] NOT NULL,
	[FK_Units_DetailsId] [int] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[PaymentAmount] [numeric](18, 2) NOT NULL,
	[PaymentAmountPercentage] [numeric](18, 2) NOT NULL,
	[CommissionDeduction] [numeric](18, 2) NOT NULL,
	[SalesPersonCommision] [numeric](18, 2) NOT NULL,
	[NetAmountDue] [numeric](18, 2) NOT NULL,
	[UncollectedPercentage] [numeric](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Unit_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units_Status]    Script Date: 27-Jul-20 10:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FK_Units_DetailsId] [int] NOT NULL,
	[FK_Deal_StatusId] [int] NOT NULL,
	[FK_Deal_SourceId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
	[LastModifiedBy] [int] NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Units_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Developers] ON 

INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (1, N'Danube', NULL, 1, 1, CAST(N'2020-07-27T16:26:02.057' AS DateTime), 1, CAST(N'2020-07-27T16:26:02.057' AS DateTime))
INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (2, N'Sharjah Sustainable City', NULL, 1, 1, CAST(N'2020-07-27T16:26:08.980' AS DateTime), 1, CAST(N'2020-07-27T16:26:08.980' AS DateTime))
INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (3, N'Bloom', NULL, 1, 1, CAST(N'2020-07-27T16:26:15.237' AS DateTime), 1, CAST(N'2020-07-27T16:26:15.237' AS DateTime))
INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (4, N'Falcon City', NULL, 1, 1, CAST(N'2020-07-27T16:26:22.827' AS DateTime), 1, CAST(N'2020-07-27T16:26:22.827' AS DateTime))
INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (5, N'Damac', NULL, 1, 1, CAST(N'2020-07-27T16:26:30.577' AS DateTime), 1, CAST(N'2020-07-27T16:26:30.577' AS DateTime))
INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (6, N'Deyaar', NULL, 1, 1, CAST(N'2020-07-27T16:26:37.757' AS DateTime), 1, CAST(N'2020-07-27T16:26:37.757' AS DateTime))
INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (7, N'El Mamsha', NULL, 1, 1, CAST(N'2020-07-27T16:26:45.007' AS DateTime), 1, CAST(N'2020-07-27T16:26:45.007' AS DateTime))
INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (8, N'Nakhily', NULL, 1, 1, CAST(N'2020-07-27T16:26:51.283' AS DateTime), 1, CAST(N'2020-07-27T16:26:51.283' AS DateTime))
INSERT [dbo].[Developers] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (9, N'El Mamsha', NULL, 1, 1, CAST(N'2020-07-27T16:26:59.260' AS DateTime), 1, CAST(N'2020-07-27T16:26:59.260' AS DateTime))
SET IDENTITY_INSERT [dbo].[Developers] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales_Person] ON 

INSERT [dbo].[Sales_Person] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (1, N'Shady', NULL, 1, 1, CAST(N'2020-07-27T16:18:30.000' AS DateTime), 1, CAST(N'2020-07-27T16:24:46.283' AS DateTime))
INSERT [dbo].[Sales_Person] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (2, N'Nazgulia', NULL, 1, 1, CAST(N'2020-07-27T16:24:55.623' AS DateTime), 1, CAST(N'2020-07-27T16:24:55.623' AS DateTime))
INSERT [dbo].[Sales_Person] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (3, N'Mohamed Helmy', NULL, 1, 1, CAST(N'2020-07-27T16:25:08.690' AS DateTime), 1, CAST(N'2020-07-27T16:25:08.690' AS DateTime))
INSERT [dbo].[Sales_Person] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (4, N'Taha', NULL, 1, 1, CAST(N'2020-07-27T16:25:18.793' AS DateTime), 1, CAST(N'2020-07-27T16:25:18.793' AS DateTime))
INSERT [dbo].[Sales_Person] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (5, N'Mohamed Aladrosy', NULL, 1, 1, CAST(N'2020-07-27T16:25:30.673' AS DateTime), 1, CAST(N'2020-07-27T16:25:30.673' AS DateTime))
INSERT [dbo].[Sales_Person] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (6, N'Peter', NULL, 1, 1, CAST(N'2020-07-27T16:25:38.140' AS DateTime), 1, CAST(N'2020-07-27T16:25:38.140' AS DateTime))
INSERT [dbo].[Sales_Person] ([Id], [Name], [Description], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (7, N'Ahmed Alaa', NULL, 1, 1, CAST(N'2020-07-27T16:25:46.067' AS DateTime), 1, CAST(N'2020-07-27T16:25:46.067' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sales_Person] OFF
GO
SET IDENTITY_INSERT [dbo].[Units_Details] ON 

INSERT [dbo].[Units_Details] ([Id], [SaleDate], [FK_DeveloperId], [Unit_NO], [Unit_Volume], [FK_Sales_PersonId], [Deal_Slab], [Commission_Amount], [Commission_Deduction], [Total_Commission], [IsActive], [CreatedBy], [Created], [LastModifiedBy], [LastModified]) VALUES (1, CAST(N'2020-07-27T17:37:41.000' AS DateTime), 5, N'543', CAST(12000.00 AS Decimal(18, 2)), 3, CAST(5.00 AS Decimal(18, 2)), CAST(12000.00 AS Decimal(18, 2)), NULL, CAST(12000.00 AS Decimal(18, 2)), 1, 1, CAST(N'2020-07-27T17:38:08.893' AS DateTime), 1, CAST(N'2020-07-27T17:38:08.893' AS DateTime))
SET IDENTITY_INSERT [dbo].[Units_Details] OFF
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comment_Types] FOREIGN KEY([FK_Comment_TypeId])
REFERENCES [dbo].[Comment_Types] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Comment_Types]
GO
ALTER TABLE [dbo].[Sales_Person_Slab]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Person_Slab_Sales_Person] FOREIGN KEY([FK_Sales_PersonId])
REFERENCES [dbo].[Sales_Person] ([Id])
GO
ALTER TABLE [dbo].[Sales_Person_Slab] CHECK CONSTRAINT [FK_Sales_Person_Slab_Sales_Person]
GO
ALTER TABLE [dbo].[Sales_Person_Slab]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Person_Slab_Units_Details] FOREIGN KEY([FK_Units_DetailsId])
REFERENCES [dbo].[Units_Details] ([Id])
GO
ALTER TABLE [dbo].[Sales_Person_Slab] CHECK CONSTRAINT [FK_Sales_Person_Slab_Units_Details]
GO
ALTER TABLE [dbo].[Units_Details]  WITH CHECK ADD  CONSTRAINT [FK_Units_Details_Developers] FOREIGN KEY([FK_DeveloperId])
REFERENCES [dbo].[Developers] ([Id])
GO
ALTER TABLE [dbo].[Units_Details] CHECK CONSTRAINT [FK_Units_Details_Developers]
GO
ALTER TABLE [dbo].[Units_Details]  WITH CHECK ADD  CONSTRAINT [FK_Units_Details_Sales_Person] FOREIGN KEY([FK_Sales_PersonId])
REFERENCES [dbo].[Sales_Person] ([Id])
GO
ALTER TABLE [dbo].[Units_Details] CHECK CONSTRAINT [FK_Units_Details_Sales_Person]
GO
ALTER TABLE [dbo].[Units_Payments]  WITH CHECK ADD  CONSTRAINT [FK_Units_Payments_Units_Details] FOREIGN KEY([FK_Units_DetailsId])
REFERENCES [dbo].[Units_Details] ([Id])
GO
ALTER TABLE [dbo].[Units_Payments] CHECK CONSTRAINT [FK_Units_Payments_Units_Details]
GO
ALTER TABLE [dbo].[Units_Status]  WITH CHECK ADD  CONSTRAINT [FK_Units_Status_Deal_Source] FOREIGN KEY([FK_Deal_SourceId])
REFERENCES [dbo].[Deal_Source] ([Id])
GO
ALTER TABLE [dbo].[Units_Status] CHECK CONSTRAINT [FK_Units_Status_Deal_Source]
GO
ALTER TABLE [dbo].[Units_Status]  WITH CHECK ADD  CONSTRAINT [FK_Units_Status_Deal_Status] FOREIGN KEY([FK_Deal_StatusId])
REFERENCES [dbo].[Deal_Status] ([Id])
GO
ALTER TABLE [dbo].[Units_Status] CHECK CONSTRAINT [FK_Units_Status_Deal_Status]
GO
ALTER TABLE [dbo].[Units_Status]  WITH CHECK ADD  CONSTRAINT [FK_Units_Status_Units_Details] FOREIGN KEY([FK_Units_DetailsId])
REFERENCES [dbo].[Units_Details] ([Id])
GO
ALTER TABLE [dbo].[Units_Status] CHECK CONSTRAINT [FK_Units_Status_Units_Details]
GO
USE [master]
GO
ALTER DATABASE [POS] SET  READ_WRITE 
GO
