USE [master]
GO
/****** Object:  Database [CounterIncreaserDB]    Script Date: 04/21/2017 11:41:02 ******/
CREATE DATABASE [CounterIncreaserDB] ON  PRIMARY 
( NAME = N'CounterIncreaserDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CounterIncreaserDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CounterIncreaserDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CounterIncreaserDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CounterIncreaserDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CounterIncreaserDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CounterIncreaserDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET ARITHABORT OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CounterIncreaserDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CounterIncreaserDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CounterIncreaserDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [CounterIncreaserDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CounterIncreaserDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CounterIncreaserDB] SET  READ_WRITE
GO
ALTER DATABASE [CounterIncreaserDB] SET RECOVERY FULL
GO
ALTER DATABASE [CounterIncreaserDB] SET  MULTI_USER
GO
ALTER DATABASE [CounterIncreaserDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CounterIncreaserDB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'CounterIncreaserDB', N'ON'
GO
USE [CounterIncreaserDB]
GO
/****** Object:  Table [dbo].[CounterInformation]    Script Date: 04/21/2017 11:41:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CounterInformation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CurrentNumber] [int] NOT NULL,
	[NumberAfterAdded] [int] NOT NULL,
	[Status] [varchar](10) NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_CounterInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CounterInformation] ON
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (2, 1, 2, N'Success', CAST(0x0000A75C00BC1118 AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (3, 1, 2, N'Success', CAST(0x0000A75C00BC6D21 AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (4, 2, 3, N'Success', CAST(0x0000A75C00BC728C AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (5, 3, 4, N'Success', CAST(0x0000A75C00BC856C AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (6, 4, 5, N'Success', CAST(0x0000A75C00BC85DE AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (7, 5, 6, N'Success', CAST(0x0000A75C00BC8616 AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (8, 6, 7, N'Success', CAST(0x0000A75C00BC87A1 AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (9, 7, 8, N'Success', CAST(0x0000A75C00BC8842 AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (10, 8, 9, N'Success', CAST(0x0000A75C00BC88D7 AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (11, 9, 10, N'Success', CAST(0x0000A75C00BC8962 AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (12, 10, 0, N'Failed', CAST(0x0000A75C00BC8BAA AS DateTime))
INSERT [dbo].[CounterInformation] ([ID], [CurrentNumber], [NumberAfterAdded], [Status], [Date]) VALUES (13, 10, 0, N'Failed', CAST(0x0000A75C00BC8EB8 AS DateTime))
SET IDENTITY_INSERT [dbo].[CounterInformation] OFF
/****** Object:  StoredProcedure [dbo].[spIncrementLog]    Script Date: 04/21/2017 11:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spIncrementLog]
(
@CurrentNumber	int,
@NumberAfterAdded	int,
@Status varchar(10)
)
AS
BEGIN
	SET NOCOUNT ON;  
	
	insert into [CounterInformation] ([CurrentNumber]
      ,[NumberAfterAdded]
      ,[Status],Date)
      values (@CurrentNumber,@NumberAfterAdded,@Status,GETDATE())
	
			
	
END
GO
