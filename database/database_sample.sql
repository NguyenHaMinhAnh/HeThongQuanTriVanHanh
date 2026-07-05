
IF DB_ID(N'HeThongDieuHanh_Demo') IS NULL
BEGIN
    CREATE DATABASE [HeThongDieuHanh_Demo];
END
GO
USE [HeThongDieuHanh_Demo];
GO
/****** Object:  Table [dbo].[BAOCAO]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAO](
	[MaBaoCao] [char](10) NOT NULL,
	[TenBaoCao] [nvarchar](150) NOT NULL,
	[LoaiBaoCao] [nvarchar](100) NULL,
	[MaLinhVuc] [char](10) NULL,
	[MaNguoiLap] [char](10) NULL,
	[NgayLap] [date] NULL,
	[NoiDungBaoCao] [nvarchar](255) NULL,
	[TepBaoCao] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_BAOCAO] PRIMARY KEY CLUSTERED 
(
	[MaBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOPHAN]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOPHAN](
	[MaBoPhan] [char](10) NOT NULL,
	[TenBoPhan] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_BOPHAN] PRIMARY KEY CLUSTERED 
(
	[MaBoPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CANBO]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CANBO](
	[MaCanBo] [char](10) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[MaChucVu] [char](10) NULL,
	[MaBoPhan] [char](10) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_CANBO] PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[MaChucVu] [char](10) NOT NULL,
	[TenChucVu] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_CHUCVU] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOINGHICUOCHOP]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOINGHICUOCHOP](
	[MaCuocHop] [char](10) NOT NULL,
	[TenCuocHop] [nvarchar](150) NOT NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[DiaDiem] [nvarchar](150) NULL,
	[NoiDung] [nvarchar](255) NULL,
	[MaNguoiChuTri] [char](10) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_HOINGHICUOCHOP] PRIMARY KEY CLUSTERED 
(
	[MaCuocHop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUPHO]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUPHO](
	[MaKhuPho] [char](10) NOT NULL,
	[TenKhuPho] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](150) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_KHUPHO] PRIMARY KEY CLUSTERED 
(
	[MaKhuPho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LINHVUC]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LINHVUC](
	[MaLinhVuc] [char](10) NOT NULL,
	[TenLinhVuc] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_LINHVUC] PRIMARY KEY CLUSTERED 
(
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIVANBAN]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIVANBAN](
	[MaLoaiVanBan] [char](10) NOT NULL,
	[TenLoaiVanBan] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_LOAIVANBAN] PRIMARY KEY CLUSTERED 
(
	[MaLoaiVanBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHATKYHETHONG]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHATKYHETHONG](
	[MaNhatKy] [char](10) NOT NULL,
	[MaTaiKhoan] [char](10) NULL,
	[ThoiGianThaoTac] [datetime] NULL,
	[ChucNangThaoTac] [nvarchar](100) NULL,
	[NoiDungThaoTac] [nvarchar](255) NULL,
	[DiaChiIP] [varchar](45) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_NHATKYHETHONG] PRIMARY KEY CLUSTERED 
(
	[MaNhatKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHIEMVU]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHIEMVU](
	[MaNhiemVu] [char](10) NOT NULL,
	[TenNhiemVu] [nvarchar](150) NOT NULL,
	[NoiDung] [nvarchar](255) NULL,
	[MaVanBanDen] [char](10) NULL,
	[MaVanBanDi] [char](10) NULL,
	[MaLinhVuc] [char](10) NULL,
	[MaNguoiGiao] [char](10) NULL,
	[NgayGiao] [date] NULL,
	[ThoiHanHoanThanh] [date] NULL,
	[MucDoUuTien] [nvarchar](20) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[KetQua] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_NHIEMVU] PRIMARY KEY CLUSTERED 
(
	[MaNhiemVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONGKHUPHO]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONGKHUPHO](
	[MaCanBo] [char](10) NOT NULL,
	[MaKhuPho] [char](10) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_PHANCONGKHUPHO] PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC,
	[MaKhuPho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONGLINHVUC]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONGLINHVUC](
	[MaCanBo] [char](10) NOT NULL,
	[MaLinhVuc] [char](10) NOT NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_PHANCONGLINHVUC] PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC,
	[MaLinhVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANCONGNHIEMVU]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONGNHIEMVU](
	[MaNhiemVu] [char](10) NOT NULL,
	[MaCanBo] [char](10) NOT NULL,
	[VaiTroXuLy] [nvarchar](50) NULL,
	[NgayPhanCong] [date] NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_PHANCONGNHIEMVU] PRIMARY KEY CLUSTERED 
(
	[MaNhiemVu] ASC,
	[MaCanBo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MaVaiTro] [char](10) NOT NULL,
	[MaQuyen] [char](10) NOT NULL,
	[NgayCapQuyen] [date] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[MaVaiTro] ASC,
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYEN]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYEN](
	[MaQuyen] [char](10) NOT NULL,
	[TenQuyen] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_QUYEN] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MaTaiKhoan] [char](10) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[MaVaiTro] [char](10) NOT NULL,
	[MaCanBo] [char](10) NOT NULL,
	[TrangThai] [nvarchar](20) NULL,
	[NgayTao] [date] NULL,
	[GhiChu] [nvarchar](255) NULL,
	[DoiMatKhauLanDau] [bit] NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEPDINHKEM]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEPDINHKEM](
	[MaTep] [char](10) NOT NULL,
	[TenTep] [nvarchar](150) NOT NULL,
	[DuongDanTep] [nvarchar](255) NULL,
	[LoaiTep] [nvarchar](50) NULL,
	[DoiTuongLienKet] [nvarchar](50) NULL,
	[MaDoiTuong] [char](10) NULL,
	[MaNguoiTaiLen] [char](10) NULL,
	[NgayTaiLen] [datetime] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_TEPDINHKEM] PRIMARY KEY CLUSTERED 
(
	[MaTep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIENDONHIEMVU]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIENDONHIEMVU](
	[MaTienDo] [char](10) NOT NULL,
	[MaNhiemVu] [char](10) NOT NULL,
	[MaCanBo] [char](10) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NoiDungCapNhat] [nvarchar](255) NULL,
	[TiLeHoanThanh] [int] NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_TIENDONHIEMVU] PRIMARY KEY CLUSTERED 
(
	[MaTienDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHPHANTHAMDU]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHPHANTHAMDU](
	[MaCuocHop] [char](10) NOT NULL,
	[MaCanBo] [char](10) NOT NULL,
	[VaiTroThamDu] [nvarchar](50) NULL,
	[TrangThaiThamDu] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_THANHPHANTHAMDU] PRIMARY KEY CLUSTERED 
(
	[MaCuocHop] ASC,
	[MaCanBo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VAITRO]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAITRO](
	[MaVaiTro] [char](10) NOT NULL,
	[TenVaiTro] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_VAITRO] PRIMARY KEY CLUSTERED 
(
	[MaVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VANBANDEN]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VANBANDEN](
	[MaVanBanDen] [char](10) NOT NULL,
	[SoKyHieu] [nvarchar](50) NULL,
	[NgayBanHanh] [date] NULL,
	[NgayNhan] [date] NULL,
	[MaLoaiVanBan] [char](10) NULL,
	[MaLinhVuc] [char](10) NULL,
	[CoQuanGui] [nvarchar](150) NULL,
	[TrichYeu] [nvarchar](255) NULL,
	[ThoiHanXuLy] [date] NULL,
	[MaNguoiTiepNhan] [char](10) NULL,
	[TrangThaiXuLy] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_VANBANDEN] PRIMARY KEY CLUSTERED 
(
	[MaVanBanDen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VANBANDI]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VANBANDI](
	[MaVanBanDi] [char](10) NOT NULL,
	[SoKyHieu] [nvarchar](50) NOT NULL,
	[NgayBanHanh] [date] NULL,
	[MaLoaiVanBan] [char](10) NULL,
	[MaLinhVuc] [char](10) NULL,
	[TrichYeu] [nvarchar](255) NULL,
	[NoiNhan] [nvarchar](150) NULL,
	[MaNguoiSoan] [char](10) NULL,
	[MaNguoiKy] [char](10) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_VANBANDI] PRIMARY KEY CLUSTERED 
(
	[MaVanBanDi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XULYKIENNGHI]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XULYKIENNGHI](
	[MaKienNghi] [char](10) NOT NULL,
	[MaCanBo] [char](10) NOT NULL,
	[NgayXuLy] [datetime] NOT NULL,
	[NoiDungXuLy] [nvarchar](255) NULL,
	[KetQuaXuLy] [nvarchar](255) NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_XULYKIENNGHI] PRIMARY KEY CLUSTERED 
(
	[MaKienNghi] ASC,
	[MaCanBo] ASC,
	[NgayXuLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YKIENKIENNGHI]    Script Date: 6/29/2026 1:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YKIENKIENNGHI](
	[MaKienNghi] [char](10) NOT NULL,
	[NoiDungKienNghi] [nvarchar](255) NOT NULL,
	[NguoiKienNghi] [nvarchar](100) NULL,
	[MaKhuPho] [char](10) NULL,
	[MaLinhVuc] [char](10) NULL,
	[NgayTiepNhan] [date] NULL,
	[TrangThai] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_YKIENKIENNGHI] PRIMARY KEY CLUSTERED 
(
	[MaKienNghi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC001     ', N'Báo cáo mẫu số 01', N'Báo cáo công văn', N'LV001     ', N'CB001     ', CAST(N'2026-06-01' AS Date), N'Nội dung báo cáo mẫu số 01 phục vụ kiểm thử', N'/reports/demo_report_001.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC002     ', N'Báo cáo mẫu số 02', N'Báo cáo nhiệm vụ', N'LV002     ', N'CB002     ', CAST(N'2026-06-02' AS Date), N'Nội dung báo cáo mẫu số 02 phục vụ kiểm thử', N'/reports/demo_report_002.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC003     ', N'Báo cáo mẫu số 03', N'Báo cáo kiến nghị', N'LV003     ', N'CB003     ', CAST(N'2026-06-03' AS Date), N'Nội dung báo cáo mẫu số 03 phục vụ kiểm thử', N'/reports/demo_report_003.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC004     ', N'Báo cáo mẫu số 04', N'Báo cáo cuộc họp', N'LV004     ', N'CB004     ', CAST(N'2026-06-04' AS Date), N'Nội dung báo cáo mẫu số 04 phục vụ kiểm thử', N'/reports/demo_report_004.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC005     ', N'Báo cáo mẫu số 05', N'Báo cáo công văn', N'LV005     ', N'CB005     ', CAST(N'2026-06-05' AS Date), N'Nội dung báo cáo mẫu số 05 phục vụ kiểm thử', N'/reports/demo_report_005.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC006     ', N'Báo cáo mẫu số 06', N'Báo cáo nhiệm vụ', N'LV001     ', N'CB001     ', CAST(N'2026-06-06' AS Date), N'Nội dung báo cáo mẫu số 06 phục vụ kiểm thử', N'/reports/demo_report_006.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC007     ', N'Báo cáo mẫu số 07', N'Báo cáo kiến nghị', N'LV002     ', N'CB002     ', CAST(N'2026-06-07' AS Date), N'Nội dung báo cáo mẫu số 07 phục vụ kiểm thử', N'/reports/demo_report_007.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC008     ', N'Báo cáo mẫu số 08', N'Báo cáo cuộc họp', N'LV003     ', N'CB003     ', CAST(N'2026-06-08' AS Date), N'Nội dung báo cáo mẫu số 08 phục vụ kiểm thử', N'/reports/demo_report_008.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC009     ', N'Báo cáo mẫu số 09', N'Báo cáo công văn', N'LV004     ', N'CB004     ', CAST(N'2026-06-09' AS Date), N'Nội dung báo cáo mẫu số 09 phục vụ kiểm thử', N'/reports/demo_report_009.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC010     ', N'Báo cáo mẫu số 10', N'Báo cáo nhiệm vụ', N'LV005     ', N'CB005     ', CAST(N'2026-06-10' AS Date), N'Nội dung báo cáo mẫu số 10 phục vụ kiểm thử', N'/reports/demo_report_010.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC011     ', N'Báo cáo mẫu số 11', N'Báo cáo kiến nghị', N'LV001     ', N'CB001     ', CAST(N'2026-06-11' AS Date), N'Nội dung báo cáo mẫu số 11 phục vụ kiểm thử', N'/reports/demo_report_011.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC012     ', N'Báo cáo mẫu số 12', N'Báo cáo cuộc họp', N'LV002     ', N'CB002     ', CAST(N'2026-06-12' AS Date), N'Nội dung báo cáo mẫu số 12 phục vụ kiểm thử', N'/reports/demo_report_012.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC013     ', N'Báo cáo mẫu số 13', N'Báo cáo công văn', N'LV003     ', N'CB003     ', CAST(N'2026-06-13' AS Date), N'Nội dung báo cáo mẫu số 13 phục vụ kiểm thử', N'/reports/demo_report_013.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC014     ', N'Báo cáo mẫu số 14', N'Báo cáo nhiệm vụ', N'LV004     ', N'CB004     ', CAST(N'2026-06-14' AS Date), N'Nội dung báo cáo mẫu số 14 phục vụ kiểm thử', N'/reports/demo_report_014.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC015     ', N'Báo cáo mẫu số 15', N'Báo cáo kiến nghị', N'LV005     ', N'CB005     ', CAST(N'2026-06-15' AS Date), N'Nội dung báo cáo mẫu số 15 phục vụ kiểm thử', N'/reports/demo_report_015.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC016     ', N'Báo cáo mẫu số 16', N'Báo cáo cuộc họp', N'LV001     ', N'CB001     ', CAST(N'2026-06-16' AS Date), N'Nội dung báo cáo mẫu số 16 phục vụ kiểm thử', N'/reports/demo_report_016.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC017     ', N'Báo cáo mẫu số 17', N'Báo cáo công văn', N'LV002     ', N'CB002     ', CAST(N'2026-06-17' AS Date), N'Nội dung báo cáo mẫu số 17 phục vụ kiểm thử', N'/reports/demo_report_017.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC018     ', N'Báo cáo mẫu số 18', N'Báo cáo nhiệm vụ', N'LV003     ', N'CB003     ', CAST(N'2026-06-18' AS Date), N'Nội dung báo cáo mẫu số 18 phục vụ kiểm thử', N'/reports/demo_report_018.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC019     ', N'Báo cáo mẫu số 19', N'Báo cáo kiến nghị', N'LV004     ', N'CB004     ', CAST(N'2026-06-19' AS Date), N'Nội dung báo cáo mẫu số 19 phục vụ kiểm thử', N'/reports/demo_report_019.pdf', N'Dữ liệu mẫu')
INSERT [dbo].[BAOCAO] ([MaBaoCao], [TenBaoCao], [LoaiBaoCao], [MaLinhVuc], [MaNguoiLap], [NgayLap], [NoiDungBaoCao], [TepBaoCao], [GhiChu]) VALUES (N'BC020     ', N'Báo cáo mẫu số 20', N'Báo cáo cuộc họp', N'LV005     ', N'CB005     ', CAST(N'2026-06-20' AS Date), N'Nội dung báo cáo mẫu số 20 phục vụ kiểm thử', N'/reports/demo_report_020.pdf', N'Dữ liệu mẫu')
GO
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP001     ', N'Văn phòng', N'Tham mưu tổng hợp, hành chính, văn thư, lưu trữ, quản trị cơ quan', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP002     ', N'Tổ chức - Kiểm tra', N'Công tác tổ chức, kiểm tra, theo dõi hoạt động Ban công tác Mặt trận', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP003     ', N'Dân chủ, giám sát và phản biện xã hội', N'Dân chủ ở cơ sở, giám sát, phản biện xã hội, tổng hợp ý kiến Nhân dân', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP004     ', N'Tuyên giáo và Công tác xã hội', N'Tuyên truyền, vận động, an sinh xã hội, chăm lo các đối tượng khó khăn', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP005     ', N'Dân tộc và Tôn giáo', N'Theo dõi, tham mưu công tác dân tộc, tôn giáo trên địa bàn', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP006     ', N'Công tác Phụ nữ', N'Công tác Hội Liên hiệp Phụ nữ và phong trào phụ nữ', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP007     ', N'Công tác Công đoàn', N'Công tác Công đoàn phường, chăm lo đoàn viên, người lao động', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP008     ', N'Công tác Cựu Chiến binh', N'Công tác Hội Cựu Chiến binh, gia đình chính sách, người có công', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP009     ', N'Công tác Đoàn và Thanh thiếu nhi', N'Công tác Đoàn TNCS Hồ Chí Minh, Hội LHTN và Đội TNTP', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP010     ', N'Quản trị hệ thống', N'Quản lý kỹ thuật hệ thống, tài khoản và phân quyền', N'Hoạt động', N'Dữ liệu mẫu')
INSERT [dbo].[BOPHAN] ([MaBoPhan], [TenBoPhan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'BP011     ', N'Cơ quan phối hợp', N'Cán bộ phối hợp liên ngành từ UBND, HĐND hoặc đơn vị liên quan', N'Hoạt động', N'Dữ liệu mẫu')
GO
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB001     ', N'Cán bộ mẫu 01', N'Nam', NULL, N'0900000001', N'canbo01@example.com', N'Đơn vị hành chính mẫu', N'CV001     ', N'BP001     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB002     ', N'Cán bộ mẫu 02', N'Nữ', NULL, N'0900000002', N'canbo02@example.com', N'Đơn vị hành chính mẫu', N'CV002     ', N'BP006     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB003     ', N'Cán bộ mẫu 03', N'Nữ', NULL, N'0900000003', N'canbo03@example.com', N'Đơn vị hành chính mẫu', N'CV002     ', N'BP007     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB004     ', N'Cán bộ mẫu 04', N'Nam', NULL, N'0900000004', N'canbo04@example.com', N'Đơn vị hành chính mẫu', N'CV002     ', N'BP008     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB005     ', N'Cán bộ mẫu 05', N'Nam', NULL, N'0900000005', N'canbo05@example.com', N'Đơn vị hành chính mẫu', N'CV002     ', N'BP009     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB006     ', N'Cán bộ mẫu 06', N'Nữ', NULL, N'0900000006', N'canbo06@example.com', N'Đơn vị hành chính mẫu', N'CV004     ', N'BP001     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB007     ', N'Cán bộ mẫu 07', N'Nữ', NULL, N'0900000007', N'canbo07@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP006     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB008     ', N'Cán bộ mẫu 08', N'Nữ', NULL, N'0900000008', N'canbo08@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP003     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB009     ', N'Cán bộ mẫu 09', N'Nữ', NULL, N'0900000009', N'canbo09@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP005     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB010     ', N'Cán bộ mẫu 10', N'Nam', NULL, N'0900000010', N'canbo10@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP001     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB011     ', N'Cán bộ mẫu 11', N'Nữ', NULL, N'0900000011', N'canbo11@example.com', N'Đơn vị hành chính mẫu', N'CV004     ', N'BP001     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB012     ', N'Cán bộ mẫu 12', N'Nữ', NULL, N'0900000012', N'canbo12@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP002     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB013     ', N'Cán bộ mẫu 13', N'Nữ', NULL, N'0900000013', N'canbo13@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP003     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB014     ', N'Cán bộ mẫu 14', N'Nam', NULL, N'0900000014', N'canbo14@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP008     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB015     ', N'Cán bộ mẫu 15', N'Nữ', NULL, N'0900000015', N'canbo15@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP009     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB016     ', N'Cán bộ mẫu 16', N'Nam', NULL, N'0900000016', N'canbo16@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP004     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB017     ', N'Cán bộ mẫu 17', N'Nam', NULL, N'0900000017', N'canbo17@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP009     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB018     ', N'Cán bộ mẫu 18', N'Nữ', NULL, N'0900000018', N'canbo18@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP011     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB019     ', N'Cán bộ mẫu 19', N'Nam', NULL, N'0900000019', N'canbo19@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP011     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB020     ', N'Cán bộ mẫu 20', N'Nữ', NULL, N'0900000020', N'canbo20@example.com', N'Đơn vị hành chính mẫu', N'CV005     ', N'BP010     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB021     ', N'Cán bộ mẫu 21', N'Nam', CAST(N'2005-12-24' AS Date), N'0900000021', N'canbo21@example.com', N'Đơn vị hành chính mẫu', N'CV003     ', N'BP005     ', N'1', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CB022     ', N'Cán bộ mẫu 22', N'Nam', CAST(N'2003-06-24' AS Date), N'0900000022', N'canbo22@example.com', N'Đơn vị hành chính mẫu', N'CV004     ', N'BP011     ', N'1', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
INSERT [dbo].[CANBO] ([MaCanBo], [HoTen], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi], [MaChucVu], [MaBoPhan], [TrangThai], [GhiChu]) VALUES (N'CBADMIN001', N'Cán bộ mẫu 23', N'Nữ', CAST(N'2003-01-01' AS Date), N'0900000023', N'canbo23@example.com', N'Đơn vị hành chính mẫu', N'CV005     ', N'BP001     ', N'Hoạt động', N'Dữ liệu mẫu phục vụ kiểm thử hệ thống')
GO
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [MoTa], [TrangThai], [GhiChu]) VALUES (N'CV001     ', N'Chủ tịch', N'Chủ tịch Ủy ban MTTQ Việt Nam phường, Thủ trưởng đơn vị', N'Hoạt động', N'Chức vụ lãnh đạo')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [MoTa], [TrangThai], [GhiChu]) VALUES (N'CV002     ', N'Phó Chủ tịch', N'Phó Chủ tịch Ủy ban MTTQ Việt Nam phường, phụ trách mảng công tác', N'Hoạt động', N'Chức vụ lãnh đạo')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [MoTa], [TrangThai], [GhiChu]) VALUES (N'CV003     ', N'Chuyên viên/Cán bộ tham mưu', N'Tham mưu, tổng hợp và xử lý nghiệp vụ theo lĩnh vực được phân công', N'Hoạt động', N'Chức vụ chuyên môn')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [MoTa], [TrangThai], [GhiChu]) VALUES (N'CV004     ', N'Văn thư - lưu trữ', N'Tiếp nhận, phát hành, lưu trữ và quản lý văn bản đi - đến', N'Hoạt động', N'Chức vụ văn phòng')
INSERT [dbo].[CHUCVU] ([MaChucVu], [TenChucVu], [MoTa], [TrangThai], [GhiChu]) VALUES (N'CV005     ', N'Quản trị hệ thống', N'Quản lý tài khoản, phân quyền và dữ liệu hệ thống', N'Hoạt động', N'Chức vụ kỹ thuật')
GO
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH001     ', N'Cuộc họp mẫu số 01', CAST(N'2026-06-02T08:00:00.000' AS DateTime), CAST(N'2026-06-02T09:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 01 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB001     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH002     ', N'Cuộc họp mẫu số 02', CAST(N'2026-06-05T14:00:00.000' AS DateTime), CAST(N'2026-06-05T16:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 02 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB001     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH003     ', N'Cuộc họp mẫu số 03', CAST(N'2026-06-08T08:00:00.000' AS DateTime), CAST(N'2026-06-08T10:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 03 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB001     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH004     ', N'Cuộc họp mẫu số 04', CAST(N'2026-06-10T08:00:00.000' AS DateTime), CAST(N'2026-06-10T09:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 04 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB002     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH005     ', N'Cuộc họp mẫu số 05', CAST(N'2026-06-12T15:00:00.000' AS DateTime), CAST(N'2026-06-12T16:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 05 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB005     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH006     ', N'Cuộc họp mẫu số 06', CAST(N'2026-06-13T08:00:00.000' AS DateTime), CAST(N'2026-06-13T10:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 06 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB003     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH007     ', N'Cuộc họp mẫu số 07', CAST(N'2026-06-14T14:00:00.000' AS DateTime), CAST(N'2026-06-14T16:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 07 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB001     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH008     ', N'Cuộc họp mẫu số 08', CAST(N'2026-06-16T08:00:00.000' AS DateTime), CAST(N'2026-06-16T10:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 08 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB004     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH009     ', N'Cuộc họp mẫu số 09', CAST(N'2026-06-17T14:00:00.000' AS DateTime), CAST(N'2026-06-17T15:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 09 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB005     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH010     ', N'Cuộc họp mẫu số 10', CAST(N'2026-06-18T08:00:00.000' AS DateTime), CAST(N'2026-06-18T09:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 10 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB005     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH011     ', N'Cuộc họp mẫu số 11', CAST(N'2026-06-19T08:00:00.000' AS DateTime), CAST(N'2026-06-19T09:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 11 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB001     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH012     ', N'Cuộc họp mẫu số 12', CAST(N'2026-06-20T14:00:00.000' AS DateTime), CAST(N'2026-06-20T16:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 12 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB002     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH013     ', N'Cuộc họp mẫu số 13', CAST(N'2026-06-22T08:00:00.000' AS DateTime), CAST(N'2026-06-22T10:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 13 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB002     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH014     ', N'Cuộc họp mẫu số 14', CAST(N'2026-06-23T14:00:00.000' AS DateTime), CAST(N'2026-06-23T15:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 14 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB005     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH015     ', N'Cuộc họp mẫu số 15', CAST(N'2026-06-24T08:00:00.000' AS DateTime), CAST(N'2026-06-24T09:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 15 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB003     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH016     ', N'Cuộc họp mẫu số 16', CAST(N'2026-06-25T08:00:00.000' AS DateTime), CAST(N'2026-06-25T10:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 16 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB002     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH017     ', N'Cuộc họp mẫu số 17', CAST(N'2026-06-25T14:00:00.000' AS DateTime), CAST(N'2026-06-25T15:30:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 17 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB004     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH018     ', N'Cuộc họp mẫu số 18', CAST(N'2026-06-26T08:00:00.000' AS DateTime), CAST(N'2026-06-26T10:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 18 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB001     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH019     ', N'Cuộc họp mẫu số 19', CAST(N'2026-06-29T08:00:00.000' AS DateTime), CAST(N'2026-06-29T10:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 19 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB001     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH020     ', N'Cuộc họp mẫu số 20', CAST(N'2026-06-30T14:00:00.000' AS DateTime), CAST(N'2026-06-30T16:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 20 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB002     ', N'Dữ liệu mẫu')
INSERT [dbo].[HOINGHICUOCHOP] ([MaCuocHop], [TenCuocHop], [ThoiGianBatDau], [ThoiGianKetThuc], [DiaDiem], [NoiDung], [MaNguoiChuTri], [GhiChu]) VALUES (N'CH021     ', N'Cuộc họp mẫu số 21', CAST(N'2026-06-27T13:00:00.000' AS DateTime), CAST(N'2026-06-27T15:00:00.000' AS DateTime), N'Phòng họp mẫu', N'Nội dung cuộc họp mẫu số 21 phục vụ kiểm thử chức năng quản lý hội nghị', N'CB002     ', N'Dữ liệu mẫu')
GO
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP001     ', N'Khu phố 1', N'Khu phố 1, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP002     ', N'Khu phố 2', N'Khu phố 2, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP003     ', N'Khu phố 3', N'Khu phố 3, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP004     ', N'Khu phố 4', N'Khu phố 4, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP005     ', N'Khu phố 5', N'Khu phố 5, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP006     ', N'Khu phố 6', N'Khu phố 6, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP007     ', N'Khu phố 7', N'Khu phố 7, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP008     ', N'Khu phố 8', N'Khu phố 8, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP009     ', N'Khu phố 9', N'Khu phố 9, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP010     ', N'Khu phố 10', N'Khu phố 10, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP011     ', N'Khu phố 11', N'Khu phố 11, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP012     ', N'Khu phố 12', N'Khu phố 12, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP013     ', N'Khu phố 13', N'Khu phố 13, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP014     ', N'Khu phố 14', N'Khu phố 14, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP015     ', N'Khu phố 15', N'Khu phố 15, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP016     ', N'Khu phố 16', N'Khu phố 16, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP017     ', N'Khu phố 17', N'Khu phố 17, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP018     ', N'Khu phố 18', N'Khu phố 18, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP019     ', N'Khu phố 19', N'Khu phố 19, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP020     ', N'Khu phố 20', N'Khu phố 20, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP021     ', N'Khu phố 21', N'Khu phố 21, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP022     ', N'Khu phố 22', N'Khu phố 22, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP023     ', N'Khu phố 23', N'Khu phố 23, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP024     ', N'Khu phố 24', N'Khu phố 24, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP025     ', N'Khu phố 25', N'Khu phố 25, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP026     ', N'Khu phố 26', N'Khu phố 26, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP027     ', N'Khu phố 27', N'Khu phố 27, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP028     ', N'Khu phố 28', N'Khu phố 28, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP029     ', N'Khu phố 29', N'Khu phố 29, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP030     ', N'Khu phố 30', N'Khu phố 30, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP031     ', N'Khu phố 31', N'Khu phố 31, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP032     ', N'Khu phố 32', N'Khu phố 32, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP033     ', N'Khu phố 33', N'Khu phố 33, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP034     ', N'Khu phố 34', N'Khu phố 34, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP035     ', N'Khu phố 35', N'Khu phố 35, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP036     ', N'Khu phố 36', N'Khu phố 36, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP037     ', N'Khu phố 37', N'Khu phố 37, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP038     ', N'Khu phố 38', N'Khu phố 38, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP039     ', N'Khu phố 39', N'Khu phố 39, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP040     ', N'Khu phố 40', N'Khu phố 40, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP041     ', N'Khu phố 41', N'Khu phố 41, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP042     ', N'Khu phố 42', N'Khu phố 42, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP043     ', N'Khu phố 43', N'Khu phố 43, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP044     ', N'Khu phố 44', N'Khu phố 44, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP045     ', N'Khu phố 45', N'Khu phố 45, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP046     ', N'Khu phố 46', N'Khu phố 46, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP047     ', N'Khu phố 47', N'Khu phố 47, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP048     ', N'Khu phố 48', N'Khu phố 48, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP049     ', N'Khu phố 49', N'Khu phố 49, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP050     ', N'Khu phố 50', N'Khu phố 50, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP051     ', N'Khu phố 51', N'Khu phố 51, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP052     ', N'Khu phố 52', N'Khu phố 52, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP053     ', N'Khu phố 53', N'Khu phố 53, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP054     ', N'Khu phố 54', N'Khu phố 54, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP055     ', N'Khu phố 55', N'Khu phố 55, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP056     ', N'Khu phố 56', N'Khu phố 56, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP057     ', N'Khu phố 57', N'Khu phố 57, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP058     ', N'Khu phố 58', N'Khu phố 58, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
INSERT [dbo].[KHUPHO] ([MaKhuPho], [TenKhuPho], [DiaChi], [TrangThai], [GhiChu]) VALUES (N'KP059     ', N'Khu phố 59', N'Khu phố 59, phường Mẫu', N'Hoạt động', N'Danh mục khu phố theo phân công cụm')
GO
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV001     ', N'Văn phòng', N'Văn phòng, hành chính, văn thư, lưu trữ, tổng hợp', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV002     ', N'Dân chủ - Giám sát', N'Dân chủ ở cơ sở, giám sát và phản biện xã hội', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV003     ', N'Tuyên giáo', N'Tuyên truyền, vận động, nắm bắt dư luận xã hội', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV004     ', N'Công tác xã hội', N'An sinh xã hội, chăm lo hộ khó khăn, giảm nghèo, hỗ trợ đối tượng yếu thế', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV005     ', N'Đoàn và Thanh thiếu nhi', N'Công tác Đoàn, Hội Liên hiệp Thanh niên và Đội Thiếu niên Tiền phong', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV006     ', N'Tổ chức - Kiểm tra', N'Công tác tổ chức, kiểm tra, kiện toàn Ban công tác Mặt trận khu phố', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV007     ', N'Phụ nữ', N'Công tác Hội Liên hiệp Phụ nữ và phong trào phụ nữ', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV008     ', N'Công đoàn', N'Công tác Công đoàn, chăm lo đoàn viên và người lao động', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV009     ', N'Cựu Chiến binh', N'Công tác Hội Cựu Chiến binh, người có công, gia đình chính sách', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
INSERT [dbo].[LINHVUC] ([MaLinhVuc], [TenLinhVuc], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LV010     ', N'Dân tộc - Tôn giáo', N'Công tác dân tộc, tôn giáo và vận động chức sắc, tín đồ', N'Hoạt động', N'Danh mục lĩnh vực theo cơ quan MTTQ')
GO
INSERT [dbo].[LOAIVANBAN] ([MaLoaiVanBan], [TenLoaiVanBan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LVB001    ', N'Công văn', N'Văn bản trao đổi công việc', N'Hoạt động', N'Danh mục mẫu')
INSERT [dbo].[LOAIVANBAN] ([MaLoaiVanBan], [TenLoaiVanBan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LVB002    ', N'Kế hoạch', N'Văn bản kế hoạch triển khai công việc', N'Hoạt động', N'Danh mục mẫu')
INSERT [dbo].[LOAIVANBAN] ([MaLoaiVanBan], [TenLoaiVanBan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LVB003    ', N'Thông báo', N'Văn bản thông báo nội dung công tác', N'Hoạt động', N'Danh mục mẫu')
INSERT [dbo].[LOAIVANBAN] ([MaLoaiVanBan], [TenLoaiVanBan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LVB004    ', N'Báo cáo', N'Văn bản báo cáo kết quả thực hiện', N'Hoạt động', N'Danh mục mẫu')
INSERT [dbo].[LOAIVANBAN] ([MaLoaiVanBan], [TenLoaiVanBan], [MoTa], [TrangThai], [GhiChu]) VALUES (N'LVB005    ', N'Quyết định', N'Văn bản quyết định, phân công', N'Hoạt động', N'Danh mục mẫu')
GO
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK001     ', N'TK001     ', CAST(N'2026-06-01T15:00:00.000' AS DateTime), N'Đăng nhập', N'Thao tác mẫu số 01', N'192.0.2.2', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK002     ', N'TK002     ', CAST(N'2026-06-02T15:00:00.000' AS DateTime), N'Thêm công văn', N'Thao tác mẫu số 02', N'192.0.2.3', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK003     ', N'TK003     ', CAST(N'2026-06-03T15:00:00.000' AS DateTime), N'Cập nhật nhiệm vụ', N'Thao tác mẫu số 03', N'192.0.2.4', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK004     ', N'TK004     ', CAST(N'2026-06-04T15:00:00.000' AS DateTime), N'Lập báo cáo', N'Thao tác mẫu số 04', N'192.0.2.5', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK005     ', N'TK005     ', CAST(N'2026-06-05T15:00:00.000' AS DateTime), N'Đăng nhập', N'Thao tác mẫu số 05', N'192.0.2.6', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK006     ', N'TK006     ', CAST(N'2026-06-06T15:00:00.000' AS DateTime), N'Thêm công văn', N'Thao tác mẫu số 06', N'192.0.2.7', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK007     ', N'TK007     ', CAST(N'2026-06-07T15:00:00.000' AS DateTime), N'Cập nhật nhiệm vụ', N'Thao tác mẫu số 07', N'192.0.2.8', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK008     ', N'TK008     ', CAST(N'2026-06-08T15:00:00.000' AS DateTime), N'Lập báo cáo', N'Thao tác mẫu số 08', N'192.0.2.9', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK009     ', N'TK009     ', CAST(N'2026-06-09T15:00:00.000' AS DateTime), N'Đăng nhập', N'Thao tác mẫu số 09', N'192.0.2.10', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK010     ', N'TK010     ', CAST(N'2026-06-10T15:00:00.000' AS DateTime), N'Thêm công văn', N'Thao tác mẫu số 10', N'192.0.2.11', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK011     ', N'TK011     ', CAST(N'2026-06-11T15:00:00.000' AS DateTime), N'Cập nhật nhiệm vụ', N'Thao tác mẫu số 11', N'192.0.2.12', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK012     ', N'TK012     ', CAST(N'2026-06-12T15:00:00.000' AS DateTime), N'Lập báo cáo', N'Thao tác mẫu số 12', N'192.0.2.13', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK013     ', N'TK013     ', CAST(N'2026-06-13T15:00:00.000' AS DateTime), N'Đăng nhập', N'Thao tác mẫu số 13', N'192.0.2.14', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK014     ', N'TK014     ', CAST(N'2026-06-14T15:00:00.000' AS DateTime), N'Thêm công văn', N'Thao tác mẫu số 14', N'192.0.2.15', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK015     ', N'TK015     ', CAST(N'2026-06-15T15:00:00.000' AS DateTime), N'Cập nhật nhiệm vụ', N'Thao tác mẫu số 15', N'192.0.2.16', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK016     ', N'TK016     ', CAST(N'2026-06-16T15:00:00.000' AS DateTime), N'Lập báo cáo', N'Thao tác mẫu số 16', N'192.0.2.17', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK017     ', N'TK017     ', CAST(N'2026-06-17T15:00:00.000' AS DateTime), N'Đăng nhập', N'Thao tác mẫu số 17', N'192.0.2.18', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK018     ', N'TK018     ', CAST(N'2026-06-18T15:00:00.000' AS DateTime), N'Thêm công văn', N'Thao tác mẫu số 18', N'192.0.2.19', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK019     ', N'TK019     ', CAST(N'2026-06-19T15:00:00.000' AS DateTime), N'Cập nhật nhiệm vụ', N'Thao tác mẫu số 19', N'192.0.2.20', N'Nhật ký mẫu đã ẩn IP thật')
INSERT [dbo].[NHATKYHETHONG] ([MaNhatKy], [MaTaiKhoan], [ThoiGianThaoTac], [ChucNangThaoTac], [NoiDungThaoTac], [DiaChiIP], [GhiChu]) VALUES (N'NK020     ', N'TK020     ', CAST(N'2026-06-20T15:00:00.000' AS DateTime), N'Lập báo cáo', N'Thao tác mẫu số 20', N'192.0.2.21', N'Nhật ký mẫu đã ẩn IP thật')
GO
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV001     ', N'Nhiệm vụ mẫu số 01', N'Nội dung nhiệm vụ mẫu số 01 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI001   ', N'LV001     ', N'CB002     ', CAST(N'2026-06-01' AS Date), CAST(N'2026-06-06' AS Date), N'Khẩn', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV002     ', N'Nhiệm vụ mẫu số 02', N'Nội dung nhiệm vụ mẫu số 02 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI002   ', N'LV001     ', N'CB001     ', CAST(N'2026-06-02' AS Date), CAST(N'2026-06-09' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 02', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV003     ', N'Nhiệm vụ mẫu số 03', N'Nội dung nhiệm vụ mẫu số 03 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI003   ', N'LV001     ', N'CB001     ', CAST(N'2026-06-03' AS Date), CAST(N'2026-06-10' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 03', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV004     ', N'Nhiệm vụ mẫu số 04', N'Nội dung nhiệm vụ mẫu số 04 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI004   ', N'LV004     ', N'CB002     ', CAST(N'2026-06-04' AS Date), CAST(N'2026-06-07' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV005     ', N'Nhiệm vụ mẫu số 05', N'Nội dung nhiệm vụ mẫu số 05 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI005   ', N'LV005     ', N'CB001     ', CAST(N'2026-06-05' AS Date), CAST(N'2026-06-12' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV006     ', N'Nhiệm vụ mẫu số 06', N'Nội dung nhiệm vụ mẫu số 06 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI006   ', N'LV001     ', N'CB001     ', CAST(N'2026-06-06' AS Date), CAST(N'2026-06-13' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 06', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV007     ', N'Nhiệm vụ mẫu số 07', N'Nội dung nhiệm vụ mẫu số 07 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI007   ', N'LV001     ', N'CB001     ', CAST(N'2026-06-07' AS Date), CAST(N'2026-06-14' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 07', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV008     ', N'Nhiệm vụ mẫu số 08', N'Nội dung nhiệm vụ mẫu số 08 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI008   ', N'LV001     ', N'CB002     ', CAST(N'2026-06-08' AS Date), CAST(N'2026-06-09' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV009     ', N'Nhiệm vụ mẫu số 09', N'Nội dung nhiệm vụ mẫu số 09 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI009   ', N'LV004     ', N'CB002     ', CAST(N'2026-06-09' AS Date), CAST(N'2026-06-11' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV010     ', N'Nhiệm vụ mẫu số 10', N'Nội dung nhiệm vụ mẫu số 10 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI010   ', N'LV001     ', N'CB001     ', CAST(N'2026-06-10' AS Date), CAST(N'2026-06-15' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 10', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV011     ', N'Nhiệm vụ mẫu số 11', N'Nội dung nhiệm vụ mẫu số 11 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI011   ', N'LV005     ', N'CB005     ', CAST(N'2026-06-11' AS Date), CAST(N'2026-06-18' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 11', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV012     ', N'Nhiệm vụ mẫu số 12', N'Nội dung nhiệm vụ mẫu số 12 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI012   ', N'LV003     ', N'CB001     ', CAST(N'2026-06-12' AS Date), CAST(N'2026-06-22' AS Date), N'Khẩn', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV013     ', N'Nhiệm vụ mẫu số 13', N'Nội dung nhiệm vụ mẫu số 13 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI013   ', N'LV003     ', N'CB005     ', CAST(N'2026-06-13' AS Date), CAST(N'2026-06-25' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV014     ', N'Nhiệm vụ mẫu số 14', N'Nội dung nhiệm vụ mẫu số 14 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI014   ', N'LV001     ', N'CB002     ', CAST(N'2026-06-14' AS Date), CAST(N'2026-06-17' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 14', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV015     ', N'Nhiệm vụ mẫu số 15', N'Nội dung nhiệm vụ mẫu số 15 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI015   ', N'LV005     ', N'CB001     ', CAST(N'2026-06-15' AS Date), CAST(N'2026-06-22' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 15', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV016     ', N'Nhiệm vụ mẫu số 16', N'Nội dung nhiệm vụ mẫu số 16 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI016   ', N'LV002     ', N'CB003     ', CAST(N'2026-06-16' AS Date), CAST(N'2026-06-20' AS Date), N'Khẩn', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV017     ', N'Nhiệm vụ mẫu số 17', N'Nội dung nhiệm vụ mẫu số 17 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI017   ', N'LV003     ', N'CB002     ', CAST(N'2026-06-17' AS Date), CAST(N'2026-07-05' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV018     ', N'Nhiệm vụ mẫu số 18', N'Nội dung nhiệm vụ mẫu số 18 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI018   ', N'LV005     ', N'CB001     ', CAST(N'2026-06-18' AS Date), CAST(N'2026-06-25' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 18', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV019     ', N'Nhiệm vụ mẫu số 19', N'Nội dung nhiệm vụ mẫu số 19 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI019   ', N'LV004     ', N'CB002     ', CAST(N'2026-06-19' AS Date), CAST(N'2026-06-21' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 19', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV020     ', N'Nhiệm vụ mẫu số 20', N'Nội dung nhiệm vụ mẫu số 20 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI020   ', N'LV005     ', N'CB001     ', CAST(N'2026-06-20' AS Date), CAST(N'2026-06-26' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV021     ', N'Nhiệm vụ mẫu số 21', N'Nội dung nhiệm vụ mẫu số 21 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN001  ', NULL, N'LV002     ', N'CB001     ', CAST(N'2026-06-01' AS Date), CAST(N'2026-06-06' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 21', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV022     ', N'Nhiệm vụ mẫu số 22', N'Nội dung nhiệm vụ mẫu số 22 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN002  ', NULL, N'LV001     ', N'CB001     ', CAST(N'2026-06-02' AS Date), CAST(N'2026-06-15' AS Date), N'Rất khẩn', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV023     ', N'Nhiệm vụ mẫu số 23', N'Nội dung nhiệm vụ mẫu số 23 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN003  ', NULL, N'LV003     ', N'CB005     ', CAST(N'2026-06-03' AS Date), CAST(N'2026-12-31' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV024     ', N'Nhiệm vụ mẫu số 24', N'Nội dung nhiệm vụ mẫu số 24 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN004  ', NULL, N'LV001     ', N'CB002     ', CAST(N'2026-06-04' AS Date), CAST(N'2026-06-09' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 24', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV025     ', N'Nhiệm vụ mẫu số 25', N'Nội dung nhiệm vụ mẫu số 25 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN005  ', NULL, N'LV001     ', N'CB001     ', CAST(N'2026-06-05' AS Date), CAST(N'2026-06-10' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 25', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV026     ', N'Nhiệm vụ mẫu số 26', N'Nội dung nhiệm vụ mẫu số 26 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN006  ', NULL, N'LV004     ', N'CB004     ', CAST(N'2026-06-06' AS Date), CAST(N'2026-06-11' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 26', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV027     ', N'Nhiệm vụ mẫu số 27', N'Nội dung nhiệm vụ mẫu số 27 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN007  ', NULL, N'LV001     ', N'CB001     ', CAST(N'2026-06-07' AS Date), CAST(N'2026-07-10' AS Date), N'Rất khẩn', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV028     ', N'Nhiệm vụ mẫu số 28', N'Nội dung nhiệm vụ mẫu số 28 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN008  ', NULL, N'LV001     ', N'CB002     ', CAST(N'2026-06-08' AS Date), CAST(N'2026-06-13' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 28', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV029     ', N'Nhiệm vụ mẫu số 29', N'Nội dung nhiệm vụ mẫu số 29 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN009  ', NULL, N'LV001     ', N'CB002     ', CAST(N'2026-06-09' AS Date), CAST(N'2026-06-14' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 29', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV030     ', N'Nhiệm vụ mẫu số 30', N'Nội dung nhiệm vụ mẫu số 30 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN010  ', NULL, N'LV001     ', N'CB002     ', CAST(N'2026-06-10' AS Date), CAST(N'2026-06-15' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 30', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV031     ', N'Nhiệm vụ mẫu số 31', N'Nội dung nhiệm vụ mẫu số 31 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN011  ', NULL, N'LV002     ', N'CB003     ', CAST(N'2026-06-11' AS Date), CAST(N'2026-06-16' AS Date), N'Khẩn', N'Hoàn thành', N'Kết quả xử lý mẫu số 31', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV032     ', N'Nhiệm vụ mẫu số 32', N'Nội dung nhiệm vụ mẫu số 32 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN012  ', NULL, N'LV001     ', N'CB002     ', CAST(N'2026-06-12' AS Date), CAST(N'2026-12-31' AS Date), N'Khẩn', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV033     ', N'Nhiệm vụ mẫu số 33', N'Nội dung nhiệm vụ mẫu số 33 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN013  ', NULL, N'LV001     ', N'CB002     ', CAST(N'2026-06-13' AS Date), CAST(N'2026-06-18' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV034     ', N'Nhiệm vụ mẫu số 34', N'Nội dung nhiệm vụ mẫu số 34 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN014  ', NULL, N'LV001     ', N'CB002     ', CAST(N'2026-06-14' AS Date), CAST(N'2026-06-19' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 34', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV035     ', N'Nhiệm vụ mẫu số 35', N'Nội dung nhiệm vụ mẫu số 35 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN015  ', NULL, N'LV003     ', N'CB005     ', CAST(N'2026-06-15' AS Date), CAST(N'2026-06-25' AS Date), N'Bình thường', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV036     ', N'Nhiệm vụ mẫu số 36', N'Nội dung nhiệm vụ mẫu số 36 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN016  ', NULL, N'LV003     ', N'CB004     ', CAST(N'2026-06-16' AS Date), CAST(N'2026-06-25' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 36', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV037     ', N'Nhiệm vụ mẫu số 37', N'Nội dung nhiệm vụ mẫu số 37 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN017  ', NULL, N'LV004     ', N'CB005     ', CAST(N'2026-06-17' AS Date), CAST(N'2026-12-31' AS Date), N'Khẩn', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV038     ', N'Nhiệm vụ mẫu số 38', N'Nội dung nhiệm vụ mẫu số 38 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN018  ', NULL, N'LV003     ', N'CB005     ', CAST(N'2026-06-18' AS Date), CAST(N'2026-06-25' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 38', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV039     ', N'Nhiệm vụ mẫu số 39', N'Nội dung nhiệm vụ mẫu số 39 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN019  ', NULL, N'LV001     ', N'CB001     ', CAST(N'2026-06-19' AS Date), CAST(N'2026-06-30' AS Date), N'Rất khẩn', N'Đang xử lý', NULL, N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV040     ', N'Nhiệm vụ mẫu số 40', N'Nội dung nhiệm vụ mẫu số 40 dùng để kiểm thử phân công và theo dõi tiến độ', N'VBDEN020  ', NULL, N'LV001     ', N'CB002     ', CAST(N'2026-06-20' AS Date), CAST(N'2026-06-25' AS Date), N'Bình thường', N'Hoàn thành', N'Kết quả xử lý mẫu số 40', N'Dữ liệu mẫu')
INSERT [dbo].[NHIEMVU] ([MaNhiemVu], [TenNhiemVu], [NoiDung], [MaVanBanDen], [MaVanBanDi], [MaLinhVuc], [MaNguoiGiao], [NgayGiao], [ThoiHanHoanThanh], [MucDoUuTien], [TrangThai], [KetQua], [GhiChu]) VALUES (N'NV041     ', N'Nhiệm vụ mẫu số 21', N'Nội dung nhiệm vụ mẫu số 21 dùng để kiểm thử phân công và theo dõi tiến độ', NULL, N'VBDI021   ', N'LV008     ', N'CB020     ', CAST(N'2026-06-25' AS Date), CAST(N'2026-06-27' AS Date), N'Bình thường', N'Đang xử lý', N'Kết quả xử lý mẫu số 21', N'Dữ liệu mẫu')
GO
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP045     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP046     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP047     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP048     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP049     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP050     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP051     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP052     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP053     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP054     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP055     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP056     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP057     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP058     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'KP059     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP031     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP032     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP033     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP034     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP035     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP036     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP037     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP038     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP039     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP040     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP041     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP042     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP043     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'KP044     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP016     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP017     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP018     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP019     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP020     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP021     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP022     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP023     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP024     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP025     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP026     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP027     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP028     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP029     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'KP030     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP001     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP002     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP003     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP004     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP005     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP006     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP007     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP008     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP009     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP010     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP011     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP012     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP013     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP014     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGKHUPHO] ([MaCanBo], [MaKhuPho], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'KP015     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
GO
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB001     ', N'LV001     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB001     ', N'LV006     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'LV001     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'LV006     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB002     ', N'LV007     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'LV002     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB003     ', N'LV008     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'LV009     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB004     ', N'LV010     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'LV003     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'LV004     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB005     ', N'LV005     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB006     ', N'LV001     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB006     ', N'LV006     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB007     ', N'LV006     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB007     ', N'LV007     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB008     ', N'LV002     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB008     ', N'LV008     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB009     ', N'LV010     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB010     ', N'LV001     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB011     ', N'LV001     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB012     ', N'LV006     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB013     ', N'LV002     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB014     ', N'LV009     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB015     ', N'LV003     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB015     ', N'LV005     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB016     ', N'LV003     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGLINHVUC] ([MaCanBo], [MaLinhVuc], [NgayBatDau], [NgayKetThuc], [GhiChu]) VALUES (N'CB017     ', N'LV005     ', CAST(N'2026-01-01' AS Date), NULL, N'Dữ liệu mẫu')
GO
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV001     ', N'CB002     ', N'Lãnh đạo phụ trách', CAST(N'2026-06-01' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV001     ', N'CB007     ', N'Tham mưu xử lý', CAST(N'2026-06-01' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV002     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-02' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV002     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-02' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV003     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-03' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV003     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-03' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV003     ', N'CB008     ', N'Phối hợp', CAST(N'2026-06-03' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV004     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-04' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV004     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-04' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV005     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-05' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV005     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-05' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV006     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-06' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV006     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-06' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV007     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-07' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV007     ', N'CB002     ', N'Phối hợp chỉ đạo', CAST(N'2026-06-07' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV007     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-07' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV008     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-08' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV008     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-08' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV009     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-09' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV009     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-09' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV010     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-10' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV010     ', N'CB007     ', N'Tham mưu xử lý', CAST(N'2026-06-10' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV011     ', N'CB005     ', N'Chủ trì', CAST(N'2026-06-11' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV011     ', N'CB006     ', N'Phối hợp', CAST(N'2026-06-11' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV012     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-12' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV012     ', N'CB005     ', N'Phối hợp nội dung', CAST(N'2026-06-12' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV012     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-12' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV013     ', N'CB005     ', N'Chủ trì', CAST(N'2026-06-13' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV013     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-13' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV014     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-14' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV014     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-14' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV015     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-15' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV015     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-15' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV016     ', N'CB003     ', N'Chủ trì', CAST(N'2026-06-16' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV016     ', N'CB008     ', N'Tham mưu xử lý', CAST(N'2026-06-16' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV017     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-17' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV017     ', N'CB005     ', N'Phối hợp tuyên truyền', CAST(N'2026-06-17' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV017     ', N'CB008     ', N'Phối hợp', CAST(N'2026-06-17' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV018     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-18' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV018     ', N'CB002     ', N'Phối hợp chỉ đạo', CAST(N'2026-06-18' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV018     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-18' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV019     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-19' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV019     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-19' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV020     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-20' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV020     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-20' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV021     ', N'CB003     ', N'Lãnh đạo phụ trách', CAST(N'2026-06-01' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV021     ', N'CB008     ', N'Tham mưu xử lý', CAST(N'2026-06-01' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV022     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-02' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV022     ', N'CB002     ', N'Phối hợp chỉ đạo', CAST(N'2026-06-02' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV022     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-02' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV023     ', N'CB005     ', N'Chủ trì', CAST(N'2026-06-03' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV023     ', N'CB006     ', N'Phối hợp', CAST(N'2026-06-03' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV024     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-04' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV024     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-04' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV025     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-05' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV025     ', N'CB006     ', N'Phối hợp', CAST(N'2026-06-05' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV026     ', N'CB004     ', N'Chủ trì', CAST(N'2026-06-06' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV026     ', N'CB007     ', N'Phối hợp', CAST(N'2026-06-06' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV027     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-07' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV027     ', N'CB002     ', N'Phối hợp chỉ đạo', CAST(N'2026-06-07' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV027     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-07' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV028     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-08' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV028     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-08' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV029     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-09' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV029     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-09' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV030     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-10' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV030     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-10' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV031     ', N'CB003     ', N'Chủ trì', CAST(N'2026-06-11' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV031     ', N'CB008     ', N'Tham mưu xử lý', CAST(N'2026-06-11' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV032     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-12' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV032     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-12' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV033     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-13' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV033     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-13' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV034     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-14' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV034     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-14' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV035     ', N'CB005     ', N'Chủ trì', CAST(N'2026-06-15' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV035     ', N'CB006     ', N'Phối hợp', CAST(N'2026-06-15' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV036     ', N'CB004     ', N'Chủ trì', CAST(N'2026-06-16' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV036     ', N'CB005     ', N'Phối hợp tuyên truyền', CAST(N'2026-06-16' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV037     ', N'CB005     ', N'Chủ trì', CAST(N'2026-06-17' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV037     ', N'CB007     ', N'Phối hợp', CAST(N'2026-06-17' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV038     ', N'CB005     ', N'Chủ trì', CAST(N'2026-06-18' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV038     ', N'CB006     ', N'Phối hợp', CAST(N'2026-06-18' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV039     ', N'CB001     ', N'Chủ trì', CAST(N'2026-06-19' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV039     ', N'CB002     ', N'Phối hợp chỉ đạo', CAST(N'2026-06-19' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV039     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-19' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV040     ', N'CB002     ', N'Chủ trì', CAST(N'2026-06-20' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV040     ', N'CB006     ', N'Tham mưu xử lý', CAST(N'2026-06-20' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[PHANCONGNHIEMVU] ([MaNhiemVu], [MaCanBo], [VaiTroXuLy], [NgayPhanCong], [TrangThai], [GhiChu]) VALUES (N'NV041     ', N'CB017     ', N'Người thực hiện', CAST(N'2026-06-25' AS Date), N'Chưa xử lý', N'Dữ liệu mẫu')
GO
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT001     ', N'Q001      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT001     ', N'Q002      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT001     ', N'Q003      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT001     ', N'Q004      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT001     ', N'Q005      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT002     ', N'Q001      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT002     ', N'Q002      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT002     ', N'Q003      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT002     ', N'Q004      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT002     ', N'Q005      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT003     ', N'Q001      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT003     ', N'Q002      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT003     ', N'Q003      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT003     ', N'Q004      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT003     ', N'Q005      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT004     ', N'Q001      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT004     ', N'Q002      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT004     ', N'Q003      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT004     ', N'Q004      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
INSERT [dbo].[PHANQUYEN] ([MaVaiTro], [MaQuyen], [NgayCapQuyen], [GhiChu]) VALUES (N'VT004     ', N'Q005      ', CAST(N'2026-06-01' AS Date), N'Phân quyền mẫu')
GO
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen], [MoTa], [TrangThai], [GhiChu]) VALUES (N'Q001      ', N'Quản lý người dùng', N'Thêm, sửa, khóa tài khoản', N'Hoạt động', N'Quyền quản trị')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen], [MoTa], [TrangThai], [GhiChu]) VALUES (N'Q002      ', N'Quản lý công văn đi', N'Thêm, cập nhật, phát hành công văn đi', N'Hoạt động', N'Quyền nghiệp vụ')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen], [MoTa], [TrangThai], [GhiChu]) VALUES (N'Q003      ', N'Quản lý công văn đến', N'Tiếp nhận, cập nhật và chuyển xử lý công văn đến', N'Hoạt động', N'Quyền nghiệp vụ')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen], [MoTa], [TrangThai], [GhiChu]) VALUES (N'Q004      ', N'Quản lý nhiệm vụ', N'Tạo, phân công, cập nhật tiến độ nhiệm vụ', N'Hoạt động', N'Quyền nghiệp vụ')
INSERT [dbo].[QUYEN] ([MaQuyen], [TenQuyen], [MoTa], [TrangThai], [GhiChu]) VALUES (N'Q005      ', N'Báo cáo thống kê', N'Xem và lập báo cáo thống kê', N'Hoạt động', N'Quyền báo cáo')
GO
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK001     ', N'user001', N'Demo@123', N'VT002     ', N'CB001     ', N'Hoạt động', CAST(N'2026-06-01' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK002     ', N'user002', N'Demo@123', N'VT002     ', N'CB002     ', N'Hoạt động', CAST(N'2026-06-02' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK003     ', N'user003', N'Demo@123', N'VT002     ', N'CB003     ', N'Hoạt động', CAST(N'2026-06-03' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK004     ', N'user004', N'Demo@123', N'VT002     ', N'CB004     ', N'Hoạt động', CAST(N'2026-06-04' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK005     ', N'user005', N'Demo@123', N'VT002     ', N'CB005     ', N'Hoạt động', CAST(N'2026-06-05' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK006     ', N'user006', N'Demo@123', N'VT004     ', N'CB006     ', N'Hoạt động', CAST(N'2026-06-06' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK007     ', N'user007', N'Demo@123', N'VT004     ', N'CB007     ', N'Hoạt động', CAST(N'2026-06-07' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK008     ', N'user008', N'Demo@123', N'VT004     ', N'CB008     ', N'Hoạt động', CAST(N'2026-06-08' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK009     ', N'user009', N'Demo@123', N'VT004     ', N'CB009     ', N'Hoạt động', CAST(N'2026-06-09' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK010     ', N'user010', N'Demo@123', N'VT004     ', N'CB010     ', N'Hoạt động', CAST(N'2026-06-10' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK011     ', N'user011', N'Demo@123', N'VT004     ', N'CB011     ', N'Hoạt động', CAST(N'2026-06-11' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK012     ', N'user012', N'Demo@123', N'VT004     ', N'CB012     ', N'Hoạt động', CAST(N'2026-06-12' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK013     ', N'user013', N'Demo@123', N'VT004     ', N'CB013     ', N'Hoạt động', CAST(N'2026-06-13' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK014     ', N'user014', N'Demo@123', N'VT004     ', N'CB014     ', N'Hoạt động', CAST(N'2026-06-14' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK015     ', N'user015', N'Demo@123', N'VT004     ', N'CB015     ', N'Hoạt động', CAST(N'2026-06-15' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK016     ', N'user016', N'Demo@123', N'VT004     ', N'CB016     ', N'Hoạt động', CAST(N'2026-06-16' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK017     ', N'user017', N'Demo@123', N'VT004     ', N'CB017     ', N'Hoạt động', CAST(N'2026-06-17' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK018     ', N'user018', N'Demo@123', N'VT004     ', N'CB018     ', N'Hoạt động', CAST(N'2026-06-18' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK019     ', N'user019', N'Demo@123', N'VT003     ', N'CB019     ', N'Hoạt động', CAST(N'2026-06-19' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK020     ', N'user020', N'Demo@123', N'VT001     ', N'CB020     ', N'Hoạt động', CAST(N'2026-06-20' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK021     ', N'user021', N'Demo@123', N'VT004     ', N'CB021     ', N'Hoạt động', NULL, N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TK022     ', N'user022', N'Demo@123', N'VT004     ', N'CB022     ', N'1', NULL, N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
INSERT [dbo].[TAIKHOAN] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [MaVaiTro], [MaCanBo], [TrangThai], [NgayTao], [GhiChu], [DoiMatKhauLanDau]) VALUES (N'TKADMIN001', N'user023', N'Demo@123', N'VT001     ', N'CBADMIN001', N'Ngừng hoạt động', CAST(N'2026-06-11' AS Date), N'Tài khoản demo đã ẩn thông tin thật; đổi mật khẩu khi triển khai', 1)
GO
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP024    ', N'sample_attachment_024.pdf', N'uploads/demo/sample_attachment_024.pdf', N'pdf', N'VanBanDi', N'VBDI001   ', N'TKADMIN001', CAST(N'2026-06-23T10:30:32.737' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP025    ', N'sample_attachment_025.pdf', N'uploads/demo/sample_attachment_025.pdf', N'pdf', N'VanBanDi', N'VBDI001   ', N'TKADMIN001', CAST(N'2026-06-23T15:56:36.053' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP026    ', N'sample_attachment_026.pdf', N'uploads/demo/sample_attachment_026.pdf', N'pdf', N'VanBanDi', N'VBDI002   ', N'TKADMIN001', CAST(N'2026-06-23T15:56:52.367' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP027    ', N'sample_attachment_027.pdf', N'uploads/demo/sample_attachment_027.pdf', N'pdf', N'VanBanDi', N'VBDI003   ', N'TKADMIN001', CAST(N'2026-06-23T15:57:30.990' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP028    ', N'sample_attachment_028.pdf', N'uploads/demo/sample_attachment_028.pdf', N'pdf', N'VanBanDi', N'VBDI004   ', N'TKADMIN001', CAST(N'2026-06-23T15:59:29.863' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP029    ', N'sample_attachment_029.pdf', N'uploads/demo/sample_attachment_029.pdf', N'pdf', N'VanBanDi', N'VBDI005   ', N'TKADMIN001', CAST(N'2026-06-23T16:00:22.487' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP030    ', N'sample_attachment_030.pdf', N'uploads/demo/sample_attachment_030.pdf', N'pdf', N'VanBanDi', N'VBDI006   ', N'TKADMIN001', CAST(N'2026-06-23T16:00:43.400' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP031    ', N'sample_attachment_031.pdf', N'uploads/demo/sample_attachment_031.pdf', N'pdf', N'VanBanDi', N'VBDI007   ', N'TKADMIN001', CAST(N'2026-06-23T16:05:43.460' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP032    ', N'sample_attachment_032.pdf', N'uploads/demo/sample_attachment_032.pdf', N'pdf', N'VanBanDi', N'VBDI008   ', N'TKADMIN001', CAST(N'2026-06-23T16:06:13.610' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP033    ', N'sample_attachment_033.pdf', N'uploads/demo/sample_attachment_033.pdf', N'pdf', N'VanBanDi', N'VBDI009   ', N'TKADMIN001', CAST(N'2026-06-23T16:06:29.903' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP034    ', N'sample_attachment_034.pdf', N'uploads/demo/sample_attachment_034.pdf', N'pdf', N'VanBanDi', N'VBDI010   ', N'TKADMIN001', CAST(N'2026-06-23T16:06:46.000' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP035    ', N'sample_attachment_035.pdf', N'uploads/demo/sample_attachment_035.pdf', N'pdf', N'VanBanDi', N'VBDI011   ', N'TKADMIN001', CAST(N'2026-06-23T16:07:02.230' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP036    ', N'sample_attachment_036.pdf', N'uploads/demo/sample_attachment_036.pdf', N'pdf', N'VanBanDi', N'VBDI012   ', N'TKADMIN001', CAST(N'2026-06-23T16:07:15.910' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP037    ', N'sample_attachment_037.pdf', N'uploads/demo/sample_attachment_037.pdf', N'pdf', N'VanBanDi', N'VBDI013   ', N'TKADMIN001', CAST(N'2026-06-23T16:07:34.000' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP038    ', N'sample_attachment_038.pdf', N'uploads/demo/sample_attachment_038.pdf', N'pdf', N'VanBanDi', N'VBDI014   ', N'TKADMIN001', CAST(N'2026-06-23T16:07:51.133' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP039    ', N'sample_attachment_039.pdf', N'uploads/demo/sample_attachment_039.pdf', N'pdf', N'VanBanDi', N'VBDI015   ', N'TKADMIN001', CAST(N'2026-06-23T16:08:16.830' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP040    ', N'sample_attachment_040.pdf', N'uploads/demo/sample_attachment_040.pdf', N'pdf', N'VanBanDi', N'VBDI016   ', N'TKADMIN001', CAST(N'2026-06-23T16:12:25.650' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP041    ', N'sample_attachment_041.pdf', N'uploads/demo/sample_attachment_041.pdf', N'pdf', N'VanBanDi', N'VBDI017   ', N'TKADMIN001', CAST(N'2026-06-23T16:19:05.103' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP042    ', N'sample_attachment_042.pdf', N'uploads/demo/sample_attachment_042.pdf', N'pdf', N'VanBanDi', N'VBDI018   ', N'TKADMIN001', CAST(N'2026-06-23T16:19:39.220' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP043    ', N'sample_attachment_043.pdf', N'uploads/demo/sample_attachment_043.pdf', N'pdf', N'VanBanDi', N'VBDI019   ', N'TKADMIN001', CAST(N'2026-06-23T16:20:03.027' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP044    ', N'sample_attachment_044.pdf', N'uploads/demo/sample_attachment_044.pdf', N'pdf', N'VanBanDi', N'VBDI020   ', N'TKADMIN001', CAST(N'2026-06-23T16:20:34.127' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP045    ', N'sample_attachment_045.pdf', N'uploads/demo/sample_attachment_045.pdf', N'pdf', N'VanBanDen', N'VBDEN001  ', N'TKADMIN001', CAST(N'2026-06-24T07:31:32.173' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP046    ', N'sample_attachment_046.pdf', N'uploads/demo/sample_attachment_046.pdf', N'pdf', N'VanBanDen', N'VBDEN002  ', N'TKADMIN001', CAST(N'2026-06-24T07:31:48.180' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP047    ', N'sample_attachment_047.pdf', N'uploads/demo/sample_attachment_047.pdf', N'pdf', N'VanBanDen', N'VBDEN003  ', N'TKADMIN001', CAST(N'2026-06-24T07:32:03.283' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP048    ', N'sample_attachment_048.pdf', N'uploads/demo/sample_attachment_048.pdf', N'pdf', N'VanBanDen', N'VBDEN004  ', N'TKADMIN001', CAST(N'2026-06-24T07:32:25.400' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP049    ', N'sample_attachment_049.pdf', N'uploads/demo/sample_attachment_049.pdf', N'pdf', N'VanBanDen', N'VBDEN005  ', N'TKADMIN001', CAST(N'2026-06-24T07:33:01.677' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP050    ', N'sample_attachment_050.pdf', N'uploads/demo/sample_attachment_050.pdf', N'pdf', N'VanBanDen', N'VBDEN006  ', N'TKADMIN001', CAST(N'2026-06-24T07:33:31.223' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP051    ', N'sample_attachment_051.pdf', N'uploads/demo/sample_attachment_051.pdf', N'pdf', N'VanBanDen', N'VBDEN007  ', N'TKADMIN001', CAST(N'2026-06-24T07:33:53.903' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP052    ', N'sample_attachment_052.pdf', N'uploads/demo/sample_attachment_052.pdf', N'pdf', N'VanBanDen', N'VBDEN008  ', N'TKADMIN001', CAST(N'2026-06-24T07:35:20.747' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP053    ', N'sample_attachment_053.pdf', N'uploads/demo/sample_attachment_053.pdf', N'pdf', N'VanBanDen', N'VBDEN009  ', N'TKADMIN001', CAST(N'2026-06-24T07:36:30.793' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP054    ', N'sample_attachment_054.pdf', N'uploads/demo/sample_attachment_054.pdf', N'pdf', N'VanBanDen', N'VBDEN010  ', N'TKADMIN001', CAST(N'2026-06-24T07:36:55.887' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP055    ', N'sample_attachment_055.pdf', N'uploads/demo/sample_attachment_055.pdf', N'pdf', N'VanBanDen', N'VBDEN011  ', N'TKADMIN001', CAST(N'2026-06-24T07:37:10.130' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP056    ', N'sample_attachment_056.pdf', N'uploads/demo/sample_attachment_056.pdf', N'pdf', N'VanBanDen', N'VBDEN012  ', N'TKADMIN001', CAST(N'2026-06-24T07:37:23.080' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP057    ', N'sample_attachment_057.pdf', N'uploads/demo/sample_attachment_057.pdf', N'pdf', N'VanBanDen', N'VBDEN013  ', N'TKADMIN001', CAST(N'2026-06-24T07:37:37.550' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP058    ', N'sample_attachment_058.pdf', N'uploads/demo/sample_attachment_058.pdf', N'pdf', N'VanBanDen', N'VBDEN014  ', N'TKADMIN001', CAST(N'2026-06-24T07:37:49.783' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP059    ', N'sample_attachment_059.pdf', N'uploads/demo/sample_attachment_059.pdf', N'pdf', N'VanBanDen', N'VBDEN015  ', N'TKADMIN001', CAST(N'2026-06-24T07:38:05.193' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP060    ', N'sample_attachment_060.pdf', N'uploads/demo/sample_attachment_060.pdf', N'pdf', N'VanBanDen', N'VBDEN016  ', N'TKADMIN001', CAST(N'2026-06-24T07:38:17.343' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP061    ', N'sample_attachment_061.pdf', N'uploads/demo/sample_attachment_061.pdf', N'pdf', N'VanBanDen', N'VBDEN017  ', N'TKADMIN001', CAST(N'2026-06-24T07:38:30.533' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP062    ', N'sample_attachment_062.pdf', N'uploads/demo/sample_attachment_062.pdf', N'pdf', N'VanBanDen', N'VBDEN018  ', N'TKADMIN001', CAST(N'2026-06-24T07:39:06.900' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP063    ', N'sample_attachment_063.pdf', N'uploads/demo/sample_attachment_063.pdf', N'pdf', N'VanBanDen', N'VBDEN019  ', N'TKADMIN001', CAST(N'2026-06-24T07:39:19.403' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP064    ', N'sample_attachment_064.pdf', N'uploads/demo/sample_attachment_064.pdf', N'pdf', N'VanBanDen', N'VBDEN020  ', N'TKADMIN001', CAST(N'2026-06-24T07:39:32.170' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP065    ', N'sample_attachment_065.pdf', N'uploads/demo/sample_attachment_065.pdf', N'pdf', N'VanBanDi', N'VBDI021   ', N'TK020     ', CAST(N'2026-06-25T19:48:47.550' AS DateTime), N'Tệp đính kèm mẫu')
INSERT [dbo].[TEPDINHKEM] ([MaTep], [TenTep], [DuongDanTep], [LoaiTep], [DoiTuongLienKet], [MaDoiTuong], [MaNguoiTaiLen], [NgayTaiLen], [GhiChu]) VALUES (N'TEP066    ', N'sample_attachment_066.pdf', N'uploads/demo/sample_attachment_066.pdf', N'pdf', N'VanBanDen', N'VBDEN021  ', N'TK020     ', CAST(N'2026-06-25T19:56:21.577' AS DateTime), N'Tệp đính kèm mẫu')
GO
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD001     ', N'NV001     ', N'CB007     ', CAST(N'2026-06-01T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 07', 0, N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD002     ', N'NV002     ', N'CB008     ', CAST(N'2026-06-02T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 08', 25, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD003     ', N'NV003     ', N'CB009     ', CAST(N'2026-06-03T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 09', 50, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD004     ', N'NV004     ', N'CB010     ', CAST(N'2026-06-04T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 10', 75, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD005     ', N'NV005     ', N'CB011     ', CAST(N'2026-06-05T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 11', 100, N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD006     ', N'NV006     ', N'CB012     ', CAST(N'2026-06-06T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 12', 0, N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD007     ', N'NV007     ', N'CB013     ', CAST(N'2026-06-07T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 13', 25, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD008     ', N'NV008     ', N'CB014     ', CAST(N'2026-06-08T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 14', 50, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD009     ', N'NV009     ', N'CB015     ', CAST(N'2026-06-09T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 15', 75, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD010     ', N'NV010     ', N'CB016     ', CAST(N'2026-06-10T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 16', 100, N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD011     ', N'NV011     ', N'CB017     ', CAST(N'2026-06-11T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 17', 0, N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD012     ', N'NV012     ', N'CB015     ', CAST(N'2026-06-12T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 15', 25, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD013     ', N'NV013     ', N'CB006     ', CAST(N'2026-06-13T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 06', 50, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD014     ', N'NV014     ', N'CB010     ', CAST(N'2026-06-14T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 10', 75, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD015     ', N'NV015     ', N'CB001     ', CAST(N'2026-06-15T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 01', 100, N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD016     ', N'NV016     ', N'CB002     ', CAST(N'2026-06-16T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 02', 0, N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD017     ', N'NV017     ', N'CB003     ', CAST(N'2026-06-17T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 03', 25, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD018     ', N'NV018     ', N'CB004     ', CAST(N'2026-06-18T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 04', 50, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD019     ', N'NV019     ', N'CB005     ', CAST(N'2026-06-19T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 05', 75, N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[TIENDONHIEMVU] ([MaTienDo], [MaNhiemVu], [MaCanBo], [NgayCapNhat], [NoiDungCapNhat], [TiLeHoanThanh], [TrangThai], [GhiChu]) VALUES (N'TD020     ', N'NV020     ', N'CB006     ', CAST(N'2026-06-20T09:30:00.000' AS DateTime), N'Cập nhật tiến độ mẫu số 06', 100, N'Hoàn thành', N'Dữ liệu mẫu')
GO
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH001     ', N'CB001     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH001     ', N'CB002     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH001     ', N'CB003     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH001     ', N'CB004     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH001     ', N'CB005     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH001     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH002     ', N'CB001     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH002     ', N'CB002     ', N'Phối hợp chỉ đạo', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH002     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH002     ', N'CB007     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH002     ', N'CB008     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH003     ', N'CB001     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH003     ', N'CB002     ', N'Phối hợp chỉ đạo', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH003     ', N'CB005     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH003     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH003     ', N'CB008     ', N'Thành viên', N'Vắng có phép', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH004     ', N'CB002     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH004     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH004     ', N'CB007     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH004     ', N'CB011     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH004     ', N'CB017     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH005     ', N'CB005     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH005     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH005     ', N'CB009     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH005     ', N'CB010     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH006     ', N'CB001     ', N'Lãnh đạo dự', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH006     ', N'CB003     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH006     ', N'CB008     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH006     ', N'CB012     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH006     ', N'CB018     ', N'Thành viên', N'Vắng có phép', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH007     ', N'CB001     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH007     ', N'CB002     ', N'Phối hợp chỉ đạo', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH007     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH007     ', N'CB007     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH007     ', N'CB011     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH008     ', N'CB004     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH008     ', N'CB005     ', N'Phối hợp', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH008     ', N'CB007     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH008     ', N'CB014     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH008     ', N'CB019     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH009     ', N'CB001     ', N'Lãnh đạo dự', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH009     ', N'CB005     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH009     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH009     ', N'CB010     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH009     ', N'CB015     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH010     ', N'CB003     ', N'Phối hợp', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH010     ', N'CB005     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH010     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH010     ', N'CB009     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH010     ', N'CB013     ', N'Thành viên', N'Vắng có phép', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH011     ', N'CB001     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH011     ', N'CB002     ', N'Phối hợp chỉ đạo', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH011     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH011     ', N'CB011     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH011     ', N'CB016     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH012     ', N'CB001     ', N'Lãnh đạo dự', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH012     ', N'CB002     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH012     ', N'CB005     ', N'Phối hợp tuyên truyền', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH012     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH012     ', N'CB008     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB001     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB002     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB003     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB004     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB006     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB007     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB010     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB011     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CB014     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH013     ', N'CBADMIN001', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH014     ', N'CB005     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH014     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH014     ', N'CB009     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH014     ', N'CB010     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH015     ', N'CB003     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH015     ', N'CB008     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH015     ', N'CB012     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH015     ', N'CB018     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH016     ', N'CB002     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH016     ', N'CB003     ', N'Phối hợp', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH016     ', N'CB004     ', N'Phối hợp', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH016     ', N'CB005     ', N'Phối hợp', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH016     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH016     ', N'CB007     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH017     ', N'CB004     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH017     ', N'CB005     ', N'Phối hợp tuyên truyền', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH017     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH017     ', N'CB014     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH018     ', N'CB001     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH018     ', N'CB002     ', N'Phối hợp chỉ đạo', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH018     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH018     ', N'CB011     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH018     ', N'CB016     ', N'Thành viên', N'Đã xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH019     ', N'CB001     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH019     ', N'CB002     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH019     ', N'CB003     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH019     ', N'CB004     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH019     ', N'CB005     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH019     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH020     ', N'CB001     ', N'Lãnh đạo dự', N'Đã tham dự', N'Dữ liệu mẫu')
GO
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH020     ', N'CB002     ', N'Chủ trì', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH020     ', N'CB006     ', N'Thư ký', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH020     ', N'CB007     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH020     ', N'CB008     ', N'Thành viên', N'Đã tham dự', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH020     ', N'CB009     ', N'Thành viên', N'Vắng có phép', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH021     ', N'CB001     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH021     ', N'CB006     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH021     ', N'CB010     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH021     ', N'CB011     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH021     ', N'CB012     ', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
INSERT [dbo].[THANHPHANTHAMDU] ([MaCuocHop], [MaCanBo], [VaiTroThamDu], [TrangThaiThamDu], [GhiChu]) VALUES (N'CH021     ', N'CBADMIN001', N'Thành viên tham dự', N'Chưa xác nhận', N'Dữ liệu mẫu')
GO
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [MoTa], [TrangThai], [GhiChu]) VALUES (N'VT001     ', N'Quản trị viên', N'Quản lý toàn bộ hệ thống', N'Hoạt động', N'Vai trò hệ thống')
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [MoTa], [TrangThai], [GhiChu]) VALUES (N'VT002     ', N'Lãnh đạo', N'Duyệt văn bản, phân công và theo dõi công việc', N'Hoạt động', N'Vai trò nghiệp vụ')
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [MoTa], [TrangThai], [GhiChu]) VALUES (N'VT003     ', N'Văn thư', N'Tiếp nhận, phát hành và lưu trữ công văn', N'Hoạt động', N'Vai trò nghiệp vụ')
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [MoTa], [TrangThai], [GhiChu]) VALUES (N'VT004     ', N'Chuyên viên', N'Xử lý nhiệm vụ và cập nhật tiến độ', N'Hoạt động', N'Vai trò nghiệp vụ')
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [MoTa], [TrangThai], [GhiChu]) VALUES (N'VT005     ', N'Người xem báo cáo', N'Chỉ xem thống kê, báo cáo', N'Hoạt động', N'Vai trò hỗ trợ')
GO
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN001  ', N'001/CV-DEMO-DEN', CAST(N'2026-05-01' AS Date), CAST(N'2026-06-01' AS Date), N'LVB001    ', N'LV001     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 01 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-06' AS Date), N'CB001     ', N'Hoàn thành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN002  ', N'002/CV-DEMO-DEN', CAST(N'2026-05-02' AS Date), CAST(N'2026-06-02' AS Date), N'LVB002    ', N'LV002     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 02 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-07' AS Date), N'CB001     ', N'Đang xử lý', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN003  ', N'003/CV-DEMO-DEN', CAST(N'2026-05-03' AS Date), CAST(N'2026-06-03' AS Date), N'LVB003    ', N'LV003     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 03 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-08' AS Date), N'CB005     ', N'Hoàn thành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN004  ', N'004/CV-DEMO-DEN', CAST(N'2026-05-04' AS Date), CAST(N'2026-06-04' AS Date), N'LVB004    ', N'LV004     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 04 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-09' AS Date), N'CB002     ', N'Quá hạn', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN005  ', N'005/CV-DEMO-DEN', CAST(N'2026-05-05' AS Date), CAST(N'2026-06-05' AS Date), N'LVB005    ', N'LV005     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 05 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-10' AS Date), N'CB001     ', N'Đã tiếp nhận', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN006  ', N'006/CV-DEMO-DEN', CAST(N'2026-05-06' AS Date), CAST(N'2026-06-06' AS Date), N'LVB001    ', N'LV001     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 06 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-11' AS Date), N'CB004     ', N'Đang xử lý', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN007  ', N'007/CV-DEMO-DEN', CAST(N'2026-05-07' AS Date), CAST(N'2026-06-07' AS Date), N'LVB002    ', N'LV002     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 07 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-12' AS Date), N'CB001     ', N'Hoàn thành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN008  ', N'008/CV-DEMO-DEN', CAST(N'2026-05-08' AS Date), CAST(N'2026-06-08' AS Date), N'LVB003    ', N'LV003     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 08 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-13' AS Date), N'CB002     ', N'Quá hạn', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN009  ', N'009/CV-DEMO-DEN', CAST(N'2026-05-09' AS Date), CAST(N'2026-06-09' AS Date), N'LVB004    ', N'LV004     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 09 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-14' AS Date), N'CB002     ', N'Đã tiếp nhận', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN010  ', N'010/CV-DEMO-DEN', CAST(N'2026-05-10' AS Date), CAST(N'2026-06-10' AS Date), N'LVB005    ', N'LV005     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 10 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-15' AS Date), N'CB002     ', N'Đang xử lý', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN011  ', N'011/CV-DEMO-DEN', CAST(N'2026-05-11' AS Date), CAST(N'2026-06-11' AS Date), N'LVB001    ', N'LV001     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 11 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-16' AS Date), N'CB003     ', N'Hoàn thành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN012  ', N'012/CV-DEMO-DEN', CAST(N'2026-05-12' AS Date), CAST(N'2026-06-12' AS Date), N'LVB002    ', N'LV002     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 12 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-17' AS Date), N'CB002     ', N'Quá hạn', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN013  ', N'013/CV-DEMO-DEN', CAST(N'2026-05-13' AS Date), CAST(N'2026-06-13' AS Date), N'LVB003    ', N'LV003     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 13 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-18' AS Date), N'CB002     ', N'Đã tiếp nhận', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN014  ', N'014/CV-DEMO-DEN', CAST(N'2026-05-14' AS Date), CAST(N'2026-06-14' AS Date), N'LVB004    ', N'LV004     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 14 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-19' AS Date), N'CB002     ', N'Đang xử lý', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN015  ', N'015/CV-DEMO-DEN', CAST(N'2026-05-15' AS Date), CAST(N'2026-06-15' AS Date), N'LVB005    ', N'LV005     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 15 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-20' AS Date), N'CB005     ', N'Hoàn thành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN016  ', N'016/CV-DEMO-DEN', CAST(N'2026-05-16' AS Date), CAST(N'2026-06-16' AS Date), N'LVB001    ', N'LV001     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 16 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-01' AS Date), N'CB004     ', N'Quá hạn', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN017  ', N'017/CV-DEMO-DEN', CAST(N'2026-05-17' AS Date), CAST(N'2026-06-17' AS Date), N'LVB002    ', N'LV002     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 17 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-02' AS Date), N'CB005     ', N'Đã tiếp nhận', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN018  ', N'018/CV-DEMO-DEN', CAST(N'2026-05-18' AS Date), CAST(N'2026-06-18' AS Date), N'LVB003    ', N'LV003     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 18 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-03' AS Date), N'CB005     ', N'Hoàn thành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN019  ', N'019/CV-DEMO-DEN', CAST(N'2026-05-19' AS Date), CAST(N'2026-06-19' AS Date), N'LVB004    ', N'LV004     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 19 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-04' AS Date), N'CB001     ', N'Hoàn thành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN020  ', N'020/CV-DEMO-DEN', CAST(N'2026-05-20' AS Date), CAST(N'2026-06-20' AS Date), N'LVB005    ', N'LV005     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 20 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-05' AS Date), N'CB003     ', N'Quá hạn', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDEN] ([MaVanBanDen], [SoKyHieu], [NgayBanHanh], [NgayNhan], [MaLoaiVanBan], [MaLinhVuc], [CoQuanGui], [TrichYeu], [ThoiHanXuLy], [MaNguoiTiepNhan], [TrangThaiXuLy], [GhiChu]) VALUES (N'VBDEN021  ', N'021/CV-DEMO-DEN', CAST(N'2026-06-25' AS Date), CAST(N'2026-06-27' AS Date), N'LVB005    ', N'LV007     ', N'Cơ quan gửi mẫu', N'Văn bản đến mẫu số 21 phục vụ kiểm thử chức năng tiếp nhận và xử lý', CAST(N'2026-06-30' AS Date), N'CB002     ', N'Đã tiếp nhận', N'Dữ liệu mẫu đã ẩn thông tin thật')
GO
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI001   ', N'001/CV-DEMO-DI', CAST(N'2025-07-02' AS Date), N'LVB001    ', N'LV001     ', N'Văn bản đi mẫu số 01 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB006     ', N'CB002     ', N'Đã phát hành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI002   ', N'002/CV-DEMO-DI', CAST(N'2026-06-02' AS Date), N'LVB002    ', N'LV002     ', N'Văn bản đi mẫu số 02 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB007     ', N'CB001     ', N'Đã duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI003   ', N'003/CV-DEMO-DI', CAST(N'2026-06-03' AS Date), N'LVB003    ', N'LV003     ', N'Văn bản đi mẫu số 03 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB008     ', N'CB001     ', N'Đã phát hành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI004   ', N'004/CV-DEMO-DI', CAST(N'2026-06-04' AS Date), N'LVB004    ', N'LV004     ', N'Văn bản đi mẫu số 04 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB009     ', N'CB001     ', N'Yêu cầu chỉnh sửa', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI005   ', N'005/CV-DEMO-DI', CAST(N'2026-06-05' AS Date), N'LVB005    ', N'LV005     ', N'Văn bản đi mẫu số 05 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB010     ', N'CB001     ', N'Chờ duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI006   ', N'006/CV-DEMO-DI', CAST(N'2026-06-06' AS Date), N'LVB001    ', N'LV001     ', N'Văn bản đi mẫu số 06 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB011     ', N'CB001     ', N'Đã duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI007   ', N'007/CV-DEMO-DI', CAST(N'2026-06-07' AS Date), N'LVB002    ', N'LV002     ', N'Văn bản đi mẫu số 07 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB012     ', N'CB001     ', N'Đã phát hành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI008   ', N'008/CV-DEMO-DI', CAST(N'2026-06-08' AS Date), N'LVB003    ', N'LV003     ', N'Văn bản đi mẫu số 08 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB013     ', N'CB001     ', N'Yêu cầu chỉnh sửa', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI009   ', N'009/CV-DEMO-DI', CAST(N'2026-06-09' AS Date), N'LVB004    ', N'LV004     ', N'Văn bản đi mẫu số 09 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB014     ', N'CB002     ', N'Chờ duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI010   ', N'010/CV-DEMO-DI', CAST(N'2026-06-10' AS Date), N'LVB005    ', N'LV005     ', N'Văn bản đi mẫu số 10 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB015     ', N'CB001     ', N'Đã duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI011   ', N'011/CV-DEMO-DI', CAST(N'2026-06-11' AS Date), N'LVB001    ', N'LV001     ', N'Văn bản đi mẫu số 11 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB016     ', N'CB005     ', N'Đã phát hành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI012   ', N'012/CV-DEMO-DI', CAST(N'2026-06-12' AS Date), N'LVB002    ', N'LV002     ', N'Văn bản đi mẫu số 12 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB017     ', N'CB001     ', N'Yêu cầu chỉnh sửa', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI013   ', N'013/CV-DEMO-DI', CAST(N'2026-06-13' AS Date), N'LVB003    ', N'LV003     ', N'Văn bản đi mẫu số 13 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB010     ', N'CB001     ', N'Chờ duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI014   ', N'014/CV-DEMO-DI', CAST(N'2026-06-14' AS Date), N'LVB004    ', N'LV004     ', N'Văn bản đi mẫu số 14 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB006     ', N'CB002     ', N'Đã duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI015   ', N'015/CV-DEMO-DI', CAST(N'2026-06-15' AS Date), N'LVB005    ', N'LV005     ', N'Văn bản đi mẫu số 15 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB006     ', N'CB001     ', N'Đã phát hành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI016   ', N'016/CV-DEMO-DI', CAST(N'2026-06-16' AS Date), N'LVB001    ', N'LV001     ', N'Văn bản đi mẫu số 16 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB009     ', N'CB005     ', N'Yêu cầu chỉnh sửa', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI017   ', N'017/CV-DEMO-DI', CAST(N'2026-06-17' AS Date), N'LVB002    ', N'LV002     ', N'Văn bản đi mẫu số 17 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB014     ', N'CB002     ', N'Đã duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI018   ', N'018/CV-DEMO-DI', CAST(N'2026-06-18' AS Date), N'LVB003    ', N'LV003     ', N'Văn bản đi mẫu số 18 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB012     ', N'CB001     ', N'Đã duyệt', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI019   ', N'019/CV-DEMO-DI', CAST(N'2026-06-19' AS Date), N'LVB004    ', N'LV004     ', N'Văn bản đi mẫu số 19 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB011     ', N'CB002     ', N'Đã phát hành', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI020   ', N'020/CV-DEMO-DI', CAST(N'2026-06-20' AS Date), N'LVB005    ', N'LV005     ', N'Văn bản đi mẫu số 20 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB015     ', N'CB001     ', N'Yêu cầu chỉnh sửa', N'Dữ liệu mẫu đã ẩn thông tin thật')
INSERT [dbo].[VANBANDI] ([MaVanBanDi], [SoKyHieu], [NgayBanHanh], [MaLoaiVanBan], [MaLinhVuc], [TrichYeu], [NoiNhan], [MaNguoiSoan], [MaNguoiKy], [TrangThai], [GhiChu]) VALUES (N'VBDI021   ', N'021/CV-DEMO-DI', CAST(N'2026-06-25' AS Date), N'LVB001    ', N'LV008     ', N'Văn bản đi mẫu số 21 phục vụ kiểm thử chức năng quản lý công văn', N'Đơn vị nhận mẫu', N'CB021     ', N'CB005     ', N'Đã phát hành', N'Dữ liệu mẫu đã ẩn thông tin thật')
GO
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN001     ', N'CB007     ', CAST(N'2026-06-03T15:30:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 07', N'Kết quả xử lý mẫu số 07', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN002     ', N'CB006     ', CAST(N'2026-06-05T09:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 06', N'Kết quả xử lý mẫu số 06', N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN003     ', N'CB008     ', CAST(N'2026-06-05T14:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 08', N'Kết quả xử lý mẫu số 08', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN004     ', N'CB009     ', CAST(N'2026-06-07T08:30:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 09', N'Kết quả xử lý mẫu số 09', N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN005     ', N'CB016     ', CAST(N'2026-06-07T16:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 16', N'Kết quả xử lý mẫu số 16', N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN006     ', N'CB012     ', CAST(N'2026-06-09T10:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 12', N'Kết quả xử lý mẫu số 12', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN007     ', N'CB016     ', CAST(N'2026-06-10T08:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 16', N'Kết quả xử lý mẫu số 16', N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN008     ', N'CB013     ', CAST(N'2026-06-10T15:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 13', N'Kết quả xử lý mẫu số 13', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN009     ', N'CB009     ', CAST(N'2026-06-12T09:15:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 09', N'Kết quả xử lý mẫu số 09', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN010     ', N'CB006     ', CAST(N'2026-06-13T08:45:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 06', N'Kết quả xử lý mẫu số 06', N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN011     ', N'CB007     ', CAST(N'2026-06-14T09:30:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 07', N'Kết quả xử lý mẫu số 07', N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN012     ', N'CB005     ', CAST(N'2026-06-15T14:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 05', N'Kết quả xử lý mẫu số 05', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN013     ', N'CB016     ', CAST(N'2026-06-16T09:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 16', N'Kết quả xử lý mẫu số 16', N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN014     ', N'CB012     ', CAST(N'2026-06-17T16:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 12', N'Kết quả xử lý mẫu số 12', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN015     ', N'CB009     ', CAST(N'2026-06-18T08:30:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 09', N'Kết quả xử lý mẫu số 09', N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN016     ', N'CB006     ', CAST(N'2026-06-18T15:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 06', N'Kết quả xử lý mẫu số 06', N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN017     ', N'CB012     ', CAST(N'2026-06-20T09:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 12', N'Kết quả xử lý mẫu số 12', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN018     ', N'CB016     ', CAST(N'2026-06-21T08:00:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 16', N'Kết quả xử lý mẫu số 16', N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN019     ', N'CB009     ', CAST(N'2026-06-27T20:37:44.817' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 09', N'Kết quả xử lý mẫu số 09', N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN020     ', N'CB003     ', CAST(N'2026-06-22T15:30:00.000' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 03', N'Kết quả xử lý mẫu số 03', N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[XULYKIENNGHI] ([MaKienNghi], [MaCanBo], [NgayXuLy], [NoiDungXuLy], [KetQuaXuLy], [TrangThai], [GhiChu]) VALUES (N'KN021     ', N'CB006     ', CAST(N'2026-06-25T20:23:59.553' AS DateTime), N'Nội dung xử lý kiến nghị mẫu số 06', N'Kết quả xử lý mẫu số 06', N'Đang xử lý', N'Dữ liệu mẫu')
GO
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN001     ', N'Nội dung ý kiến, kiến nghị mẫu số 01 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 01', N'KP001     ', N'LV004     ', CAST(N'2026-06-03' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN002     ', N'Nội dung ý kiến, kiến nghị mẫu số 02 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 02', N'KP002     ', N'LV001     ', CAST(N'2026-06-04' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN003     ', N'Nội dung ý kiến, kiến nghị mẫu số 03 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 03', N'KP003     ', N'LV002     ', CAST(N'2026-06-05' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN004     ', N'Nội dung ý kiến, kiến nghị mẫu số 04 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 04', N'KP004     ', N'LV004     ', CAST(N'2026-06-06' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN005     ', N'Nội dung ý kiến, kiến nghị mẫu số 05 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 05', N'KP005     ', N'LV003     ', CAST(N'2026-06-07' AS Date), N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN006     ', N'Nội dung ý kiến, kiến nghị mẫu số 06 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 06', N'KP001     ', N'LV002     ', CAST(N'2026-06-08' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN007     ', N'Nội dung ý kiến, kiến nghị mẫu số 07 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 07', N'KP002     ', N'LV003     ', CAST(N'2026-06-09' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN008     ', N'Nội dung ý kiến, kiến nghị mẫu số 08 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 08', N'KP003     ', N'LV003     ', CAST(N'2026-06-10' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN009     ', N'Nội dung ý kiến, kiến nghị mẫu số 09 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 09', N'KP004     ', N'LV004     ', CAST(N'2026-06-11' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN010     ', N'Nội dung ý kiến, kiến nghị mẫu số 10 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 10', N'KP005     ', N'LV001     ', CAST(N'2026-06-12' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN011     ', N'Nội dung ý kiến, kiến nghị mẫu số 11 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 11', N'KP001     ', N'LV004     ', CAST(N'2026-06-13' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN012     ', N'Nội dung ý kiến, kiến nghị mẫu số 12 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 12', N'KP002     ', N'LV005     ', CAST(N'2026-06-14' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN013     ', N'Nội dung ý kiến, kiến nghị mẫu số 13 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 13', N'KP003     ', N'LV003     ', CAST(N'2026-06-15' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN014     ', N'Nội dung ý kiến, kiến nghị mẫu số 14 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 14', N'KP004     ', N'LV002     ', CAST(N'2026-06-16' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN015     ', N'Nội dung ý kiến, kiến nghị mẫu số 15 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 15', N'KP005     ', N'LV004     ', CAST(N'2026-06-17' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN016     ', N'Nội dung ý kiến, kiến nghị mẫu số 16 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 16', N'KP001     ', N'LV001     ', CAST(N'2026-06-18' AS Date), N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN017     ', N'Nội dung ý kiến, kiến nghị mẫu số 17 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 17', N'KP002     ', N'LV002     ', CAST(N'2026-06-19' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN018     ', N'Nội dung ý kiến, kiến nghị mẫu số 18 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 18', N'KP003     ', N'LV003     ', CAST(N'2026-06-20' AS Date), N'Hoàn thành', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN019     ', N'Nội dung ý kiến, kiến nghị mẫu số 19 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 19', N'KP004     ', N'LV004     ', CAST(N'2026-06-21' AS Date), N'Đang xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN020     ', N'Nội dung ý kiến, kiến nghị mẫu số 20 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 20', N'KP005     ', N'LV002     ', CAST(N'2026-06-22' AS Date), N'Chưa xử lý', N'Dữ liệu mẫu')
INSERT [dbo].[YKIENKIENNGHI] ([MaKienNghi], [NoiDungKienNghi], [NguoiKienNghi], [MaKhuPho], [MaLinhVuc], [NgayTiepNhan], [TrangThai], [GhiChu]) VALUES (N'KN021     ', N'Nội dung ý kiến, kiến nghị mẫu số 21 phục vụ kiểm thử quy trình tiếp nhận và xử lý', N'Người gửi mẫu 21', N'KP047     ', N'LV001     ', CAST(N'2026-06-25' AS Date), N'Đã tiếp nhận', N'Dữ liệu mẫu')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_TAIKHOAN_TenDangNhap]    Script Date: 6/29/2026 1:53:27 PM ******/
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [UQ_TAIKHOAN_TenDangNhap] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_VANBANDI_SoKyHieu]    Script Date: 6/29/2026 1:53:27 PM ******/
ALTER TABLE [dbo].[VANBANDI] ADD  CONSTRAINT [UQ_VANBANDI_SoKyHieu] UNIQUE NONCLUSTERED 
(
	[SoKyHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TAIKHOAN] ADD  CONSTRAINT [DF_TAIKHOAN_DoiMatKhauLanDau]  DEFAULT ((0)) FOR [DoiMatKhauLanDau]
GO
ALTER TABLE [dbo].[BAOCAO]  WITH CHECK ADD  CONSTRAINT [FK_BAOCAO_CANBO] FOREIGN KEY([MaNguoiLap])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[BAOCAO] CHECK CONSTRAINT [FK_BAOCAO_CANBO]
GO
ALTER TABLE [dbo].[BAOCAO]  WITH CHECK ADD  CONSTRAINT [FK_BAOCAO_LINHVUC] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LINHVUC] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[BAOCAO] CHECK CONSTRAINT [FK_BAOCAO_LINHVUC]
GO
ALTER TABLE [dbo].[CANBO]  WITH CHECK ADD  CONSTRAINT [FK_CANBO_BOPHAN] FOREIGN KEY([MaBoPhan])
REFERENCES [dbo].[BOPHAN] ([MaBoPhan])
GO
ALTER TABLE [dbo].[CANBO] CHECK CONSTRAINT [FK_CANBO_BOPHAN]
GO
ALTER TABLE [dbo].[CANBO]  WITH CHECK ADD  CONSTRAINT [FK_CANBO_CHUCVU] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[CHUCVU] ([MaChucVu])
GO
ALTER TABLE [dbo].[CANBO] CHECK CONSTRAINT [FK_CANBO_CHUCVU]
GO
ALTER TABLE [dbo].[HOINGHICUOCHOP]  WITH CHECK ADD  CONSTRAINT [FK_HOINGHICUOCHOP_CANBO] FOREIGN KEY([MaNguoiChuTri])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[HOINGHICUOCHOP] CHECK CONSTRAINT [FK_HOINGHICUOCHOP_CANBO]
GO
ALTER TABLE [dbo].[NHATKYHETHONG]  WITH CHECK ADD  CONSTRAINT [FK_NHATKYHETHONG_TAIKHOAN] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[NHATKYHETHONG] CHECK CONSTRAINT [FK_NHATKYHETHONG_TAIKHOAN]
GO
ALTER TABLE [dbo].[NHIEMVU]  WITH CHECK ADD  CONSTRAINT [FK_NHIEMVU_LINHVUC] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LINHVUC] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[NHIEMVU] CHECK CONSTRAINT [FK_NHIEMVU_LINHVUC]
GO
ALTER TABLE [dbo].[NHIEMVU]  WITH CHECK ADD  CONSTRAINT [FK_NHIEMVU_NGUOIGIAO] FOREIGN KEY([MaNguoiGiao])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[NHIEMVU] CHECK CONSTRAINT [FK_NHIEMVU_NGUOIGIAO]
GO
ALTER TABLE [dbo].[NHIEMVU]  WITH CHECK ADD  CONSTRAINT [FK_NHIEMVU_VANBANDEN] FOREIGN KEY([MaVanBanDen])
REFERENCES [dbo].[VANBANDEN] ([MaVanBanDen])
GO
ALTER TABLE [dbo].[NHIEMVU] CHECK CONSTRAINT [FK_NHIEMVU_VANBANDEN]
GO
ALTER TABLE [dbo].[NHIEMVU]  WITH CHECK ADD  CONSTRAINT [FK_NHIEMVU_VANBANDI] FOREIGN KEY([MaVanBanDi])
REFERENCES [dbo].[VANBANDI] ([MaVanBanDi])
GO
ALTER TABLE [dbo].[NHIEMVU] CHECK CONSTRAINT [FK_NHIEMVU_VANBANDI]
GO
ALTER TABLE [dbo].[PHANCONGKHUPHO]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONGKHUPHO_CANBO] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[PHANCONGKHUPHO] CHECK CONSTRAINT [FK_PHANCONGKHUPHO_CANBO]
GO
ALTER TABLE [dbo].[PHANCONGKHUPHO]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONGKHUPHO_KHUPHO] FOREIGN KEY([MaKhuPho])
REFERENCES [dbo].[KHUPHO] ([MaKhuPho])
GO
ALTER TABLE [dbo].[PHANCONGKHUPHO] CHECK CONSTRAINT [FK_PHANCONGKHUPHO_KHUPHO]
GO
ALTER TABLE [dbo].[PHANCONGLINHVUC]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONGLINHVUC_CANBO] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[PHANCONGLINHVUC] CHECK CONSTRAINT [FK_PHANCONGLINHVUC_CANBO]
GO
ALTER TABLE [dbo].[PHANCONGLINHVUC]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONGLINHVUC_LINHVUC] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LINHVUC] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[PHANCONGLINHVUC] CHECK CONSTRAINT [FK_PHANCONGLINHVUC_LINHVUC]
GO
ALTER TABLE [dbo].[PHANCONGNHIEMVU]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONGNHIEMVU_CANBO] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[PHANCONGNHIEMVU] CHECK CONSTRAINT [FK_PHANCONGNHIEMVU_CANBO]
GO
ALTER TABLE [dbo].[PHANCONGNHIEMVU]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONGNHIEMVU_NHIEMVU] FOREIGN KEY([MaNhiemVu])
REFERENCES [dbo].[NHIEMVU] ([MaNhiemVu])
GO
ALTER TABLE [dbo].[PHANCONGNHIEMVU] CHECK CONSTRAINT [FK_PHANCONGNHIEMVU_NHIEMVU]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_QUYEN] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[QUYEN] ([MaQuyen])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_QUYEN]
GO
ALTER TABLE [dbo].[PHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_PHANQUYEN_VAITRO] FOREIGN KEY([MaVaiTro])
REFERENCES [dbo].[VAITRO] ([MaVaiTro])
GO
ALTER TABLE [dbo].[PHANQUYEN] CHECK CONSTRAINT [FK_PHANQUYEN_VAITRO]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_CANBO] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_CANBO]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_VAITRO] FOREIGN KEY([MaVaiTro])
REFERENCES [dbo].[VAITRO] ([MaVaiTro])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_VAITRO]
GO
ALTER TABLE [dbo].[TEPDINHKEM]  WITH CHECK ADD  CONSTRAINT [FK_TEPDINHKEM_TAIKHOAN] FOREIGN KEY([MaNguoiTaiLen])
REFERENCES [dbo].[TAIKHOAN] ([MaTaiKhoan])
GO
ALTER TABLE [dbo].[TEPDINHKEM] CHECK CONSTRAINT [FK_TEPDINHKEM_TAIKHOAN]
GO
ALTER TABLE [dbo].[TIENDONHIEMVU]  WITH CHECK ADD  CONSTRAINT [FK_TIENDONHIEMVU_CANBO] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[TIENDONHIEMVU] CHECK CONSTRAINT [FK_TIENDONHIEMVU_CANBO]
GO
ALTER TABLE [dbo].[TIENDONHIEMVU]  WITH CHECK ADD  CONSTRAINT [FK_TIENDONHIEMVU_NHIEMVU] FOREIGN KEY([MaNhiemVu])
REFERENCES [dbo].[NHIEMVU] ([MaNhiemVu])
GO
ALTER TABLE [dbo].[TIENDONHIEMVU] CHECK CONSTRAINT [FK_TIENDONHIEMVU_NHIEMVU]
GO
ALTER TABLE [dbo].[THANHPHANTHAMDU]  WITH CHECK ADD  CONSTRAINT [FK_THANHPHANTHAMDU_CANBO] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[THANHPHANTHAMDU] CHECK CONSTRAINT [FK_THANHPHANTHAMDU_CANBO]
GO
ALTER TABLE [dbo].[THANHPHANTHAMDU]  WITH CHECK ADD  CONSTRAINT [FK_THANHPHANTHAMDU_HOINGHI] FOREIGN KEY([MaCuocHop])
REFERENCES [dbo].[HOINGHICUOCHOP] ([MaCuocHop])
GO
ALTER TABLE [dbo].[THANHPHANTHAMDU] CHECK CONSTRAINT [FK_THANHPHANTHAMDU_HOINGHI]
GO
ALTER TABLE [dbo].[VANBANDEN]  WITH CHECK ADD  CONSTRAINT [FK_VANBANDEN_LINHVUC] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LINHVUC] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[VANBANDEN] CHECK CONSTRAINT [FK_VANBANDEN_LINHVUC]
GO
ALTER TABLE [dbo].[VANBANDEN]  WITH CHECK ADD  CONSTRAINT [FK_VANBANDEN_LOAIVANBAN] FOREIGN KEY([MaLoaiVanBan])
REFERENCES [dbo].[LOAIVANBAN] ([MaLoaiVanBan])
GO
ALTER TABLE [dbo].[VANBANDEN] CHECK CONSTRAINT [FK_VANBANDEN_LOAIVANBAN]
GO
ALTER TABLE [dbo].[VANBANDEN]  WITH CHECK ADD  CONSTRAINT [FK_VANBANDEN_NGUOITIEPNHAN] FOREIGN KEY([MaNguoiTiepNhan])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[VANBANDEN] CHECK CONSTRAINT [FK_VANBANDEN_NGUOITIEPNHAN]
GO
ALTER TABLE [dbo].[VANBANDI]  WITH CHECK ADD  CONSTRAINT [FK_VANBANDI_LINHVUC] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LINHVUC] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[VANBANDI] CHECK CONSTRAINT [FK_VANBANDI_LINHVUC]
GO
ALTER TABLE [dbo].[VANBANDI]  WITH CHECK ADD  CONSTRAINT [FK_VANBANDI_LOAIVANBAN] FOREIGN KEY([MaLoaiVanBan])
REFERENCES [dbo].[LOAIVANBAN] ([MaLoaiVanBan])
GO
ALTER TABLE [dbo].[VANBANDI] CHECK CONSTRAINT [FK_VANBANDI_LOAIVANBAN]
GO
ALTER TABLE [dbo].[VANBANDI]  WITH CHECK ADD  CONSTRAINT [FK_VANBANDI_NGUOIKY] FOREIGN KEY([MaNguoiKy])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[VANBANDI] CHECK CONSTRAINT [FK_VANBANDI_NGUOIKY]
GO
ALTER TABLE [dbo].[VANBANDI]  WITH CHECK ADD  CONSTRAINT [FK_VANBANDI_NGUOISOAN] FOREIGN KEY([MaNguoiSoan])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[VANBANDI] CHECK CONSTRAINT [FK_VANBANDI_NGUOISOAN]
GO
ALTER TABLE [dbo].[XULYKIENNGHI]  WITH CHECK ADD  CONSTRAINT [FK_XULYKIENNGHI_CANBO] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CANBO] ([MaCanBo])
GO
ALTER TABLE [dbo].[XULYKIENNGHI] CHECK CONSTRAINT [FK_XULYKIENNGHI_CANBO]
GO
ALTER TABLE [dbo].[XULYKIENNGHI]  WITH CHECK ADD  CONSTRAINT [FK_XULYKIENNGHI_KIENNGHI] FOREIGN KEY([MaKienNghi])
REFERENCES [dbo].[YKIENKIENNGHI] ([MaKienNghi])
GO
ALTER TABLE [dbo].[XULYKIENNGHI] CHECK CONSTRAINT [FK_XULYKIENNGHI_KIENNGHI]
GO
ALTER TABLE [dbo].[YKIENKIENNGHI]  WITH CHECK ADD  CONSTRAINT [FK_YKIENKIENNGHI_KHUPHO] FOREIGN KEY([MaKhuPho])
REFERENCES [dbo].[KHUPHO] ([MaKhuPho])
GO
ALTER TABLE [dbo].[YKIENKIENNGHI] CHECK CONSTRAINT [FK_YKIENKIENNGHI_KHUPHO]
GO
ALTER TABLE [dbo].[YKIENKIENNGHI]  WITH CHECK ADD  CONSTRAINT [FK_YKIENKIENNGHI_LINHVUC] FOREIGN KEY([MaLinhVuc])
REFERENCES [dbo].[LINHVUC] ([MaLinhVuc])
GO
ALTER TABLE [dbo].[YKIENKIENNGHI] CHECK CONSTRAINT [FK_YKIENKIENNGHI_LINHVUC]
GO
ALTER TABLE [dbo].[HOINGHICUOCHOP]  WITH CHECK ADD  CONSTRAINT [CK_HOINGHICUOCHOP_THOIGIAN] CHECK  (([ThoiGianKetThuc] IS NULL OR [ThoiGianBatDau] IS NULL OR [ThoiGianKetThuc]>[ThoiGianBatDau]))
GO
ALTER TABLE [dbo].[HOINGHICUOCHOP] CHECK CONSTRAINT [CK_HOINGHICUOCHOP_THOIGIAN]
GO
ALTER TABLE [dbo].[NHIEMVU]  WITH CHECK ADD  CONSTRAINT [CK_NHIEMVU_MUCDOUUTIEN] CHECK  (([MucDoUuTien] IS NULL OR ([MucDoUuTien]=N'Rất khẩn' OR [MucDoUuTien]=N'Khẩn' OR [MucDoUuTien]=N'Bình thường')))
GO
ALTER TABLE [dbo].[NHIEMVU] CHECK CONSTRAINT [CK_NHIEMVU_MUCDOUUTIEN]
GO
ALTER TABLE [dbo].[NHIEMVU]  WITH CHECK ADD  CONSTRAINT [CK_NHIEMVU_THOIHAN] CHECK  (([ThoiHanHoanThanh] IS NULL OR [NgayGiao] IS NULL OR [ThoiHanHoanThanh]>=[NgayGiao]))
GO
ALTER TABLE [dbo].[NHIEMVU] CHECK CONSTRAINT [CK_NHIEMVU_THOIHAN]
GO
ALTER TABLE [dbo].[TIENDONHIEMVU]  WITH CHECK ADD  CONSTRAINT [CK_TIENDONHIEMVU_TILE] CHECK  (([TiLeHoanThanh] IS NULL OR [TiLeHoanThanh]>=(0) AND [TiLeHoanThanh]<=(100)))
GO
ALTER TABLE [dbo].[TIENDONHIEMVU] CHECK CONSTRAINT [CK_TIENDONHIEMVU_TILE]
GO

