USE [master]
GO
/****** Object:  Database [BD_Login+Registro]    Script Date: 3/10/2023 09:01:44 ******/
CREATE DATABASE [BD_Login+Registro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_Login+Registro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_Login+Registro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_Login+Registro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD_Login+Registro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD_Login+Registro] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Login+Registro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_Login+Registro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_Login+Registro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_Login+Registro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_Login+Registro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_Login+Registro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_Login+Registro] SET  MULTI_USER 
GO
ALTER DATABASE [BD_Login+Registro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_Login+Registro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_Login+Registro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_Login+Registro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_Login+Registro] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_Login+Registro', N'ON'
GO
ALTER DATABASE [BD_Login+Registro] SET QUERY_STORE = OFF
GO
USE [BD_Login+Registro]
GO
/****** Object:  User [alumno]    Script Date: 3/10/2023 09:01:44 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 3/10/2023 09:01:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Contrasenia] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [BD_Login+Registro] SET  READ_WRITE 
GO
