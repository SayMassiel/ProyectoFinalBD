
/*Say Massiel Meran Mejia   ||   16-SIIT-1-076   ||   0541
  Frandy G. Reyes           ||   16-SIIT-1-032   ||   0541
  Bismar De Leon            ||   16-SIIT-1-030   ||   0541*/

USE [master]
GO
/****** Object:  Database [BDFinal1]    Script Date: 11/04/2018 13:02:18 ******/
CREATE DATABASE [BDFinal1]

USE [BDFinal1]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 11/04/2018 13:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Codigo_Pelicula] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Clasificacion_Edad] [int] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Codigo_Pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salas]    Script Date: 11/04/2018 13:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Codigo_Sala] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Codigo_Pelicula] [int] NULL,
 CONSTRAINT [PK_Salas] PRIMARY KEY CLUSTERED 
(
	[Codigo_Sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (1, N'Deadpool', 10)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (2, N'El Torneo', 9)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (3, N'Los Ilusionistas', 8)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (4, N'Quija', 7)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (5, N'Panda 3', 6)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (6, N'Las Tortugas', 5)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (7, N'La Redada', 4)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (8, N'Ted', 3)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (9, N'The Conjuring', 2)
INSERT [dbo].[Peliculas] ([Codigo_Pelicula], [Nombre], [Clasificacion_Edad]) VALUES (10, N'Civil War', 1)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (1, N'Room 1', 10)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (2, N'Room 2', 9)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (3, N'Room 3', 8)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (4, N'Room 4', 7)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (5, N'Room 5', 6)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (6, N'Room 6', 5)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (7, N'Room 7', 4)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (8, N'Room 8', 3)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (9, N'Room 9', 2)
INSERT [dbo].[Salas] ([Codigo_Sala], [Nombre], [Codigo_Pelicula]) VALUES (10, N'Room 10', 1)
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FK_Salas_Peliculas] FOREIGN KEY([Codigo_Pelicula])
REFERENCES [dbo].[Peliculas] ([Codigo_Pelicula])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FK_Salas_Peliculas]
GO
USE [master]
GO
ALTER DATABASE [BDFinal1] SET  READ_WRITE 
GO
