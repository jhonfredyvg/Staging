USE [staging076_093_094]
GO
/****** Object:  Table [dbo].[Categoria_producto]    Script Date: 5/05/2024 4:53:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_producto](
	[Id_Categoria] [int] NOT NULL,
	[Desc_Categoria] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 5/05/2024 4:53:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[ID_cliente] [int] NOT NULL,
	[apellido_contacto] [nvarchar](30) NULL,
	[nombre_contacto] [nvarchar](30) NULL,
	[telefono] [nvarchar](15) NULL,
	[linea_direccion1] [nvarchar](50) NULL,
	[ciudad] [nvarchar](50) NULL,
	[pais] [nvarchar](50) NULL,
	[ID_empleado_rep_ventas] [int] NULL,
	[limite_credito] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_pedido]    Script Date: 5/05/2024 4:53:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_pedido](
	[ID_pedido] [int] NOT NULL,
	[ID_producto] [nvarchar](15) NOT NULL,
	[cantidad] [int] NULL,
	[precio_unidad] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_pedido] ASC,
	[ID_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 5/05/2024 4:53:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[ID_empleado] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido1] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[ID_oficina] [int] NULL,
	[ID_jefe] [int] NULL,
	[puesto] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oficina]    Script Date: 5/05/2024 4:53:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oficina](
	[ID_oficina] [int] NOT NULL,
	[Descripcion] [nvarchar](10) NULL,
	[ciudad] [nvarchar](30) NULL,
	[pais] [nvarchar](50) NULL,
	[telefono] [nvarchar](20) NULL,
	[linea_direccion1] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_oficina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 5/05/2024 4:53:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[ID_cliente] [int] NOT NULL,
	[id_transaccion] [nvarchar](50) NOT NULL,
	[fecha_pago] [date] NULL,
	[total] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_cliente] ASC,
	[id_transaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 5/05/2024 4:53:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[ID_pedido] [int] NOT NULL,
	[fecha_pedido] [date] NULL,
	[fecha_entrega] [date] NULL,
	[estado] [nvarchar](15) NULL,
	[ID_cliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 5/05/2024 4:53:23 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[ID_producto] [nvarchar](15) NOT NULL,
	[nombre] [nvarchar](70) NULL,
	[Categoria] [int] NULL,
	[proveedor] [nvarchar](50) NULL,
	[cantidad_en_stock] [smallint] NULL,
	[precio_venta] [numeric](15, 2) NULL,
	[precio_proveedor] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categoria_producto] ([Id_Categoria], [Desc_Categoria]) VALUES (1, N'Herbaceas')
INSERT [dbo].[Categoria_producto] ([Id_Categoria], [Desc_Categoria]) VALUES (2, N'Herramientas')
INSERT [dbo].[Categoria_producto] ([Id_Categoria], [Desc_Categoria]) VALUES (3, N'AromÃ¡ticas')
INSERT [dbo].[Categoria_producto] ([Id_Categoria], [Desc_Categoria]) VALUES (4, N'Frutales')
INSERT [dbo].[Categoria_producto] ([Id_Categoria], [Desc_Categoria]) VALUES (5, N'Ornamentales')
GO
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (1, N'GoldFish', N'Daniel G', N'5556901745', N'False Street 52 2 A', N'San Francisco', N'USA', 19, CAST(3000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (2, N'Wright', N'Anne', N'5557410345', N'Wall-e Avenue', N'Miami', N'USA', 19, CAST(6000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (3, N'Flaute', N'Link', N'5552323129', N'Oaks Avenue nÂº22', N'New York', N'USA', 22, CAST(12000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (4, N'Tendo', N'Akane', N'55591233210', N'Null Street nÂº69', N'Miami', N'USA', 22, CAST(600000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (5, N'Lasas', N'Antonio', N'34916540145', N'C/Leganes 15', N'Fuenlabrada', N'Spain', 8, CAST(154310.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (6, N'Bermejo', N'Jose', N'654987321', N'C/pintor segundo', N'Madrid', N'Spain', 11, CAST(20000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (7, N'Lopez', N'Paco', N'62456810', N'C/sinesio delgado', N'Madrid', N'Spain', 11, CAST(40000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (8, N'Rengifo', N'Guillermo', N'689234750', N'C/majadahonda', N'Madrid', N'Spain', 11, CAST(32000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (9, N'Serrano', N'David', N'675598001', N'C/azores', N'Madrid', N'Spain', 11, CAST(50000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (10, N'TacaÃ±o', N'Jose', N'655983045', N'C/LagaÃ±as', N'Madrid', N'Spain', 11, CAST(20000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (11, N'Lasas', N'Antonio', N'34916540145', N'C/Leganes 15', N'Fuenlabrada', N'Spain', 8, CAST(154310.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (12, N'Camunas', N'Pedro', N'34914873241', N'C/Virgenes 45', N'San Lorenzo del Escorial', N'Spain', 8, CAST(16481.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (13, N'Rodriguez', N'Juan', N'34912453217', N'C/Nueva York 74', N'Madrid', N'Spain', 8, CAST(321000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (14, N'Villar', N'Javier', N'654865643', N'C/ OÃ±a 34', N'Madrid', N'Spain', 30, CAST(40000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (15, N'Rodriguez', N'Maria', N'666555444', N'C/Leganes24', N'Fuenlabrada', N'Spain', 5, CAST(1500.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (16, N'Fernandez', N'Beatriz', N'698754159', N'C/Luis Salquillo4', N'Montornes del valles', N'Spain', 5, CAST(3500.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (17, N'Cruz', N'Victoria', N'612343529', N'Plaza MagallÃ³n 15', N'Madrid', N'Spain', 30, CAST(5050.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (18, N'Martinez', N'Luis', N'916458762', N'C/Estancado', N'Santa cruz de Tenerife', N'Spain', 12, CAST(30000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (19, N'Suarez', N'Mario', N'964493072', N'C/Letardo', N'Barcelona', N'Spain', 12, CAST(20000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (20, N'Rodrigez', N'Cristian', N'916485852', N'C/Roman 3', N'Canarias', N'Spain', 12, CAST(50000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (21, N'Camacho', N'Francisco', N'916882323', N'Avenida Tibidabo', N'Barcelona', N'Spain', 12, CAST(30000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (22, N'Santillana', N'Maria', N'915576622', N'C/Paseo del Parque', N'Sotogrande', N'Spain', 12, CAST(60000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (23, N'Gomez', N'Federico', N'654987690', N'C/Miguel Echegaray 54', N'Humanes', N'Spain', 30, CAST(7430.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (24, N'MuÃ±oz Mena', N'Tony', N'675842139', N'C/Callo 52', N'Fuenlabrada', N'Spain', 5, CAST(4500.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (25, N'SÃ¡nchez', N'Eva MarÃ­a', N'916877445', N'PolÃ­gono Industrial Maspalomas, NÂº52', N'Madrid', N'Spain', 9, CAST(76000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (26, N'San MartÃ­n', N'MatÃ­as', N'916544147', N'C/Francisco Arce, NÂº44', N'Madrid', N'Spain', 9, CAST(100500.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (27, N'Lopez', N'Benito', N'675432926', N'C/Mar Caspio 43', N'Getafe', N'Spain', 30, CAST(8040.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (28, N'Sanchez', N'Joseluis', N'685746512', N'C/Ibiza 32', N'Humanes', N'Spain', 5, CAST(5500.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (29, N'Marquez', N'Sara', N'675124537', N'C/Lima 1', N'Fuenlabrada', N'Spain', 5, CAST(7500.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (30, N'Jimenez', N'Luis', N'645925376', N'C/Peru 78', N'Fuenlabrada', N'Spain', 30, CAST(3250.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (31, N'Toulou', N'FraÃƒÂ§ois', N'(33)5120578961', N'6 place d Alleray 15ÃƒÂ¨me', N'Paris', N'France', 16, CAST(10000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (32, N'Delacroux', N'Pierre', N'(33)0140205050', N'Quai du Louvre', N'Paris', N'France', 16, CAST(30000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (33, N'Jones', N'Jacob', N'2 9261-2433', N'level 24, St. Martins Tower.-31 Market St.', N'Sydney', N'Australia', 31, CAST(10000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (34, N'Romero', N'Antonio', N'654352981', N'Avenida EspaÃ±a', N'Madrid', N'Spain', 18, CAST(6000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (35, N'Mcain', N'Richard', N'926523468', N'Lihgting Park', N'London', N'United Kingdom', 18, CAST(10000.00 AS Numeric(15, 2)))
INSERT [dbo].[cliente] ([ID_cliente], [apellido_contacto], [nombre_contacto], [telefono], [linea_direccion1], [ciudad], [pais], [ID_empleado_rep_ventas], [limite_credito]) VALUES (36, N'Smith', N'Justin', N'2 8005-7161', N'176 Cumberland Street The rocks', N'Sydney', N'Australia', 31, CAST(8000.00 AS Numeric(15, 2)))
GO
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (1, N'Marcos', N'MagaÃ±a', N'marcos@jardineria.es', 8, NULL, N'Director General')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (2, N'Ruben', N'LÃ³pez', N'rlopez@jardineria.es', 8, 1, N'Subdirector Marketing')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (3, N'Alberto', N'Soria', N'asoria@jardineria.es', 8, 2, N'Subdirector Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (4, N'Maria', N'SolÃ­s', N'msolis@jardineria.es', 8, 2, N'Secretaria')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (5, N'Felipe', N'Rosas', N'frosas@jardineria.es', 8, 3, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (6, N'Juan Carlos', N'Ortiz', N'cortiz@jardineria.es', 8, 3, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (7, N'Carlos', N'Soria', N'csoria@jardineria.es', 4, 3, N'Director Oficina')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (8, N'Mariano', N'LÃ³pez', N'mlopez@jardineria.es', 4, 7, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (9, N'Lucio', N'Campoamor', N'lcampoamor@jardineria.es', 4, 7, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (10, N'Hilario', N'Rodriguez', N'hrodriguez@jardineria.es', 4, 7, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (11, N'Emmanuel', N'MagaÃ±a', N'manu@jardineria.es', 1, 3, N'Director Oficina')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (12, N'JosÃ© Manuel', N'Martinez', N'jmmart@hotmail.es', 1, 11, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (13, N'David', N'Palma', N'dpalma@jardineria.es', 1, 11, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (14, N'Oscar', N'Palma', N'opalma@jardineria.es', 1, 11, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (15, N'Francois', N'Fignon', N'ffignon@gardening.com', 5, 3, N'Director Oficina')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (16, N'Lionel', N'Narvaez', N'lnarvaez@gardening.com', 5, 15, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (17, N'Laurent', N'Serra', N'lserra@gardening.com', 5, 15, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (18, N'Michael', N'Bolton', N'mbolton@gardening.com', 6, 3, N'Director Oficina')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (19, N'Walter Santiago', N'Sanchez', N'wssanchez@gardening.com', 6, 18, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (20, N'Hilary', N'Washington', N'hwashington@gardening.com', 2, 3, N'Director Oficina')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (21, N'Marcus', N'Paxton', N'mpaxton@gardening.com', 2, 20, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (22, N'Lorena', N'Paxton', N'lpaxton@gardening.com', 2, 20, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (23, N'Nei', N'Nishikori', N'nnishikori@gardening.com', 9, 3, N'Director Oficina')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (24, N'Narumi', N'Riko', N'nriko@gardening.com', 9, 23, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (25, N'Takuma', N'Nomura', N'tnomura@gardening.com', 9, 23, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (26, N'Amy', N'Johnson', N'ajohnson@gardening.com', 3, 3, N'Director Oficina')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (27, N'Larry', N'Westfalls', N'lwestfalls@gardening.com', 3, 26, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (28, N'John', N'Walton', N'jwalton@gardening.com', 3, 26, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (29, N'Kevin', N'Fallmer', N'kfalmer@gardening.com', 7, 3, N'Director Oficina')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (30, N'Julian', N'Bellinelli', N'jbellinelli@gardening.com', 7, 29, N'Representante Ventas')
INSERT [dbo].[empleado] ([ID_empleado], [nombre], [apellido1], [email], [ID_oficina], [ID_jefe], [puesto]) VALUES (31, N'Mariko', N'Kishi', N'mkishi@gardening.com', 7, 29, N'Representante Ventas')
GO
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (1, N'BCN-ES', N'Barcelona', N'EspaÃ±a', N'+34 93 3561182', N'Avenida Diagonal, 38')
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (2, N'BOS-USA', N'Boston', N'EEUU', N'+1 215 837 0825', N'1550 Court Place')
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (3, N'LON-UK', N'Londres', N'Inglaterra', N'+44 20 78772041', N'52 Old Broad Street')
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (4, N'MAD-ES', N'Madrid', N'EspaÃ±a', N'+34 91 7514487', N'Bulevar Indalecio Prieto, 32')
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (5, N'PAR-FR', N'Paris', N'Francia', N'+33 14 723 4404', N'29 Rue Jouffroy d''abbans')
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (6, N'SFC-USA', N'San Francisco', N'EEUU', N'+1 650 219 4782', N'100 Market Street')
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (7, N'SYD-AU', N'Sydney', N'Australia', N'+61 2 9264 2451', N'5-11 Wentworth Avenue')
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (8, N'TAL-ES', N'Talavera de la Reina', N'EspaÃ±a', N'+34 925 867231', N'Francisco Aguirre, 32')
INSERT [dbo].[oficina] ([ID_oficina], [Descripcion], [ciudad], [pais], [telefono], [linea_direccion1]) VALUES (9, N'TOK-JP', N'Tokyo', N'JapÃ³n', N'+81 33 224 5000', N'4-1 Kioicho')
GO
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (1, CAST(N'2006-01-17' AS Date), CAST(N'2006-01-19' AS Date), N'Entregado', 5)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (2, CAST(N'2007-10-23' AS Date), CAST(N'2007-10-26' AS Date), N'Entregado', 5)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (3, CAST(N'2008-06-20' AS Date), NULL, N'Rechazado', 5)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (4, CAST(N'2009-01-20' AS Date), NULL, N'Pendiente', 5)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (5, CAST(N'2008-11-09' AS Date), CAST(N'2008-11-14' AS Date), N'Entregado', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (6, CAST(N'2008-12-22' AS Date), CAST(N'2008-12-28' AS Date), N'Entregado', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (7, CAST(N'2009-01-15' AS Date), NULL, N'Pendiente', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (8, CAST(N'2009-01-20' AS Date), NULL, N'Pendiente', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (9, CAST(N'2009-01-22' AS Date), NULL, N'Pendiente', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (10, CAST(N'2009-01-12' AS Date), CAST(N'2009-01-15' AS Date), N'Entregado', 7)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (11, CAST(N'2009-01-02' AS Date), NULL, N'Rechazado', 7)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (12, CAST(N'2009-01-09' AS Date), CAST(N'2009-01-11' AS Date), N'Entregado', 7)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (13, CAST(N'2009-01-06' AS Date), CAST(N'2009-01-15' AS Date), N'Entregado', 7)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (14, CAST(N'2009-01-08' AS Date), CAST(N'2009-01-11' AS Date), N'Entregado', 7)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (15, CAST(N'2009-01-05' AS Date), CAST(N'2009-01-07' AS Date), N'Entregado', 9)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (16, CAST(N'2009-01-18' AS Date), NULL, N'Pendiente', 9)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (17, CAST(N'2009-01-20' AS Date), NULL, N'Pendiente', 9)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (18, CAST(N'2009-01-09' AS Date), CAST(N'2009-01-09' AS Date), N'Rechazado', 9)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (19, CAST(N'2009-01-11' AS Date), CAST(N'2009-01-13' AS Date), N'Entregado', 9)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (20, CAST(N'2008-12-30' AS Date), NULL, N'Rechazado', 5)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (21, CAST(N'2008-07-14' AS Date), CAST(N'2008-07-25' AS Date), N'Entregado', 14)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (22, CAST(N'2009-02-02' AS Date), NULL, N'Rechazado', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (23, CAST(N'2009-02-06' AS Date), NULL, N'Rechazado', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (24, CAST(N'2009-02-07' AS Date), NULL, N'Entregado', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (25, CAST(N'2009-02-10' AS Date), CAST(N'2009-02-20' AS Date), N'Entregado', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (26, CAST(N'2008-08-01' AS Date), CAST(N'2008-09-01' AS Date), N'Rechazado', 14)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (27, CAST(N'2008-08-03' AS Date), CAST(N'2008-08-31' AS Date), N'Entregado', 13)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (28, CAST(N'2008-09-04' AS Date), CAST(N'2008-10-04' AS Date), N'Rechazado', 13)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (29, CAST(N'2007-01-07' AS Date), CAST(N'2007-01-27' AS Date), N'Entregado', 4)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (30, CAST(N'2007-05-20' AS Date), NULL, N'Rechazado', 4)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (31, CAST(N'2007-06-20' AS Date), CAST(N'2008-06-28' AS Date), N'Entregado', 4)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (32, CAST(N'2008-03-10' AS Date), NULL, N'Rechazado', 4)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (33, CAST(N'2008-10-15' AS Date), CAST(N'2008-12-10' AS Date), N'Entregado', 14)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (34, CAST(N'2008-11-03' AS Date), NULL, N'Pendiente', 4)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (35, CAST(N'2009-03-05' AS Date), CAST(N'2009-03-07' AS Date), N'Entregado', 19)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (36, CAST(N'2009-03-06' AS Date), CAST(N'2009-03-09' AS Date), N'Pendiente', 19)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (37, CAST(N'2009-03-09' AS Date), CAST(N'2009-03-13' AS Date), N'Rechazado', 19)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (38, CAST(N'2009-03-12' AS Date), CAST(N'2009-03-13' AS Date), N'Entregado', 19)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (39, CAST(N'2009-03-22' AS Date), CAST(N'2009-03-27' AS Date), N'Entregado', 19)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (40, CAST(N'2009-03-25' AS Date), CAST(N'2009-03-28' AS Date), N'Pendiente', 23)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (41, CAST(N'2009-03-26' AS Date), CAST(N'2009-03-30' AS Date), N'Pendiente', 23)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (42, CAST(N'2009-04-01' AS Date), CAST(N'2009-03-07' AS Date), N'Entregado', 23)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (43, CAST(N'2009-04-03' AS Date), CAST(N'2009-03-05' AS Date), N'Rechazado', 23)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (44, CAST(N'2009-04-15' AS Date), CAST(N'2009-03-17' AS Date), N'Entregado', 23)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (45, CAST(N'2008-03-17' AS Date), CAST(N'2008-03-29' AS Date), N'Entregado', 26)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (46, CAST(N'2008-07-12' AS Date), CAST(N'2008-07-30' AS Date), N'Entregado', 26)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (47, CAST(N'2008-03-17' AS Date), NULL, N'Pendiente', 26)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (48, CAST(N'2008-10-01' AS Date), CAST(N'2008-10-14' AS Date), N'Entregado', 26)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (49, CAST(N'2008-12-07' AS Date), NULL, N'Pendiente', 26)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (50, CAST(N'2008-10-15' AS Date), CAST(N'2008-11-09' AS Date), N'Entregado', 13)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (51, CAST(N'2009-01-11' AS Date), NULL, N'Pendiente', 14)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (52, CAST(N'2008-12-10' AS Date), CAST(N'2009-01-11' AS Date), N'Entregado', 14)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (53, CAST(N'2008-12-19' AS Date), NULL, N'Rechazado', 13)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (54, CAST(N'2009-01-05' AS Date), NULL, N'Pendiente', 13)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (55, CAST(N'2009-01-24' AS Date), CAST(N'2009-01-30' AS Date), N'Entregado', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (56, CAST(N'2008-11-09' AS Date), CAST(N'2008-11-14' AS Date), N'Entregado', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (57, CAST(N'2008-12-22' AS Date), CAST(N'2008-12-28' AS Date), N'Entregado', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (58, CAST(N'2009-01-15' AS Date), NULL, N'Pendiente', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (59, CAST(N'2009-01-20' AS Date), NULL, N'Pendiente', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (60, CAST(N'2009-01-22' AS Date), NULL, N'Pendiente', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (61, CAST(N'2009-01-24' AS Date), CAST(N'2009-01-30' AS Date), N'Entregado', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (62, CAST(N'2009-02-02' AS Date), NULL, N'Rechazado', 1)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (63, CAST(N'2009-02-06' AS Date), NULL, N'Rechazado', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (64, CAST(N'2009-02-07' AS Date), NULL, N'Entregado', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (65, CAST(N'2009-02-10' AS Date), CAST(N'2009-02-20' AS Date), N'Entregado', 3)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (66, CAST(N'2009-01-14' AS Date), NULL, N'Rechazado', 15)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (67, CAST(N'2009-01-11' AS Date), CAST(N'2009-01-13' AS Date), N'Entregado', 15)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (68, CAST(N'2008-11-15' AS Date), CAST(N'2008-11-23' AS Date), N'Entregado', 15)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (69, CAST(N'2009-01-03' AS Date), NULL, N'Pendiente', 15)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (70, CAST(N'2008-12-15' AS Date), CAST(N'2008-12-17' AS Date), N'Entregado', 15)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (71, CAST(N'2009-01-12' AS Date), CAST(N'2009-01-13' AS Date), N'Entregado', 28)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (72, CAST(N'2009-01-25' AS Date), NULL, N'Pendiente', 28)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (73, CAST(N'2009-01-18' AS Date), NULL, N'Rechazado', 28)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (74, CAST(N'2009-01-20' AS Date), CAST(N'2009-01-29' AS Date), N'Entregado', 28)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (75, CAST(N'2009-01-24' AS Date), NULL, N'Entregado', 28)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (76, CAST(N'2007-10-05' AS Date), CAST(N'2007-12-10' AS Date), N'Entregado', 35)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (77, CAST(N'2009-02-07' AS Date), NULL, N'Pendiente', 27)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (78, CAST(N'2009-03-18' AS Date), CAST(N'2009-03-27' AS Date), N'Entregado', 27)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (79, CAST(N'2009-04-19' AS Date), CAST(N'2009-05-03' AS Date), N'Entregado', 27)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (80, CAST(N'2009-05-03' AS Date), CAST(N'2009-05-17' AS Date), N'Entregado', 27)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (81, CAST(N'2009-10-18' AS Date), NULL, N'Pendiente', 27)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (82, CAST(N'2008-01-04' AS Date), CAST(N'2008-01-19' AS Date), N'Entregado', 35)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (83, CAST(N'2008-03-20' AS Date), CAST(N'2008-04-13' AS Date), N'Entregado', 35)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (84, CAST(N'2008-10-08' AS Date), CAST(N'2008-11-25' AS Date), N'Entregado', 35)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (85, CAST(N'2009-01-08' AS Date), NULL, N'Pendiente', 35)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (86, CAST(N'2009-02-15' AS Date), NULL, N'Pendiente', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (87, CAST(N'2009-01-10' AS Date), CAST(N'2009-01-15' AS Date), N'Entregado', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (88, CAST(N'2009-03-07' AS Date), NULL, N'Rechazado', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (89, CAST(N'2008-12-28' AS Date), CAST(N'2009-01-08' AS Date), N'Entregado', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (90, CAST(N'2009-01-15' AS Date), CAST(N'2009-01-24' AS Date), N'Pendiente', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (91, CAST(N'2009-03-02' AS Date), CAST(N'2009-03-06' AS Date), N'Entregado', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (92, CAST(N'2009-02-14' AS Date), NULL, N'Rechazado', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (93, CAST(N'2009-05-13' AS Date), CAST(N'2009-05-20' AS Date), N'Pendiente', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (94, CAST(N'2009-04-06' AS Date), CAST(N'2009-04-10' AS Date), N'Entregado', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (95, CAST(N'2009-04-09' AS Date), CAST(N'2009-04-15' AS Date), N'Entregado', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (98, CAST(N'2008-03-05' AS Date), CAST(N'2008-03-30' AS Date), N'Entregado', 36)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (99, CAST(N'2009-03-05' AS Date), CAST(N'2009-05-07' AS Date), N'Pendiente', 36)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (100, CAST(N'2008-10-28' AS Date), CAST(N'2009-01-09' AS Date), N'Rechazado', 36)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (101, CAST(N'2009-01-15' AS Date), CAST(N'2009-01-31' AS Date), N'Entregado', 36)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (102, CAST(N'2008-11-29' AS Date), CAST(N'2009-02-27' AS Date), N'Pendiente', 36)
GO
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (105, CAST(N'2009-02-15' AS Date), NULL, N'Pendiente', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (106, CAST(N'2009-01-10' AS Date), CAST(N'2009-01-15' AS Date), N'Entregado', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (107, CAST(N'2009-03-07' AS Date), NULL, N'Rechazado', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (108, CAST(N'2008-12-28' AS Date), CAST(N'2009-01-08' AS Date), N'Entregado', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (109, CAST(N'2009-04-09' AS Date), CAST(N'2009-04-15' AS Date), N'Entregado', 16)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (110, CAST(N'2009-01-15' AS Date), CAST(N'2009-01-24' AS Date), N'Pendiente', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (111, CAST(N'2009-03-02' AS Date), CAST(N'2009-03-06' AS Date), N'Entregado', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (112, CAST(N'2009-02-14' AS Date), NULL, N'Rechazado', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (113, CAST(N'2009-05-13' AS Date), CAST(N'2009-05-20' AS Date), N'Pendiente', 30)
INSERT [dbo].[pedido] ([ID_pedido], [fecha_pedido], [fecha_entrega], [estado], [ID_cliente]) VALUES (114, CAST(N'2009-04-06' AS Date), CAST(N'2009-04-10' AS Date), N'Entregado', 30)
GO
INSERT [dbo].[producto] ([ID_producto], [nombre], [Categoria], [proveedor], [cantidad_en_stock], [precio_venta], [precio_proveedor]) VALUES (N'11679', N'Sierra de Poda 400MM', 2, N'HiperGarden Tools', 15, CAST(14.00 AS Numeric(15, 2)), CAST(11.00 AS Numeric(15, 2)))
GO
ALTER TABLE [dbo].[cliente]  WITH NOCHECK ADD FOREIGN KEY([ID_empleado_rep_ventas])
REFERENCES [dbo].[empleado] ([ID_empleado])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([ID_pedido])
REFERENCES [dbo].[pedido] ([ID_pedido])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([ID_producto])
REFERENCES [dbo].[producto] ([ID_producto])
GO
ALTER TABLE [dbo].[empleado]  WITH NOCHECK ADD FOREIGN KEY([ID_jefe])
REFERENCES [dbo].[empleado] ([ID_empleado])
GO
ALTER TABLE [dbo].[empleado]  WITH NOCHECK ADD FOREIGN KEY([ID_oficina])
REFERENCES [dbo].[oficina] ([ID_oficina])
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[pedido]  WITH NOCHECK ADD FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[producto]  WITH NOCHECK ADD FOREIGN KEY([Categoria])
REFERENCES [dbo].[Categoria_producto] ([Id_Categoria])
GO
