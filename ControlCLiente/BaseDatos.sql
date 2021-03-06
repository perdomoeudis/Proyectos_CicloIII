USE [ControlCliente]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/11/2018 10:07:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[iClienteId] [int] IDENTITY(1,1) NOT NULL,
	[vNombre] [varchar](50) NULL,
	[vDireccion] [varchar](250) NULL,
	[vRUC] [varchar](11) NULL,
	[vTelefono] [varchar](12) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[iClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 23/11/2018 10:07:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyecto](
	[iProyectoId] [int] NULL,
	[vNombre] [varchar](100) NULL,
	[vNombreCorto] [varchar](50) NULL,
	[vDescripcion] [varchar](250) NULL,
	[iClienteId] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 
GO
INSERT [dbo].[Cliente] ([iClienteId], [vNombre], [vDireccion], [vRUC], [vTelefono]) VALUES (2, N'ISAT', N'Javier Prado', N'321654654', N'64567897987')
GO
INSERT [dbo].[Cliente] ([iClienteId], [vNombre], [vDireccion], [vRUC], [vTelefono]) VALUES (3, N'ISAT', N'Ricardo Palma', N'234234', N'64567897987')
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
