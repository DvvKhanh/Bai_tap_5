USE [master]
GO
/****** Object:  Database [QuanLyQuanInternet]    Script Date: 22/04/2025 6:22:08 CH ******/
CREATE DATABASE [QuanLyQuanInternet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyQuanInternet', FILENAME = N'C:\HequantriCSDL\QuanLyQuanInternet.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyQuanInternet_log', FILENAME = N'C:\HequantriCSDL\QuanLyQuanInternet_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyQuanInternet] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyQuanInternet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyQuanInternet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyQuanInternet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyQuanInternet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyQuanInternet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyQuanInternet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyQuanInternet] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyQuanInternet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyQuanInternet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyQuanInternet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyQuanInternet] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyQuanInternet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyQuanInternet] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyQuanInternet', N'ON'
GO
ALTER DATABASE [QuanLyQuanInternet] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyQuanInternet] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyQuanInternet]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 22/04/2025 6:22:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[idDichVu] [int] NOT NULL,
	[TenDichVu] [nvarchar](50) NULL,
	[GiaDichVu] [money] NULL,
 CONSTRAINT [PK__DichVu__B4DD249B5CD36769] PRIMARY KEY CLUSTERED 
(
	[idDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 22/04/2025 6:22:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[idKhachHang] [int] NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](10) NULL,
	[MatKhau] [varchar](10) NULL,
	[SoTien] [money] NULL,
 CONSTRAINT [PK__KhachHan__DAF646D0A50DAAC2] PRIMARY KEY CLUSTERED 
(
	[idKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[May]    Script Date: 22/04/2025 6:22:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[May](
	[idMay] [int] NOT NULL,
	[TenMay] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[GiaTien] [money] NULL,
 CONSTRAINT [PK__May__3DC6CB1115C8B6BD] PRIMARY KEY CLUSTERED 
(
	[idMay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 22/04/2025 6:22:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[idThanhToan] [int] NOT NULL,
	[idKhachHang] [int] NULL,
	[idMay] [int] NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK__ThanhToa__2DE12A66452CB434] PRIMARY KEY CLUSTERED 
(
	[idThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan_DichVu]    Script Date: 22/04/2025 6:22:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan_DichVu](
	[idThanhToan_DichVu] [int] NOT NULL,
	[idThanhToan] [int] NULL,
	[idDichVu] [int] NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idThanhToan_DichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DichVu] ([idDichVu], [TenDichVu], [GiaDichVu]) VALUES (1, N'VIP03', 10000.0000)
INSERT [dbo].[DichVu] ([idDichVu], [TenDichVu], [GiaDichVu]) VALUES (2, N'Nước ngọt', 8000.0000)
INSERT [dbo].[DichVu] ([idDichVu], [TenDichVu], [GiaDichVu]) VALUES (3, N'Mì tôm', 7000.0000)
GO
INSERT [dbo].[KhachHang] ([idKhachHang], [TenKH], [TaiKhoan], [MatKhau], [SoTien]) VALUES (1, N'Nguyễn Văn A', N'user1', N'abc123', 50000.0000)
INSERT [dbo].[KhachHang] ([idKhachHang], [TenKH], [TaiKhoan], [MatKhau], [SoTien]) VALUES (2, N'Trần Thị B', N'user2', N'pass123', 75000.0000)
INSERT [dbo].[KhachHang] ([idKhachHang], [TenKH], [TaiKhoan], [MatKhau], [SoTien]) VALUES (3, N'Lê Văn C', N'user3', N'xyz456', 20000.0000)
GO
INSERT [dbo].[May] ([idMay], [TenMay], [TinhTrang], [GiaTien]) VALUES (1, N'Máy 01', N'Trống', 5000.0000)
INSERT [dbo].[May] ([idMay], [TenMay], [TinhTrang], [GiaTien]) VALUES (2, N'Máy 02', N'Đang dùng', 10000.0000)
INSERT [dbo].[May] ([idMay], [TenMay], [TinhTrang], [GiaTien]) VALUES (3, N'Máy 03', N'Hỏng', 0.0000)
INSERT [dbo].[May] ([idMay], [TenMay], [TinhTrang], [GiaTien]) VALUES (4, N'Máy 04', N'Trống', 7000.0000)
GO
INSERT [dbo].[ThanhToan] ([idThanhToan], [idKhachHang], [idMay], [ThoiGianBatDau], [ThoiGianKetThuc], [TongTien]) VALUES (101, 1, 1, CAST(N'2025-04-20T07:00:00.000' AS DateTime), CAST(N'2025-04-20T10:00:00.000' AS DateTime), 35000)
INSERT [dbo].[ThanhToan] ([idThanhToan], [idKhachHang], [idMay], [ThoiGianBatDau], [ThoiGianKetThuc], [TongTien]) VALUES (102, 2, 2, CAST(N'2025-04-20T05:00:00.000' AS DateTime), CAST(N'2025-04-20T10:00:00.000' AS DateTime), 66000)
INSERT [dbo].[ThanhToan] ([idThanhToan], [idKhachHang], [idMay], [ThoiGianBatDau], [ThoiGianKetThuc], [TongTien]) VALUES (103, 3, 4, CAST(N'2025-04-20T15:30:00.000' AS DateTime), CAST(N'2025-04-20T18:00:00.000' AS DateTime), 24500)
INSERT [dbo].[ThanhToan] ([idThanhToan], [idKhachHang], [idMay], [ThoiGianBatDau], [ThoiGianKetThuc], [TongTien]) VALUES (104, 1, 2, CAST(N'2025-04-20T09:00:00.000' AS DateTime), CAST(N'2025-04-20T12:00:00.000' AS DateTime), 30000)
GO
INSERT [dbo].[ThanhToan_DichVu] ([idThanhToan_DichVu], [idThanhToan], [idDichVu], [SoLuong]) VALUES (201, 101, 1, 2)
INSERT [dbo].[ThanhToan_DichVu] ([idThanhToan_DichVu], [idThanhToan], [idDichVu], [SoLuong]) VALUES (202, 102, 2, 2)
INSERT [dbo].[ThanhToan_DichVu] ([idThanhToan_DichVu], [idThanhToan], [idDichVu], [SoLuong]) VALUES (203, 103, 3, 1)
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK__ThanhToan__KhachHang] FOREIGN KEY([idKhachHang])
REFERENCES [dbo].[KhachHang] ([idKhachHang])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK__ThanhToan__KhachHang]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK__ThanhToan__May] FOREIGN KEY([idMay])
REFERENCES [dbo].[May] ([idMay])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK__ThanhToan__May]
GO
ALTER TABLE [dbo].[ThanhToan_DichVu]  WITH CHECK ADD  CONSTRAINT [FK__ThanhToan__DichVu] FOREIGN KEY([idDichVu])
REFERENCES [dbo].[DichVu] ([idDichVu])
GO
ALTER TABLE [dbo].[ThanhToan_DichVu] CHECK CONSTRAINT [FK__ThanhToan__DichVu]
GO
ALTER TABLE [dbo].[ThanhToan_DichVu]  WITH CHECK ADD  CONSTRAINT [FK__ThanhToan_DichVu__ThanhToan] FOREIGN KEY([idThanhToan])
REFERENCES [dbo].[ThanhToan] ([idThanhToan])
GO
ALTER TABLE [dbo].[ThanhToan_DichVu] CHECK CONSTRAINT [FK__ThanhToan_DichVu__ThanhToan]
GO
/****** Object:  Trigger [dbo].[trg_CapNhatTongTien]    Script Date: 22/04/2025 6:22:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_CapNhatTongTien]
ON [dbo].[ThanhToan]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE tt
    SET TongTien =
        -- Tiền sử dụng máy: phút * đơn giá chia 60
        DATEDIFF(MINUTE, tt.ThoiGianBatDau, tt.ThoiGianKetThuc) * ISNULL(m.GiaTien, 0) / 60
        +
        -- Cộng thêm tổng tiền dịch vụ (có nhân số lượng)
        ISNULL((
            SELECT SUM(CAST(ISNULL(dv.GiaDichVu, 0) AS INT) * ISNULL(ttdv.SoLuong, 1))
            FROM ThanhToan_DichVu ttdv
            JOIN DichVu dv ON dv.idDichVu = ttdv.idDichVu
            WHERE ttdv.idThanhToan = tt.idThanhToan
        ), 0)
    FROM ThanhToan tt
    INNER JOIN inserted i ON i.idThanhToan = tt.idThanhToan
    INNER JOIN May m ON m.idMay = tt.idMay;
END;
GO
ALTER TABLE [dbo].[ThanhToan] ENABLE TRIGGER [trg_CapNhatTongTien]
GO
USE [master]
GO
ALTER DATABASE [QuanLyQuanInternet] SET  READ_WRITE 
GO
