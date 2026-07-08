USE [master]
GO
/****** Object:  Database [AlbumVirtual]    Script Date: 7/7/2026 09:02:39 ******/
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
/****** Object:  User [alumno]    Script Date: 7/7/2026 09:02:39 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Figuritas]    Script Date: 7/7/2026 09:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Figuritas](
	[idFigurita] [int] IDENTITY(1,1) NOT NULL,
	[idJugador] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Figuritas] PRIMARY KEY CLUSTERED 
(
	[idFigurita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 7/7/2026 09:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[idJugador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[foto] [varchar](50) NOT NULL,
	[idSeleccion] [int] NOT NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[idJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selecciones]    Script Date: 7/7/2026 09:02:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selecciones](
	[idSeleccion] [int] IDENTITY(1,1) NOT NULL,
	[nombrePais] [varchar](50) NOT NULL,
	[grupo] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Selecciones] PRIMARY KEY CLUSTERED 
(
	[idSeleccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Selecciones] ON 

INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (1, N'Mexico', N'A')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (2, N'Sudafrica', N'A')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (3, N'Corea del Sur', N'A')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (4, N'Czechia', N'A')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (5, N'Canada', N'B')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (6, N'Bosnia y Herzegovina', N'B')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (7, N'Qatar', N'B')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (8, N'Suiza', N'B')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (9, N'Brasil', N'C')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (10, N'Marruecos', N'C')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (11, N'Haiti', N'C')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (12, N'Escocia', N'C')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (13, N'Estados Unidos', N'D')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (14, N'Paraguay', N'D')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (15, N'Australia', N'D')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (16, N'Turquia', N'D')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (17, N'Alemania', N'E')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (18, N'Curazao', N'E')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (19, N'Costa De Marfil', N'E')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (20, N'Ecuador', N'E')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (21, N'Paises Bajos', N'F')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (22, N'Japon', N'F')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (23, N'Suecia', N'F')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (24, N'Tunez', N'F')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (25, N'Belgica', N'G')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (26, N'Egipto', N'G')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (27, N'Iran', N'G')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (28, N'Nueva Zelanda', N'G')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (29, N'España', N'H')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (30, N'Cabo Verde', N'H')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (31, N'Arabia Saudita', N'H')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (32, N'Uruguay', N'H')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (33, N'Francia', N'I')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (34, N'Senegal', N'I')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (35, N'Irak', N'I')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (36, N'Noruega', N'I')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (37, N'Argentina', N'J')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (38, N'Argelia', N'J')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (39, N'Austria', N'J')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (40, N'Jordania', N'J')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (41, N'Portugal', N'K')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (42, N'Republica Democratica del Congo', N'K')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (43, N'Uzbekistan', N'K')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (44, N'Colombia', N'K')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (45, N'Inglaterra', N'L')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (46, N'Croacia', N'L')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (47, N'Ghana', N'L')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (48, N'Panama', N'L')
SET IDENTITY_INSERT [dbo].[Selecciones] OFF
GO
ALTER TABLE [dbo].[Figuritas]  WITH CHECK ADD  CONSTRAINT [FK_Figuritas_Jugadores] FOREIGN KEY([idJugador])
REFERENCES [dbo].[Jugadores] ([idJugador])
GO
ALTER TABLE [dbo].[Figuritas] CHECK CONSTRAINT [FK_Figuritas_Jugadores]
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_Selecciones] FOREIGN KEY([idSeleccion])
REFERENCES [dbo].[Selecciones] ([idSeleccion])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_Selecciones]
GO
USE [master]
GO
ALTER DATABASE [AlbumVirtual] SET  READ_WRITE 
GO
