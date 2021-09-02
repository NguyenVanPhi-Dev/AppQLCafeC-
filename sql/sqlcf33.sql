USE [QLQUANCAFE]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/13/2020 10:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[PassWorld] [nvarchar](1000) NOT NULL DEFAULT ((0)),
	[DisplayName] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BAN]    Script Date: 11/13/2020 10:45:32 PM ******/
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
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 11/13/2020 10:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHDN] [int] NOT NULL,
	[IdFood] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/13/2020 10:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdHoaDon] [int] NOT NULL,
	[IdFood] [int] NOT NULL,
	[SoLuong] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Danhmuc]    Script Date: 11/13/2020 10:45:32 PM ******/
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
/****** Object:  Table [dbo].[Food]    Script Date: 11/13/2020 10:45:32 PM ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/13/2020 10:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayVao] [date] NOT NULL DEFAULT (getdate()),
	[NgayRa] [date] NULL,
	[IdBan] [int] NOT NULL,
	[Status] [int] NOT NULL DEFAULT ((0)),
	[KhuyenMai] [int] NOT NULL DEFAULT ((0)),
	[ThanhTien] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 11/13/2020 10:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([UserName], [PassWorld], [DisplayName], [Type]) VALUES (N'Admin', N'Admin', N'Admin', N'Admin')
INSERT [dbo].[Account] ([UserName], [PassWorld], [DisplayName], [Type]) VALUES (N'admin2', N'phi', N'Văn Văn', N'Admin')
INSERT [dbo].[Account] ([UserName], [PassWorld], [DisplayName], [Type]) VALUES (N'nv01', N'phi', N'Liu Liu', N'Nhân Viên')
INSERT [dbo].[Account] ([UserName], [PassWorld], [DisplayName], [Type]) VALUES (N'Test02', N'1', N'Nhân viên Test', N'Nhân Viên')
SET IDENTITY_INSERT [dbo].[BAN] ON 

INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (1, N'Bàn 1', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (2, N'Bàn 2', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (3, N'Bàn 3', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (4, N'Bàn 4', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (5, N'Bàn 5', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (6, N'Bàn 6', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (7, N'Bàn 7', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (8, N'Bàn 8', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (9, N'Bàn 9', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (10, N'Bàn 10', N'1')
INSERT [dbo].[BAN] ([Id], [Name], [Status]) VALUES (11, N'Bàn 11', N'1')
SET IDENTITY_INSERT [dbo].[BAN] OFF
SET IDENTITY_INSERT [dbo].[ChiTietHDN] ON 

INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (1, 1, 1, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (2, 1, 2, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (3, 1, 3, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (4, 1, 4, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (5, 1, 5, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (6, 2, 6, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (8, 2, 7, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (9, 2, 8, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (10, 2, 9, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (11, 2, 10, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (12, 3, 11, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (13, 3, 12, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (14, 3, 13, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (15, 3, 14, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (16, 3, 15, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (17, 2, 16, 100)
INSERT [dbo].[ChiTietHDN] ([Id], [IdHDN], [IdFood], [SoLuong]) VALUES (18, 1, 17, 50)
SET IDENTITY_INSERT [dbo].[ChiTietHDN] OFF
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (27, 19, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (28, 19, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (29, 20, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (30, 21, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (31, 22, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (32, 23, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (33, 24, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (34, 25, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (35, 26, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (36, 27, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (37, 28, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (38, 29, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (39, 30, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (40, 31, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (41, 32, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (42, 33, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (43, 33, 4, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (44, 33, 12, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (45, 33, 13, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (46, 30, 13, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (47, 30, 15, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (48, 34, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (49, 35, 2, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (50, 36, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (51, 43, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (52, 38, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (53, 43, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (54, 37, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (55, 50, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (56, 46, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (57, 49, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (58, 45, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (59, 49, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (60, 51, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (61, 51, 4, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (62, 52, 4, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (63, 52, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (64, 53, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (65, 54, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (66, 47, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (67, 55, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (68, 56, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (69, 57, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (70, 58, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (71, 59, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (72, 60, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (73, 60, 4, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (74, 60, 3, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (75, 60, 2, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (76, 61, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (77, 61, 3, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (78, 61, 15, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (79, 61, 12, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (80, 62, 12, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (81, 44, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (82, 65, 1, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (83, 65, 3, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (84, 65, 12, 3)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (85, 65, 13, 3)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (86, 63, 13, 3)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (87, 64, 17, 4)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (88, 64, 8, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (89, 66, 8, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (90, 68, 15, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (91, 67, 15, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (92, 69, 18, 2)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (93, 70, 19, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (94, 71, 1, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (95, 72, 3, 4)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (96, 72, 4, 3)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (97, 73, 19, 1)
INSERT [dbo].[ChiTietHoaDon] ([Id], [IdHoaDon], [IdFood], [SoLuong]) VALUES (98, 73, 12, 4)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
SET IDENTITY_INSERT [dbo].[Danhmuc] ON 

INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (1, N'Cafe truyền thống')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (2, N'Cafe hiện đại')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (3, N'Sinh tố')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (4, N'Trà Sữa')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (5, N'Kem')
INSERT [dbo].[Danhmuc] ([Id], [Ten]) VALUES (6, N'Bánh Kem')
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
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (18, N'Kem Chocolate', 5, 15001, 0)
INSERT [dbo].[Food] ([Id], [Ten], [IdDanhmuc], [giaban], [gianhap]) VALUES (19, N'Bánh 7 Tầng', 6, 150000, 0)
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (19, CAST(N'2020-11-03' AS Date), NULL, 1, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (20, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 2, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (21, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 9, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (22, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 9, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (23, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 1, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (24, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 9, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (25, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 2, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (26, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 3, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (27, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 4, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (28, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-04' AS Date), 5, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (29, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 6, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (30, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-04' AS Date), 7, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (31, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 8, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (32, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 10, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (33, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-03' AS Date), 1, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (34, CAST(N'2020-11-04' AS Date), CAST(N'2020-11-05' AS Date), 3, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (35, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 4, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (36, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 4, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (37, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 1, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (38, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 2, 1, 50, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (43, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 2, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (44, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-08' AS Date), 1, 1, 0, 40000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (45, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 3, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (46, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 2, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (47, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-07' AS Date), 4, 1, 0, 40000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (48, CAST(N'2020-11-05' AS Date), NULL, 5, 0, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (49, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 6, 1, 50, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (50, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-05' AS Date), 2, 1, 0, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (51, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 2, 1, 10, 40500)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (52, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 2, 1, 0, 51000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (53, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 2, 1, 100, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (54, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 3, 1, 0, 20000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (55, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 7, 1, 0, 20000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (56, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 4, 1, 0, 20000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (57, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 3, 1, 0, 20000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (58, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 8, 1, 0, 20000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (59, CAST(N'2020-11-07' AS Date), CAST(N'2020-11-07' AS Date), 8, 1, 0, 20000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (60, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 3, 1, 0, 139000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (61, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 3, 1, 10, 113400)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (62, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 3, 1, 10, 31500)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (63, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 3, 1, 10, 94500)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (64, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 1, 1, 10, 59400)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (65, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 8, 1, 10, 271800)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (66, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 1, 1, 99, 520)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (67, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 6, 1, 10, 9000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (68, CAST(N'2020-11-08' AS Date), CAST(N'2020-11-08' AS Date), 2, 1, 100, 0)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (69, CAST(N'2020-11-09' AS Date), CAST(N'2020-11-09' AS Date), 1, 1, 0, 30002)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (70, CAST(N'2020-11-09' AS Date), CAST(N'2020-11-09' AS Date), 1, 1, 10, 135000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (71, CAST(N'2020-11-09' AS Date), CAST(N'2020-11-09' AS Date), 11, 1, 0, 20000)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (72, CAST(N'2020-11-13' AS Date), CAST(N'2020-11-13' AS Date), 4, 1, 15, 152150)
INSERT [dbo].[HoaDon] ([Id], [NgayVao], [NgayRa], [IdBan], [Status], [KhuyenMai], [ThanhTien]) VALUES (73, CAST(N'2020-11-13' AS Date), CAST(N'2020-11-13' AS Date), 1, 1, 0, 290000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[HoaDonNhap] ON 

INSERT [dbo].[HoaDonNhap] ([Id], [NgayNhap]) VALUES (1, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[HoaDonNhap] ([Id], [NgayNhap]) VALUES (2, CAST(N'2020-11-06' AS Date))
INSERT [dbo].[HoaDonNhap] ([Id], [NgayNhap]) VALUES (3, CAST(N'2020-11-05' AS Date))
SET IDENTITY_INSERT [dbo].[HoaDonNhap] OFF
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD FOREIGN KEY([IdFood])
REFERENCES [dbo].[Food] ([Id])
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD FOREIGN KEY([IdHDN])
REFERENCES [dbo].[HoaDonNhap] ([Id])
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
/****** Object:  StoredProcedure [dbo].[ChuyenBan]    Script Date: 11/13/2020 10:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChuyenBan] @idBan1 int ,@idBan2 int
as
begin
declare @idHoaDon1 int ,@idHoaDon2 int
select @idHoaDon1 = Id from HoaDon where IdBan = @idBan1 and Status = 0
select @idHoaDon2 = Id from HoaDon where IdBan = @idBan2 and Status = 0
declare  @id1null int = 1,@id2null int = 1 

if(@idHoaDon1 is null)
begin 
print 'id1isnulll'
Insert HoaDon(NgayVao,NgayRa,IdBan,Status) values
(
GETDATE(),
null,
@idban1,
0
)
select @idHoaDon1 = max(id) from HoaDon where IdBan =@idBan1 and Status = 0
print @idHoaDon1
print '-------------'
end
select @id1null = count(*) from ChiTietHoaDon where IdHoaDon = @idHoaDon1

if(@idHoaDon2 is null)
begin 
print 'id2isnulll'

Insert HoaDon(NgayVao,NgayRa,IdBan,Status) values
(
GETDATE(),
null,
@idban2,
0
)
select @idHoaDon2 = max(id) from HoaDon where IdBan =@idBan2 and Status = 0
print @idHoaDon2
print '-------------'
end
select @id2null = count(*) from ChiTietHoaDon where IdHoaDon = @idHoaDon2

select id into tableCTHD from ChiTietHoaDon where IdHoaDon = @idHoaDon2

update ChiTietHoaDon set IdHoaDon = @idHoaDon2 where IdHoaDon = @idHoaDon1
update ChiTietHoaDon set IdHoaDon = @idHoaDon1 where Id in (select * from tableCTHD)

if(@id1null = 0)
   update ban set Status = '1' where id = @idBan2
if(@id2null = 0)
   update ban set Status = '1' where id = @idBan1
drop table tableCTHD

end 

GO
/****** Object:  StoredProcedure [dbo].[themCTHD]    Script Date: 11/13/2020 10:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[themCTHD] @idHoaDon int ,@idFood int, @soluong int as
begin
declare @tontaihd int,@sl int =1

select @tontaihd = id ,@sl = SoLuong from ChiTietHoaDon where IdHoaDon = @idHoaDon and idfood = @idFood
if(@tontaihd >0)
begin
if(@soluong + @sl >0)
  update ChiTietHoaDon set SoLuong = @sl + @soluong where IdFood = @idFood and IdHoaDon = @idHoaDon
else 
 delete ChiTietHoaDon where IdHoaDon = @idHoaDon and IdFood = @idFood
 end
 else
insert ChiTietHoaDon(IdHoaDon,IdFood,SoLuong)
values (
@idHoaDon,
@idFood,
@soluong
)
end

GO
/****** Object:  StoredProcedure [dbo].[themHoaDon]    Script Date: 11/13/2020 10:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[themHoaDon] @idBan int
 as
begin
insert HoaDon 
(NgayVao,NgayRa,IdBan,Status)
values(
GETDATE(),
null,
@idban,
0
)
end


GO

/****** Object:  Trigger [dbo].[ThanhToan]    Script Date: 11/13/2020 10:47:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[ThanhToan] on [dbo].[HoaDon] for update as
begin 
declare @idhoadon int,@idban int, @count int 
select @idhoadon = Id from inserted
select @idban = IdBan from HoaDon where @idhoadon = Id 
select @count = COUNT(*) from HoaDon where  IdBan = @idban and Status = 0
if(@count = 0 )
   update BAN set Status = '1' where Id = @idban  

end

GO
/****** Object:  Trigger [dbo].[updateHoaDon]    Script Date: 11/13/2020 10:48:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE trigger [dbo].[updateHoaDon] on [dbo].[HoaDon] for insert,update
as begin
declare @idhoadon int,@idban int 
select @idhoadon = Id from inserted
select @idban =IdBan from HoaDon where @idhoadon = Id and Status = 0
Declare @count int
select @count = COUNT(*) from ChiTietHoaDon where IdHoaDon = @idhoadon
if(@count > 0)
begin
update BAN set Status = '1' where Id = @idban 
end
else begin
update BAN set Status = '0' where Id = @idban 
end
end