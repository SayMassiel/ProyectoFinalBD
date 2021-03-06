
/*Say Massiel Meran Mejia   ||   16-SIIT-1-076   ||   0541
  Frandy G. Reyes           ||   16-SIIT-1-032   ||   0541
  Bismar De Leon            ||   16-SIIT-1-030   ||   0541*/

USE [master]
GO
/****** Object:  Database [BDFinal3]    Script Date: 11/04/2018 13:26:47 ******/
CREATE DATABASE [BDFinal3]

USE [BDFinal3]
GO
/****** Object:  Table [dbo].[Despachos]    Script Date: 11/04/2018 13:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despachos](
	[Numero_Despacho] [int] NOT NULL,
	[Capacidad] [int] NULL,
 CONSTRAINT [PK_Despachos] PRIMARY KEY CLUSTERED 
(
	[Numero_Despacho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Directores]    Script Date: 11/04/2018 13:26:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Directores](
	[DNI_Director] [varchar](50) NOT NULL,
	[Nombre_Apellidos] [nvarchar](50) NULL,
	[DNI_Jefe] [varchar](50) NULL,
	[Numero_Despacho] [int] NULL,
 CONSTRAINT [PK_Directores] PRIMARY KEY CLUSTERED 
(
	[DNI_Director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (1, 25000)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (2, 24500)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (3, 24000)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (4, 23500)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (5, 23000)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (6, 22500)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (7, 22000)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (8, 21500)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (9, 21000)
INSERT [dbo].[Despachos] ([Numero_Despacho], [Capacidad]) VALUES (10, 20500)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director1', N'Leandro Gutierrez', N'Director10', 10)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director10', N'Pedro Vilches', N'Director1', 1)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director2', N'Miguel Ureña', N'Director9', 9)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director3', N'Nuria Saviñon', N'Director8', 8)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director4', N'Saviel Peralta', N'Director7', 7)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director5', N'Rolando Crespo', N'Director6', 6)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director6', N'Madi Milander', N'Director5', 5)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director7', N'Flor Ruiz', N'Director4', 4)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director8', N'Soraida Diaz', N'Director3', 3)
INSERT [dbo].[Directores] ([DNI_Director], [Nombre_Apellidos], [DNI_Jefe], [Numero_Despacho]) VALUES (N'Director9', N'Cristian Martine', N'Director2', 2)
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Directores_Despachos] FOREIGN KEY([Numero_Despacho])
REFERENCES [dbo].[Despachos] ([Numero_Despacho])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Directores_Despachos]
GO
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Directores_Directores] FOREIGN KEY([DNI_Jefe])
REFERENCES [dbo].[Directores] ([DNI_Director])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Directores_Directores]
GO
USE [master]
GO
ALTER DATABASE [BDFinal3] SET  READ_WRITE 
GO
