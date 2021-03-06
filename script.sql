USE [QLThuVien]
GO
/****** Object:  StoredProcedure [dbo].[TimUsers]    Script Date: 12/13/2021 21:23:21 ******/
DROP PROCEDURE [dbo].[TimUsers]
GO
/****** Object:  StoredProcedure [dbo].[TimTheLoai]    Script Date: 12/13/2021 21:23:21 ******/
DROP PROCEDURE [dbo].[TimTheLoai]
GO
/****** Object:  StoredProcedure [dbo].[TimTacGia]    Script Date: 12/13/2021 21:23:21 ******/
DROP PROCEDURE [dbo].[TimTacGia]
GO
/****** Object:  StoredProcedure [dbo].[TimSach]    Script Date: 12/13/2021 21:23:21 ******/
DROP PROCEDURE [dbo].[TimSach]
GO
/****** Object:  StoredProcedure [dbo].[TimNXB]    Script Date: 12/13/2021 21:23:21 ******/
DROP PROCEDURE [dbo].[TimNXB]
GO
/****** Object:  StoredProcedure [dbo].[TimNhanVien]    Script Date: 12/13/2021 21:23:21 ******/
DROP PROCEDURE [dbo].[TimNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[TimNgonNgu]    Script Date: 12/13/2021 21:23:21 ******/
DROP PROCEDURE [dbo].[TimNgonNgu]
GO
/****** Object:  StoredProcedure [dbo].[TimDocGia]    Script Date: 12/13/2021 21:23:21 ******/
DROP PROCEDURE [dbo].[TimDocGia]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK__Users__MaUR__5165187F]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK__Sach__MaVT__2C3393D0]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK__Sach__MaTL__2A4B4B5E]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK__Sach__MaTG__2D27B809]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK__Sach__MaNXB__2E1BDC42]
GO
ALTER TABLE [dbo].[Sach] DROP CONSTRAINT [FK__Sach__MaNN__2B3F6F97]
GO
ALTER TABLE [dbo].[PhieuTra] DROP CONSTRAINT [FK__PhieuTra__MaSach__0C85DE4D]
GO
ALTER TABLE [dbo].[PhieuTra] DROP CONSTRAINT [FK__PhieuTra__MaNV__0B91BA14]
GO
ALTER TABLE [dbo].[PhieuTra] DROP CONSTRAINT [FK__PhieuTra__0A9D95DB]
GO
ALTER TABLE [dbo].[PhieuMuon] DROP CONSTRAINT [FK__PhieuMuon__MaNV__02084FDA]
GO
ALTER TABLE [dbo].[PhieuMuon] DROP CONSTRAINT [FK__PhieuMuon__MaDG__01142BA1]
GO
ALTER TABLE [dbo].[CTPhieuMuon] DROP CONSTRAINT [FK__CTPhieuMuon__2B0A656D]
GO
ALTER TABLE [dbo].[CTPhieuMuon] DROP CONSTRAINT [FK__CTPhieuMuo__MaNV__2CF2ADDF]
GO
ALTER TABLE [dbo].[CTPhieuMuon] DROP CONSTRAINT [FK__CTPhieuMu__MaSac__2BFE89A6]
GO
/****** Object:  Table [dbo].[ViTri]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[ViTri]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[UserRole]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[TheLoai]
GO
/****** Object:  Table [dbo].[ThamSo]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[ThamSo]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[TacGia]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[Sach]
GO
/****** Object:  Table [dbo].[PhieuTra]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[PhieuTra]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[PhieuMuon]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[NXB]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[NhanVien]
GO
/****** Object:  Table [dbo].[NgonNgu]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[NgonNgu]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[DocGia]
GO
/****** Object:  Table [dbo].[CTPhieuMuon]    Script Date: 12/13/2021 21:23:21 ******/
DROP TABLE [dbo].[CTPhieuMuon]
GO
/****** Object:  Table [dbo].[CTPhieuMuon]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuMuon](
	[MaPM] [nvarchar](8) NOT NULL,
	[MaSach] [nvarchar](8) NOT NULL,
	[MaDG] [nvarchar](8) NOT NULL,
	[NgayMuon] [date] NULL,
	[NgayTra] [date] NULL,
	[MaNV] [nvarchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDG] [nvarchar](8) NOT NULL,
	[TenDG] [nvarchar](max) NOT NULL,
	[NamSinh] [date] NULL,
	[GioiTinh] [nvarchar](8) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NgonNgu]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgonNgu](
	[MaNN] [nvarchar](20) NOT NULL,
	[TenNN] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](8) NOT NULL,
	[TenNV] [nvarchar](max) NOT NULL,
	[NamSinh] [date] NULL,
	[GioiTinh] [nvarchar](8) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NXB]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[MaNXB] [nvarchar](8) NOT NULL,
	[TenNXB] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaPM] [nvarchar](8) NOT NULL,
	[MaDG] [nvarchar](8) NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[MaNV] [nvarchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC,
	[NgayMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuTra]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuTra](
	[MaPT] [nvarchar](8) NOT NULL,
	[MaPM] [nvarchar](8) NOT NULL,
	[MaSach] [nvarchar](8) NOT NULL,
	[MaNV] [nvarchar](8) NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[NgayTra] [date] NULL,
	[PhatHuHong] [money] NULL,
	[PhatQuaHan] [money] NULL,
	[ThanhToan] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nvarchar](8) NOT NULL,
	[TenSach] [nvarchar](max) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[MaTL] [nvarchar](8) NOT NULL,
	[MaVT] [nvarchar](8) NOT NULL,
	[MaTG] [nvarchar](8) NOT NULL,
	[MaNXB] [nvarchar](8) NOT NULL,
	[NamXB] [int] NULL,
	[MaNN] [nvarchar](20) NOT NULL,
	[SoTrang] [int] NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTG] [nvarchar](8) NOT NULL,
	[TenTG] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThamSo]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamSo](
	[ID] [nvarchar](2) NOT NULL,
	[GiaTri] [nvarchar](8) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTL] [nvarchar](8) NOT NULL,
	[TenTL] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](max) NULL,
	[IdRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ViTri]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTri](
	[MaVT] [nvarchar](8) NOT NULL,
	[TenKhu] [nvarchar](max) NOT NULL,
	[TenKe] [nvarchar](max) NULL,
	[TenNgan] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'DG00001', N'Bright Vachirawit', CAST(N'1997-12-27' AS Date), N'Nam', N'BK', N'0908982244')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'DG00002', N'Win Metawin', CAST(N'1999-12-21' AS Date), N'Nam', N'BK', N'0981234567')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'DG00003', N'Ohm Pawat', CAST(N'2000-03-22' AS Date), N'Nam', N'BK', N'0923456789')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'DG00004', N'Nanon Korapat', CAST(N'2000-12-18' AS Date), N'Nam', N'NT', N'0987654321')
INSERT [dbo].[DocGia] ([MaDG], [TenDG], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'DG00005', N'Chimon Wachirawit', CAST(N'2000-01-15' AS Date), N'Nam', N'BK', N'0912345678')
INSERT [dbo].[NgonNgu] ([MaNN], [TenNN]) VALUES (N'NN00001', N'English')
INSERT [dbo].[NgonNgu] ([MaNN], [TenNN]) VALUES (N'NN00002', N'VietNam')
INSERT [dbo].[NgonNgu] ([MaNN], [TenNN]) VALUES (N'NN00003', N'ThaiLand')
INSERT [dbo].[NgonNgu] ([MaNN], [TenNN]) VALUES (N'NN00004', N'Chinese')
INSERT [dbo].[NgonNgu] ([MaNN], [TenNN]) VALUES (N'NN00005', N'Japan')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'NV00001', N'Trần Văn Sáng', CAST(N'1997-12-27' AS Date), N'Nam', N'TL', N'0908985919')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'NV00002', N'Uông Minh Thắng', CAST(N'1999-02-21' AS Date), N'Nam', N'TL', N'0908985717')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'NV00005', N'Phạm Ngọc Trúc', CAST(N'2000-10-20' AS Date), N'Nữ', N'VN', N'0908985414')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [GioiTinh], [DiaChi], [SDT]) VALUES (N'NV00006', N'Phạm Minh Ngọc', CAST(N'2000-01-02' AS Date), N'Nữ', N'CT', N'0901234567')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (N'NXB0001', N'Kim Đồng')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (N'NXB0002', N'Hồng Đức')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (N'NXB0003', N'Hồng Châu')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB]) VALUES (N'NXB0004', N'Xuân Hương')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [NgayMuon], [MaNV]) VALUES (N'PM00001', N'DG00001', CAST(N'2021-12-08' AS Date), N'NV00001')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [NgayMuon], [MaNV]) VALUES (N'PM00002', N'DG00002', CAST(N'2021-12-08' AS Date), N'NV00002')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [NgayMuon], [MaNV]) VALUES (N'PM00003', N'DG00003', CAST(N'2021-08-12' AS Date), N'NV00002')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [NgayMuon], [MaNV]) VALUES (N'PM00004', N'DG00004', CAST(N'2021-08-12' AS Date), N'NV00001')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [NgayMuon], [MaNV]) VALUES (N'PM00005', N'DG00005', CAST(N'2021-08-01' AS Date), N'NV00002')
INSERT [dbo].[PhieuMuon] ([MaPM], [MaDG], [NgayMuon], [MaNV]) VALUES (N'PM00007', N'DG00002', CAST(N'2021-12-08' AS Date), N'NV00001')
INSERT [dbo].[PhieuTra] ([MaPT], [MaPM], [MaSach], [MaNV], [NgayMuon], [NgayTra], [PhatHuHong], [PhatQuaHan], [ThanhToan]) VALUES (N'PT00001', N'PM00001', N'MS00001', N'NV00006', CAST(N'2021-12-08' AS Date), CAST(N'2021-12-20' AS Date), 0.0000, 0.0000, 0.0000)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NoiDung], [MaTL], [MaVT], [MaTG], [MaNXB], [NamXB], [MaNN], [SoTrang], [SoLuong]) VALUES (N'MS00001', N'Behind the Sences', N'Tiểu thuyết', N'TL00001', N'VT00001', N'TG00001', N'NXB0001', 2018, N'NN00003', 1000, 15)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NoiDung], [MaTL], [MaVT], [MaTG], [MaNXB], [NamXB], [MaNN], [SoTrang], [SoLuong]) VALUES (N'MS00002', N'Vì chúng ta là một đôi', N'Tiểu thuyết', N'TL00001', N'VT00001', N'TG00002', N'NXB0002', 2019, N'NN00002', 1000, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NoiDung], [MaTL], [MaVT], [MaTG], [MaNXB], [NamXB], [MaNN], [SoTrang], [SoLuong]) VALUES (N'MS00003', N'Bảy nàng dâu', N'Tiểu thuyết', N'TL00002', N'VT00002', N'TG00003', N'NXB0002', 2019, N'NN00002', 1000, 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NoiDung], [MaTL], [MaVT], [MaTG], [MaNXB], [NamXB], [MaNN], [SoTrang], [SoLuong]) VALUES (N'MS00004', N'Sherlock Holmes', N'Tiểu thuyết', N'TL00004', N'VT00005', N'TG00004', N'NXB0002', 2002, N'NN00001', 1000, 100)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [NoiDung], [MaTL], [MaVT], [MaTG], [MaNXB], [NamXB], [MaNN], [SoTrang], [SoLuong]) VALUES (N'MS00005', N'Thám tử lừng danh Conan', N'Tiểu thuyết', N'TL00004', N'VT00005', N'TG00002', N'NXB0001', 2002, N'NN00002', 1000, 100)
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'TG00001', N'West- & Afterday')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'TG00002', N'Jitti Rain')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'TG00003', N'Thiên Yết')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'TG00004', N'Arthur Conan Doyle ')
INSERT [dbo].[TacGia] ([MaTG], [TenTG]) VALUES (N'TG00005', N'ABCD')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL00001', N'BL')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL00002', N'Kinh dị')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL00003', N'Lãng mạn')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL00004', N'Trinh thám')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL00005', N'Giả tưởng')
INSERT [dbo].[TheLoai] ([MaTL], [TenTL]) VALUES (N'TL00006', N'Văn học')
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([IdRole], [DisplayName]) VALUES (1, N'Admin')
INSERT [dbo].[UserRole] ([IdRole], [DisplayName]) VALUES (2, N'Nhân Viên')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [DisplayName], [UserName], [Password], [IdRole]) VALUES (1, N'VanA', N'admin', N'db69fc039dcbd2962cb4d28f5891aae1', 1)
INSERT [dbo].[Users] ([Id], [DisplayName], [UserName], [Password], [IdRole]) VALUES (2, N'NhanVien', N'nhanvien', N'32035964ea350cc45ca333216c4a59ff', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[ViTri] ([MaVT], [TenKhu], [TenKe], [TenNgan]) VALUES (N'VT00001', N'A', N'Truyện', N'BL')
INSERT [dbo].[ViTri] ([MaVT], [TenKhu], [TenKe], [TenNgan]) VALUES (N'VT00002', N'A', N'Truyện', N'Kinh dị')
INSERT [dbo].[ViTri] ([MaVT], [TenKhu], [TenKe], [TenNgan]) VALUES (N'VT00003', N'A', N'Truyện', N'Lãng mạn')
INSERT [dbo].[ViTri] ([MaVT], [TenKhu], [TenKe], [TenNgan]) VALUES (N'VT00004', N'A', N'Truyện', N'Tiểu thuyết')
INSERT [dbo].[ViTri] ([MaVT], [TenKhu], [TenKe], [TenNgan]) VALUES (N'VT00005', N'B', N'Novel', N'Trinh thám')
INSERT [dbo].[ViTri] ([MaVT], [TenKhu], [TenKe], [TenNgan]) VALUES (N'VT00006', N'C', N'Tài liệu', N'Văn học')
ALTER TABLE [dbo].[CTPhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[CTPhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[CTPhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaPM], [NgayMuon])
REFERENCES [dbo].[PhieuMuon] ([MaPM], [NgayMuon])
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaDG])
REFERENCES [dbo].[DocGia] ([MaDG])
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuTra]  WITH CHECK ADD FOREIGN KEY([MaPM], [NgayMuon])
REFERENCES [dbo].[PhieuMuon] ([MaPM], [NgayMuon])
GO
ALTER TABLE [dbo].[PhieuTra]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuTra]  WITH CHECK ADD FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([MaNN])
REFERENCES [dbo].[NgonNgu] ([MaNN])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NXB] ([MaNXB])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([MaTG])
REFERENCES [dbo].[TacGia] ([MaTG])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([MaTL])
REFERENCES [dbo].[TheLoai] ([MaTL])
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD FOREIGN KEY([MaVT])
REFERENCES [dbo].[ViTri] ([MaVT])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([IdRole])
REFERENCES [dbo].[UserRole] ([IdRole])
GO
/****** Object:  StoredProcedure [dbo].[TimDocGia]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TimDocGia]
	-- Add the parameters for the stored procedure here
	@ten nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT k.*
	FROM dbo.DocGia k
	WHERE (@ten IS NULL OR k.TenDG like '%'+@ten+'%')
END

GO
/****** Object:  StoredProcedure [dbo].[TimNgonNgu]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TimNgonNgu]
	-- Add the parameters for the stored procedure here
	@ten nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT nn.*
	FROM dbo.NgonNgu nn
	WHERE (@ten IS NULL OR nn.TenNN like '%'+@ten+'%')
END
GO
/****** Object:  StoredProcedure [dbo].[TimNhanVien]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TimNhanVien]
	-- Add the parameters for the stored procedure here
	@ten nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT s.*
	FROM dbo.NhanVien s
	WHERE (@ten IS NULL OR s.TenNV like '%'+@ten+'%')
END

GO
/****** Object:  StoredProcedure [dbo].[TimNXB]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TimNXB]
	-- Add the parameters for the stored procedure here
	@ten nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT xb.*
	FROM dbo.NXB xb
	WHERE (@ten IS NULL OR xb.TenNXB like '%'+@ten+'%')
END
GO
/****** Object:  StoredProcedure [dbo].[TimSach]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TimSach]
	-- Add the parameters for the stored procedure here
	@ten nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT b.*
	FROM dbo.Sach b
	WHERE (@ten IS NULL OR b.TenSach like '%'+@ten+'%')
END
GO
/****** Object:  StoredProcedure [dbo].[TimTacGia]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

Create PROCEDURE [dbo].[TimTacGia]
	-- Add the parameters for the stored procedure here
	@ten nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT a.*
	FROM dbo.TacGia a
	WHERE (@ten IS NULL OR a.TenTG like '%'+@ten+'%')
END


GO
/****** Object:  StoredProcedure [dbo].[TimTheLoai]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TimTheLoai]
	-- Add the parameters for the stored procedure here
	@ten nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT l.*
	FROM dbo.TheLoai l
	WHERE (@ten IS NULL OR l.TenTL like '%'+@ten+'%')
END
GO
/****** Object:  StoredProcedure [dbo].[TimUsers]    Script Date: 12/13/2021 21:23:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TimUsers]
	-- Add the parameters for the stored procedure here
	@UserName nvarchar(max) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT u.*
	FROM dbo.Users u
	WHERE (@UserName IS NULL OR u.UserName like '%'+@UserName+'%')
END
GO
