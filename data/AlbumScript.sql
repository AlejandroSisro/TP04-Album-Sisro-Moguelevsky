USE [master]
GO
/****** Object:  Database [AlbumVirtual]    Script Date: 30/6/2026 08:32:10 ******/
CREATE DATABASE [AlbumVirtual]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AlbumVirtual', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AlbumVirtual.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AlbumVirtual_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AlbumVirtual_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AlbumVirtual] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AlbumVirtual].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AlbumVirtual] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AlbumVirtual] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AlbumVirtual] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AlbumVirtual] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AlbumVirtual] SET ARITHABORT OFF 
GO
ALTER DATABASE [AlbumVirtual] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AlbumVirtual] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AlbumVirtual] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AlbumVirtual] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AlbumVirtual] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AlbumVirtual] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AlbumVirtual] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AlbumVirtual] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AlbumVirtual] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AlbumVirtual] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AlbumVirtual] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AlbumVirtual] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AlbumVirtual] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AlbumVirtual] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AlbumVirtual] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AlbumVirtual] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AlbumVirtual] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AlbumVirtual] SET RECOVERY FULL 
GO
ALTER DATABASE [AlbumVirtual] SET  MULTI_USER 
GO
ALTER DATABASE [AlbumVirtual] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AlbumVirtual] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AlbumVirtual] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AlbumVirtual] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AlbumVirtual] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AlbumVirtual', N'ON'
GO
ALTER DATABASE [AlbumVirtual] SET QUERY_STORE = OFF
GO
USE [AlbumVirtual]
GO
/****** Object:  User [alumno]    Script Date: 30/6/2026 08:32:10 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 30/6/2026 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fkFiguritas] [int] NOT NULL,
	[fkGrupos] [int] NOT NULL,
	[fkSelecciones] [int] NOT NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Figuritas]    Script Date: 30/6/2026 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Figuritas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fkJugadores] [int] NOT NULL,
	[fkSeleccion] [int] NOT NULL,
 CONSTRAINT [PK_Figuritas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 30/6/2026 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[numeroCamiseta] [int] NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[fkPais] [int] NOT NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selecciones]    Script Date: 30/6/2026 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selecciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombrePais] [varchar](50) NOT NULL,
	[fkJugador] [int] NOT NULL,
	[fkGrupo] [int] NOT NULL,
 CONSTRAINT [PK_Selecciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sobres]    Script Date: 30/6/2026 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sobres](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fkFiguritas] [int] NOT NULL,
	[cantidadFiguritas] [int] NOT NULL,
 CONSTRAINT [PK_Sobres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 30/6/2026 08:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[fkAlbum] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Figuritas] FOREIGN KEY([fkFiguritas])
REFERENCES [dbo].[Figuritas] ([id])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Figuritas]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Grupos] FOREIGN KEY([fkGrupos])
REFERENCES [dbo].[Grupos] ([id])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Grupos]
GO
ALTER TABLE [dbo].[Selecciones]  WITH CHECK ADD  CONSTRAINT [FK_Selecciones_Grupos] FOREIGN KEY([fkGrupo])
REFERENCES [dbo].[Grupos] ([id])
GO
ALTER TABLE [dbo].[Selecciones] CHECK CONSTRAINT [FK_Selecciones_Grupos]
GO
ALTER TABLE [dbo].[Selecciones]  WITH CHECK ADD  CONSTRAINT [FK_Selecciones_Jugadores] FOREIGN KEY([fkJugador])
REFERENCES [dbo].[Jugadores] ([id])
GO
ALTER TABLE [dbo].[Selecciones] CHECK CONSTRAINT [FK_Selecciones_Jugadores]
GO
ALTER TABLE [dbo].[Sobres]  WITH CHECK ADD  CONSTRAINT [FK_Sobres_Figuritas] FOREIGN KEY([fkFiguritas])
REFERENCES [dbo].[Figuritas] ([id])
GO
ALTER TABLE [dbo].[Sobres] CHECK CONSTRAINT [FK_Sobres_Figuritas]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Album] FOREIGN KEY([fkAlbum])
REFERENCES [dbo].[Album] ([id])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Album]
GO
USE [master]
GO
ALTER DATABASE [AlbumVirtual] SET  READ_WRITE 
GO
