USE [MultiLanguageBlog]
GO
/****** Object:  Table [dbo].[Dil]    Script Date: 26.05.2020 22:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DilAdi] [nvarchar](max) NULL,
	[DilKodu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Makale]    Script Date: 26.05.2020 22:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Makale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[DilId] [int] NULL,
 CONSTRAINT [PK_Makale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dil] ON 

INSERT [dbo].[Dil] ([Id], [DilAdi], [DilKodu]) VALUES (1, N'Türkçe', N'tr-TR')
INSERT [dbo].[Dil] ([Id], [DilAdi], [DilKodu]) VALUES (2, N'İngilizce', N'en-US')
SET IDENTITY_INSERT [dbo].[Dil] OFF
SET IDENTITY_INSERT [dbo].[Makale] ON 

INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (1, N'Başlık 1', N'İçerik 1', 1)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (2, N'Title 1', N'Content 1', 2)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (3, N'Başlık 2', N'İçerik 2', 1)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (4, N'Başlık 3', N'İçerik 3', 1)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (5, N'Başlık 4', N'İçerik 4', 1)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (6, N'Başlık 5', N'İçerik 5', 1)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (7, N'Başlık 6', N'İçerik 6', 1)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (8, N'Başlık 7', N'İçerik 7', 1)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (9, N'Başlık 8', N'İçerik 8', 1)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (10, N'Title 2', N'Content 2', 2)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (11, N'Title 3', N'Content 3', 2)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (12, N'Title 4', N'Content 4', 2)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (13, N'Title 5', N'Content 5', 2)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (14, N'Title 6', N'Content 6', 2)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (15, N'Title 7', N'Content 7', 2)
INSERT [dbo].[Makale] ([Id], [Baslik], [Aciklama], [DilId]) VALUES (16, N'Title 8', N'Content 8', 2)
SET IDENTITY_INSERT [dbo].[Makale] OFF
