USE [master]
GO
/****** Object:  Database [AlbumVirtual]    Script Date: 14/7/2026 08:20:22 ******/
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
/****** Object:  User [alumno]    Script Date: 14/7/2026 08:20:22 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Figuritas]    Script Date: 14/7/2026 08:20:22 ******/
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
/****** Object:  Table [dbo].[Jugadores]    Script Date: 14/7/2026 08:20:22 ******/
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
/****** Object:  Table [dbo].[Selecciones]    Script Date: 14/7/2026 08:20:22 ******/
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
SET IDENTITY_INSERT [dbo].[Figuritas] ON 

INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (1, 1, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (2, 2, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (3, 3, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (4, 4, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (5, 5, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (6, 6, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (7, 7, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (8, 8, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (9, 9, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (10, 10, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (11, 11, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (12, 12, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (13, 13, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (14, 14, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (15, 15, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (16, 16, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (17, 17, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (18, 18, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (19, 19, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (20, 20, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (21, 21, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (22, 22, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (23, 23, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (24, 24, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (25, 25, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (26, 26, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (27, 27, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (28, 28, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (29, 29, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (30, 30, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (31, 31, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (32, 32, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (33, 33, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (34, 34, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (35, 35, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (36, 36, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (37, 37, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (38, 38, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (39, 39, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (40, 40, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (41, 41, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (42, 42, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (43, 43, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (44, 44, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (45, 45, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (46, 46, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (47, 47, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (48, 48, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (49, 49, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (50, 50, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (51, 51, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (52, 52, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (53, 53, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (54, 54, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (55, 55, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (56, 56, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (57, 57, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (58, 58, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (59, 59, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (60, 60, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (61, 61, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (62, 62, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (63, 63, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (64, 64, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (65, 65, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (66, 66, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (67, 67, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (68, 68, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (69, 69, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (70, 70, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (71, 71, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (72, 72, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (73, 73, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (74, 74, 0)
INSERT [dbo].[Figuritas] ([idFigurita], [idJugador], [cantidad]) VALUES (75, 75, 0)
SET IDENTITY_INSERT [dbo].[Figuritas] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugadores] ON 

INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (1, N'MESSI', N'messi.svg', 11)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (2, N'ÁLVAREZ', N'alvarez.svg', 11)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (3, N'E. MARTÍNEZ', N'emiliano.svg', 11)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (4, N'FERNÁNDEZ', N'enzo.svg', 11)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (5, N'ROMERO', N'romero.svg', 11)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (6, N'NEYMAR', N'neymar.svg', 3)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (7, N'VINICIUS', N'vinicius.svg', 3)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (8, N'ALISSON', N'alisson.svg', 3)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (9, N'CASEMIRO', N'casemiro.svg', 3)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (10, N'MARQUINHOS', N'marquinhos.svg', 3)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (11, N'PEDRI', N'pedri.svg', 7)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (12, N'GAVI', N'gavi.svg', 7)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (13, N'UNAI SIMÓN', N'unai.svg', 7)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (14, N'FERRAN', N'ferran.svg', 7)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (15, N'PAU TORRES', N'pau.svg', 7)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (16, N'MBAPPÉ', N'mbappe.svg', 9)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (17, N'GRIEZMANN', N'griezmann.svg', 9)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (18, N'LLORIS', N'lloris.svg', 9)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (19, N'CAMAVINGA', N'camavinga.svg', 9)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (20, N'VARANE', N'varane.svg', 9)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (21, N'MÜLLER', N'muller.svg', 4)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (22, N'KIMMICH', N'kimmich.svg', 4)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (23, N'NEUER', N'neuer.svg', 4)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (24, N'HAVERTZ', N'havertz.svg', 4)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (25, N'RÜDIGER', N'rudiger.svg', 4)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (26, N'KANE', N'kane.svg', 15)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (27, N'SAKA', N'saka.svg', 15)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (28, N'PICKFORD', N'pickford.svg', 15)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (29, N'BELLINGHAM', N'bellingham.svg', 15)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (30, N'MAGUIRE', N'maguire.svg', 15)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (31, N'VASILJ', N'vasilj.svg', 1)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (32, N'DZEKO', N'dzeko.svg', 1)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (33, N'MUHAREMOVIC', N'muharemovic.svg', 1)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (34, N'DEDIC', N'dedic.svg', 1)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (35, N'KOLASINAC', N'kolasinac.svg', 1)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (36, N'VOZINHA', N'vozinha.svg', 8)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (37, N'BORGES', N'borges.svg', 8)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (38, N'PINA', N'pina.svg', 8)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (39, N'BENCHIMOL', N'benchimol.svg', 8)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (40, N'RODRIGUEZ', N'rodriguez.svg', 8)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (41, N'SHOMURODOV', N'shomurodov.svg', 14)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (42, N'KARIMOV', N'karimov.svg', 14)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (43, N'MOZGOVOY', N'mozgovoy.svg', 14)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (44, N'URUNOV', N'urunov.svg', 14)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (45, N'YUSUPOV', N'yusupov.svg', 14)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (46, N'FOFANA', N'fofana.svg', 5)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (47, N'DIALLO', N'diallo.svg', 5)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (48, N'Y. DIOMANDÉ', N'diomandé.svg', 5)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (49, N'ADINGRA', N'adingra.svg', 5)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (50, N'NDICKA', N'ndicka.svg', 5)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (51, N'MPASI', N'mpasi.svg', 13)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (52, N'KAKUTA', N'kakuta.svg', 13)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (53, N'MBUKU', N'mbuku.svg', 13)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (54, N'MAYELE', N'mayele.svg', 13)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (55, N'WISSA', N'wissa.svg', 13)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (56, N'ABUNADA', N'abunada.svg', 2)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (57, N'MENDES', N'mendes.svg', 2)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (58, N'HATEM', N'hatem.svg', 2)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (59, N'ALI', N'ali.svg', 2)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (60, N'JAMSHID', N'jamshid.svg', 2)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (61, N'ZETTERSTRÖM', N'zetterstrom.svg', 6)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (62, N'ELANGA', N'elanga.svg', 6)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (63, N'GYÖKERES', N'gyokeres.svg', 6)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (64, N'LINDELÖF', N'lindelof.svg', 6)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (65, N'BERNHARDSSON', N'bernhardsson.svg', 6)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (66, N'NYLAND', N'nyland.svg', 10)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (67, N'ØDEGAARD', N'odegaard.svg', 10)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (68, N'HAALAND', N'haaland.svg', 10)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (69, N'NUSA', N'nusa.svg', 10)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (70, N'BOBB', N'bobb.svg', 10)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (71, N'ZIDANE', N'zidane.svg', 12)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (72, N'MAZA', N'maza.svg', 12)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (73, N'MANDI', N'mandi.svg', 12)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (74, N'BOUDAOUI', N'boudaoui.svg', 12)
INSERT [dbo].[Jugadores] ([idJugador], [nombre], [foto], [idSeleccion]) VALUES (75, N'GOUIRI', N'gouiri.svg', 12)
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
GO
SET IDENTITY_INSERT [dbo].[Selecciones] ON 

INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (1, N'Bosnia y Herzegovina', N'B')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (2, N'Qatar', N'B')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (3, N'Brasil', N'C')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (4, N'Alemania', N'E')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (5, N'Costa De Marfil', N'E')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (6, N'Suecia', N'F')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (7, N'España', N'H')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (8, N'Cabo Verde', N'H')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (9, N'Francia', N'I')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (10, N'Noruega', N'I')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (11, N'Argentina', N'J')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (12, N'Argelia', N'J')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (13, N'Republica Democratica del Congo', N'K')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (14, N'Uzbekistan', N'K')
INSERT [dbo].[Selecciones] ([idSeleccion], [nombrePais], [grupo]) VALUES (15, N'Inglaterra', N'L')
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
