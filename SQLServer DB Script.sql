USE [WebAPIDB]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
USE [master]
GO


IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'WebAPIDB')
DROP DATABASE [WebAPIDB]
GO


IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'WebAPIDB')
BEGIN
CREATE DATABASE [WebAPIDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebAPIDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLE2012\MSSQL\DATA\WebAPIDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebAPIDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLE2012\MSSQL\DATA\WebAPIDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [WebAPIDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebAPIDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebAPIDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebAPIDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebAPIDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebAPIDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebAPIDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebAPIDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebAPIDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WebAPIDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebAPIDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebAPIDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebAPIDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebAPIDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebAPIDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebAPIDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebAPIDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebAPIDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebAPIDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebAPIDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebAPIDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebAPIDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebAPIDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebAPIDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebAPIDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebAPIDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebAPIDB] SET  MULTI_USER 
GO
ALTER DATABASE [WebAPIDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebAPIDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebAPIDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebAPIDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WebAPIDB]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[EmpCode] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Office] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [WebAPIDB] SET  READ_WRITE 
GO
