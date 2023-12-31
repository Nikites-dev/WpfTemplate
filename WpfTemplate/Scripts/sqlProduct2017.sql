USE [Template]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 27.12.2023 0:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[IdMaterial] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Count] [int] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[IdMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27.12.2023 0:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[IdProductType] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 27.12.2023 0:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[IdProductType] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[StorageDate] [int] NULL,
	[ExpireDate] [int] NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[IdProductType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recept]    Script Date: 27.12.2023 0:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recept](
	[IdRecept] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NULL,
	[IdMaterial] [int] NULL,
	[MaterialCount] [int] NULL,
 CONSTRAINT [PK_Recept] PRIMARY KEY CLUSTERED 
(
	[IdRecept] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27.12.2023 0:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 27.12.2023 0:24:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[IdRole] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([IdMaterial], [Name], [Count]) VALUES (1, N'Железо    ', 44)
INSERT [dbo].[Material] ([IdMaterial], [Name], [Count]) VALUES (2, N'Золото    ', 30)
INSERT [dbo].[Material] ([IdMaterial], [Name], [Count]) VALUES (3, N'Дерево    ', 36)
INSERT [dbo].[Material] ([IdMaterial], [Name], [Count]) VALUES (4, N'Веревка   ', 0)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (1, 1, CAST(N'1900-04-11T00:00:00.000' AS DateTime), N'Стул')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (2, 1, CAST(N'1901-01-01T00:00:00.000' AS DateTime), N'Лук')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (3, 2, CAST(N'1900-12-17T00:00:00.000' AS DateTime), N'Меч')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (4, 3, CAST(N'1900-04-11T00:00:00.000' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (5, 3, CAST(N'2023-12-27T00:10:35.920' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (6, 3, CAST(N'2023-12-27T00:10:35.977' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (7, 3, CAST(N'2023-12-27T00:10:35.980' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (8, 3, CAST(N'2023-12-27T00:10:35.980' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (9, 3, CAST(N'2023-12-27T00:10:35.980' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (10, 3, CAST(N'2023-12-27T00:10:35.980' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (11, 3, CAST(N'2023-12-27T00:10:35.980' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (12, 3, CAST(N'2023-12-27T00:10:35.983' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (13, 3, CAST(N'2023-12-27T00:10:35.983' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (14, 3, CAST(N'2023-12-27T00:10:35.983' AS DateTime), N'Верстак')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (15, 3, CAST(N'2023-12-27T00:21:07.610' AS DateTime), N'Железный меч')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (16, 3, CAST(N'2023-12-27T00:21:07.673' AS DateTime), N'Железный меч')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (17, 3, CAST(N'2023-12-27T00:21:10.210' AS DateTime), N'Железный меч')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (18, 3, CAST(N'2023-12-27T00:21:10.210' AS DateTime), N'Железный меч')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (19, 3, CAST(N'2023-12-27T00:21:21.210' AS DateTime), N'Железный меч')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (20, 3, CAST(N'2023-12-27T00:21:56.987' AS DateTime), N'Железный меч')
INSERT [dbo].[Product] ([IdProduct], [IdProductType], [CreateDate], [Name]) VALUES (21, 3, CAST(N'2023-12-27T00:21:56.987' AS DateTime), N'Железный меч')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([IdProductType], [ProductName], [StorageDate], [ExpireDate]) VALUES (1, N'Стул', 123, 123)
INSERT [dbo].[ProductType] ([IdProductType], [ProductName], [StorageDate], [ExpireDate]) VALUES (2, N'Верстак', 43, 34)
INSERT [dbo].[ProductType] ([IdProductType], [ProductName], [StorageDate], [ExpireDate]) VALUES (3, N'Железный меч', 56, 67)
INSERT [dbo].[ProductType] ([IdProductType], [ProductName], [StorageDate], [ExpireDate]) VALUES (4, N'Золотой меч', 45, 56)
INSERT [dbo].[ProductType] ([IdProductType], [ProductName], [StorageDate], [ExpireDate]) VALUES (5, N'Лук', 78, 67)
INSERT [dbo].[ProductType] ([IdProductType], [ProductName], [StorageDate], [ExpireDate]) VALUES (6, N'Железная броня', 45, 56)
INSERT [dbo].[ProductType] ([IdProductType], [ProductName], [StorageDate], [ExpireDate]) VALUES (7, N'Золотая броня', 45, 34)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Recept] ON 

INSERT [dbo].[Recept] ([IdRecept], [IdProduct], [IdMaterial], [MaterialCount]) VALUES (1, 1, 4, 10)
INSERT [dbo].[Recept] ([IdRecept], [IdProduct], [IdMaterial], [MaterialCount]) VALUES (2, 1, 2, 1)
INSERT [dbo].[Recept] ([IdRecept], [IdProduct], [IdMaterial], [MaterialCount]) VALUES (3, 2, 4, 15)
INSERT [dbo].[Recept] ([IdRecept], [IdProduct], [IdMaterial], [MaterialCount]) VALUES (4, 3, 3, 4)
INSERT [dbo].[Recept] ([IdRecept], [IdProduct], [IdMaterial], [MaterialCount]) VALUES (5, 4, 1, 2)
INSERT [dbo].[Recept] ([IdRecept], [IdProduct], [IdMaterial], [MaterialCount]) VALUES (6, 4, 4, 1)
SET IDENTITY_INSERT [dbo].[Recept] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([IdRole], [Name]) VALUES (1, N'Кладовщик')
INSERT [dbo].[Role] ([IdRole], [Name]) VALUES (2, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IdUser], [Name], [Login], [Password], [IdRole]) VALUES (1, N'Вупсень', N'q', N'q', 1)
INSERT [dbo].[User] ([IdUser], [Name], [Login], [Password], [IdRole]) VALUES (2, N'Пупсень', N'a', N'a', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([IdProductType])
REFERENCES [dbo].[ProductType] ([IdProductType])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[Recept]  WITH CHECK ADD  CONSTRAINT [FK_Recept_Material] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([IdMaterial])
GO
ALTER TABLE [dbo].[Recept] CHECK CONSTRAINT [FK_Recept_Material]
GO
ALTER TABLE [dbo].[Recept]  WITH CHECK ADD  CONSTRAINT [FK_Recept_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Recept] CHECK CONSTRAINT [FK_Recept_Product]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
