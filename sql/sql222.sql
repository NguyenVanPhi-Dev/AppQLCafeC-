USE [QLQUANCAFE]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/27/2020 4:02:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[PassWorld] [nvarchar](1000) NOT NULL DEFAULT ((0)),
	[DisplayName] [nvarchar](100) NOT NULL,
	[Type] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BAN]    Script Date: 10/27/2020 4:02:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Status] [nvarchar](100) NOT NULL DEFAULT (N'Trống'),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 10/27/2020 4:02:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NOT NULL,
	[IdFood] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Danhmuc]    Script Date: 10/27/2020 4:02:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhmuc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Food]    Script Date: 10/27/2020 4:02:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[IdDanhmuc] [int] NOT NULL,
	[giaban] [float] NOT NULL DEFAULT ((0)),
	[gianhap] [float] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/27/2020 4:02:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayVao] [date] NOT NULL,
	[NgayRa] [date] NOT NULL,
	[IdBan] [int] NOT NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([UserName], [PassWorld], [DisplayName], [Type]) VALUES (N'Admin', N'Admin', N'Admin', 0)
SET IDENTITY_INSERT [dbo].[BAN] ON 

INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (1, N'Bàn 1', N'0')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (2, N'Bàn 2', N'0')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (3, N'Bàn 3', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (4, N'Bàn 4', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (5, N'Bàn 5', N'0')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (6, N'Bàn 6', N'0')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (7, N'Bàn 7', N'0')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (8, N'Bàn 8', N'0')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (9, N'Bàn 9', N'0')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (10, N'Bàn 10', N'0')
SET IDENTITY_INSERT [dbo].[BAN] OFF
SET IDENTITY_INSERT [dbo].[Danhmuc] ON 

INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (1, N'Cafe truyền thống')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (2, N'Cafe hiện đại')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (3, N'Sinh tố')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (4, N'Trà Sữa')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (5, N'Kem')
SET IDENTITY_INSERT [dbo].[Danhmuc] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (1, N'Cafe Đen Đá', 1, 20000, 15000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (2, N'Cafe Nóng', 1, 21000, 15000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (3, N'Cafe Sữa Nóng', 1, 26000, 20000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (4, N'Bạc Xỉu', 1, 25000, 20000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (5, N'Capuchino', 2, 30000, 22000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (6, N'Latte', 2, 30000, 21000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (7, N'Mocha', 2, 30000, 22000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (8, N'Sinh Tố Xoài', 3, 26000, 20000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (9, N'Sinh Tố Bơ', 3, 30000, 20000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (10, N'Sinh Tố Chuối', 3, 26000, 20000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (11, N'Sinh Tố Dưa Hấu', 3, 26000, 20000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (12, N'Trà Sữa Trân châu Đường Đen', 4, 35000, 30000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (13, N'Trà Sữa Khoai Môn', 4, 35000, 30000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (14, N'Trà Sữa Caramen', 4, 35000, 30000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (15, N'Kem Đậu Xanh', 5, 10000, 6000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (16, N'Kem Sữa Dừa', 5, 10000, 6000)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (17, N'Kem Ốc Quế', 5, 10000, 6000)
SET IDENTITY_INSERT [dbo].[Food] OFF
ALTER TABLE [dbo].[ChiTietHoaDon] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [NgayVao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([IdFood])
REFERENCES [dbo].[Food] ([Id])
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD FOREIGN KEY([IdDanhmuc])
REFERENCES [dbo].[Danhmuc] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdBan])
REFERENCES [dbo].[BAN] ([Id])
GO
