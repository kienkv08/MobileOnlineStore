USE [master]
GO
/****** Object:  Database [DURIAN_SHOP]    Script Date: 7/24/2023 9:28:23 PM ******/
CREATE DATABASE [DURIAN_SHOP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DURIAN_SHOP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DURIAN_SHOP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DURIAN_SHOP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DURIAN_SHOP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DURIAN_SHOP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DURIAN_SHOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DURIAN_SHOP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET ARITHABORT OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DURIAN_SHOP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DURIAN_SHOP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DURIAN_SHOP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DURIAN_SHOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DURIAN_SHOP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DURIAN_SHOP] SET  MULTI_USER 
GO
ALTER DATABASE [DURIAN_SHOP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DURIAN_SHOP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DURIAN_SHOP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DURIAN_SHOP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DURIAN_SHOP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DURIAN_SHOP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DURIAN_SHOP] SET QUERY_STORE = OFF
GO
USE [DURIAN_SHOP]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](32) NOT NULL,
	[Password] [varchar](64) NOT NULL,
	[Role_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[categoryId] [int] NOT NULL,
	[userId] [bigint] NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogCategory]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](max) NOT NULL,
	[Price_Bonus] [decimal](10, 2) NOT NULL,
	[Hex_Code] [varchar](max) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[User_Id] [bigint] NOT NULL,
	[Product_Id] [bigint] NOT NULL,
	[Rating] [float] NULL,
	[Description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[User_Id] [bigint] NOT NULL,
	[Total_Price] [decimal](10, 2) NULL,
	[Created_Date] [datetime] NULL,
	[status] [int] NULL,
	[Name] [nvarchar](200) NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Order_Id] [bigint] NOT NULL,
	[Product_Id] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderHistory]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderHistory](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NOT NULL,
	[date] [date] NOT NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Screen] [nvarchar](max) NOT NULL,
	[Camera] [nvarchar](max) NOT NULL,
	[Ram] [nvarchar](max) NOT NULL,
	[Pin] [nvarchar](max) NULL,
	[Chipset] [nvarchar](max) NULL,
	[Screen_resolution] [nvarchar](max) NULL,
	[img] [varchar](max) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](max) NOT NULL,
	[Product_Id] [bigint] NOT NULL,
	[Color_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariant]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariant](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Product_Id] [bigint] NOT NULL,
	[Color_Id] [int] NOT NULL,
	[Storage_Id] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Variant_Price] [decimal](10, 2) NULL,
	[Status] [int] NULL,
	[Sale_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Percent] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Security]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Security](
	[Question_Id] [bigint] NULL,
	[Account_Id] [bigint] NOT NULL,
	[Answer] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Account_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityQuestion]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityQuestion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] NOT NULL,
	[Status] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Storage_Size] [varchar](10) NULL,
	[Price_Bonus] [decimal](10, 2) NOT NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubBlog]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubBlog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
	[blogId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/24/2023 9:28:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Phone] [varchar](12) NULL,
	[Address] [nvarchar](max) NULL,
	[Gender] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (2, N'kienkieu202', N'Kmnazsnsde12#', 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (3, N'kienkieu2002', N'Kmnkmn12#', 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (4, N'PhanTu', N'Kmnkmn12#', 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (5, N'Vietanh', N'Kmnkmn12#', 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (6, N'dasdas', N'Kmnkmn12#', 2)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (7, N'up', N'Tungthoi0%', 2)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (8, N'chess', N'1111', 2)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (9, N'admin', N'Kmnkmn12#', 1)
INSERT [dbo].[Account] ([Id], [Username], [Password], [Role_Id]) VALUES (10, N'crddtest', N'Kmnkmn12#', 2)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id], [title], [categoryId], [userId], [status]) VALUES (2, N' Thời nghệ tuần 3 tháng 7: Beats Studio Pro ra mắt, iPhone 16 Pro Max
          có camera siêu tele', 1, 9, 1)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogCategory] ON 

INSERT [dbo].[BlogCategory] ([id], [categoryName], [status]) VALUES (1, N'News', 1)
INSERT [dbo].[BlogCategory] ([id], [categoryName], [status]) VALUES (2, N'Reviews', 1)
INSERT [dbo].[BlogCategory] ([id], [categoryName], [status]) VALUES (3, N'Updates and Features', 1)
INSERT [dbo].[BlogCategory] ([id], [categoryName], [status]) VALUES (4, N'Tips', 1)
SET IDENTITY_INSERT [dbo].[BlogCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (1, N'Red', CAST(100.00 AS Decimal(10, 2)), N'#ff0000', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (2, N'Starlight', CAST(0.00 AS Decimal(10, 2)), N'#F8F9EC', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (3, N'Midnight', CAST(0.00 AS Decimal(10, 2)), N'#302E41', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (4, N'Black', CAST(0.00 AS Decimal(10, 2)), N'#000000', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (5, N'White', CAST(0.00 AS Decimal(10, 2)), N'#ffffff', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (6, N'Silver', CAST(0.00 AS Decimal(10, 2)), N'#c0c0c0', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (7, N'Gold', CAST(100.00 AS Decimal(10, 2)), N'#ffd700', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (8, N'Green', CAST(0.00 AS Decimal(10, 2)), N'#00ff00', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (9, N'Gray', CAST(0.00 AS Decimal(10, 2)), N'#808080', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (10, N'Blue', CAST(0.00 AS Decimal(10, 2)), N'#0000ff', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (11, N'Purple', CAST(0.00 AS Decimal(10, 2)), N'#800080', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (12, N'Pink', CAST(0.00 AS Decimal(10, 2)), N'#ffc0cb', 1)
INSERT [dbo].[Color] ([Id], [Color], [Price_Bonus], [Hex_Code], [Status]) VALUES (13, N'Yellow', CAST(25.00 AS Decimal(10, 2)), N'#ffff00', 1)
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (17, 10, CAST(1398.00 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 6, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (18, 10, CAST(899.00 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 5, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (19, 10, CAST(1168.20 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 6, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (20, 10, CAST(1019.15 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 6, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (21, 10, CAST(699.00 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 5, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (22, 10, CAST(1620.10 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 2, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (23, 10, CAST(1019.15 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 4, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (24, 10, CAST(35783.50 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 2, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (25, 10, CAST(764.10 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 2, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
INSERT [dbo].[Order] ([Id], [User_Id], [Total_Price], [Created_Date], [status], [Name], [Address], [Phone]) VALUES (26, 10, CAST(424.50 AS Decimal(10, 2)), CAST(N'2023-07-21T00:00:00.000' AS DateTime), 2, N'Kien kieu', N'Viet Nam - Ha Noi', N'0329311571')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (37, 17, 149, 2)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (38, 18, 206, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (39, 19, 14, 2)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (41, 20, 256, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (45, 21, 20, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (46, 22, 236, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (47, 22, 2, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (48, 23, 256, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (49, 24, 252, 5)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (50, 24, 247, 4)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (51, 24, 206, 4)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (52, 24, 129, 5)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (53, 24, 249, 5)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (54, 24, 128, 5)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (55, 24, 6, 4)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (56, 24, 149, 3)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (57, 24, 112, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (58, 24, 35, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (59, 25, 21, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_Id], [Product_Id], [Quantity]) VALUES (60, 26, 21, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[orderHistory] ON 

INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (5, 17, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (6, 18, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (7, 18, CAST(N'2023-07-21' AS Date), N'Order paid')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (8, 19, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (9, 17, CAST(N'2023-07-21' AS Date), N'Delivery in progress')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (10, 17, CAST(N'2023-07-21' AS Date), N'Successful delivery')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (11, 17, CAST(N'2023-07-21' AS Date), N'Order has been canceled')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (12, 18, CAST(N'2023-07-21' AS Date), N'Delivery in progress')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (13, 18, CAST(N'2023-07-21' AS Date), N'Successful delivery')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (14, 19, CAST(N'2023-07-21' AS Date), N'Order has been canceled')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (15, 20, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (16, 20, CAST(N'2023-07-21' AS Date), N'Order has been canceled')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (17, 21, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (18, 21, CAST(N'2023-07-21' AS Date), N'Delivery in progress')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (19, 21, CAST(N'2023-07-21' AS Date), N'Successful delivery')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (20, 22, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (21, 23, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (22, 23, CAST(N'2023-07-21' AS Date), N'Delivery in progress')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (23, 24, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (24, 25, CAST(N'2023-07-21' AS Date), N'Order placed')
INSERT [dbo].[orderHistory] ([id], [order_id], [date], [description]) VALUES (25, 26, CAST(N'2023-07-21' AS Date), N'Order placed')
SET IDENTITY_INSERT [dbo].[orderHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (1, N'Iphone SE', CAST(429.00 AS Decimal(10, 2)), N'The iPhone SE is a compact yet powerful smartphone that delivers incredible strength and performance in a small and sleek design./Powered by the A13 Bionic chip, the iPhone SE ensures smooth and fast operation, allowing users to seamlessly navigate through apps, play games, and multitask effortlessly./With its high-quality camera, the iPhone SE captures stunning photos and videos with features like Portrait mode, Night mode, and 4K video recording, delivering exceptional detail and clarity./The 4.7-inch Retina HD display with True Tone technology offers vibrant colors and accurate visuals, providing an immersive viewing experience for users./Equipped with Touch ID for secure authentication and support for augmented reality (AR), the iPhone SE not only provides reliable security but also opens up a world of creative and entertainment possibilities for users.', N'4.7 inch', N'12MP', N'4GB', N'2018mAh', N'Chip A15 Bionic 6 nhân', N'1334 x 750 pixels', N'SEstarlight3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (3, N'Iphone 11', CAST(599.00 AS Decimal(10, 2)), N'iPhone 11: Redefining Mobile Excellence/Experience the power and innovation of the iPhone 11/With its advanced A13 Bionic chip, stunning dual-camera system, immersive display, and enhanced security features like Face ID, the iPhone 11 sets new standards for smartphone excellence. /Discover a world of possibilities in the palm of your hand.', N'6.1 inch', N' 2MP', N'4GB', N'3110 mAh', N'A13 Bionic', N'1792 x 828 pixels', N'11black2.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (4, N'Iphone 11 Pro', CAST(999.00 AS Decimal(10, 2)), N'iPhone 11 Pro: Unleash the Power of Pro/Experience the pinnacle of smartphone innovation with the iPhone 11 Pro./With its advanced performance, cutting-edge camera system, and stunning display, this device redefines what a smartphone can do./From professional-grade photography to unmatched speed and power, the iPhone 11 Pro is the ultimate companion for those who demand nothing but the best.', N'5.8 inch ', N'12MP ', N'4GB', N'3046 mAh', N'A13 Bionic
', N'2436 x 1125 pixels', N'11progold3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (5, N'Iphone 11 Pro Max', CAST(1099.00 AS Decimal(10, 2)), N'Experience the epitome of luxury and innovation with the iPhone 11 Pro Max. /Immersive Visuals: The iPhone 11 Pro Max boasts a massive 6.5-inch Super Retina XDR OLED display, delivering stunning visuals that captivate your senses./Professional-Grade Photography: With its triple-camera system, including wide, telephoto, and ultra-wide lenses, the iPhone 11 Pro Max enables you to capture breathtaking photos and videos with exceptional clarity and detail./Unmatched Performance: Powered by the A13 Bionic chip, the iPhone 11 Pro Max offers unparalleled speed, efficiency, and power, ensuring smooth performance for all your tasks and activities./Advanced Features: Equipped with features like Face ID for secure authentication and Apple''s Night mode for impressive low-light photography, the iPhone 11 Pro Max brings advanced functionality and convenience to your fingertips.', N'6.5 inch', N'12MP ', N'4GB', N'3969 mAh', N'A13 Bionic', N'2688 x 1242 pixels', N'11promaxgreen3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (6, N'Iphone 12 ', CAST(599.00 AS Decimal(10, 2)), N'Discover the cutting-edge technology and sleek design of the iPhone 12. /Powerful Technology: The iPhone 12 boasts the advanced A14 Bionic chip for lightning-fast performance./Stunning Display: Experience vibrant colors and sharp details on the Super Retina XDR display./Dual-Camera System: Capture professional-quality photos and videos with the 12MP wide and ultra-wide lenses./Sleek Design: The iPhone 12 combines innovation and style with its durable construction and premium aesthetics.', N'6.1 inch', N'12MP', N'6GB', N'2815 mAh', N'Apple A14 Bionic', N'1170 x 2532 pixels', N'12black3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (8, N'Iphone 12 Mini', CAST(699.00 AS Decimal(10, 2)), N'Experience the power of a flagship smartphone in a compact design with the iPhone 12 Mini./Compact Design: The iPhone 12 Mini offers flagship power and features in a pocket-friendly size./Powerful Performance: With the A14 Bionic chip, expect blazing-fast performance and seamless multitasking./Stunning Visuals: Enjoy vibrant and detailed visuals on the Super Retina XDR display./Advanced Dual-Camera System: Capture impressive photos and videos with the 12MP dual-camera setup.', N'5.4 inch', N'12MP', N'4GB', N'2227 mAh', N'Apple A14 Bionic', N'1080 x 2340 pixels', N'12minigreen3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (10, N'Iphone 12 Pro Max', CAST(1099.00 AS Decimal(10, 2)), N'Discover the epitome of smartphone excellence with the iPhone 12 Pro Max./Unmatched Performance: The iPhone 12 Pro Max delivers unparalleled performance with its A14 Bionic chip, ensuring seamless multitasking and speedy operations./Pro-Grade Camera System: Capture professional-quality photos and videos with the advanced triple-camera system, including wide, ultra-wide, and telephoto lenses./Immersive Display: Enjoy stunning visuals on the Super Retina XDR display, offering vibrant colors and exceptional clarity./Premium Design and Durability: The iPhone 12 Pro Max features a sleek design with a durable construction, including a Ceramic Shield front cover and stainless steel frame./Advanced Features: Benefit from 5G connectivity, Face ID, MagSafe, and Dolby Vision HDR video recording for a cutting-edge smartphone experience.', N'6.7 inch', N'12MP', N'6GB', N'3687 mAh', N'Apple A14 Bionic', N'1170 x 2532 pixels', N'12promaxgray3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (11, N'Iphone 13', CAST(599.00 AS Decimal(10, 2)), N'Experience the superiority of iPhone 13/Experience the superiority of iPhone 13./Vibrant display space - 6.1" Super Retina XDR display with high brightness and sharpness./The ultimate cinematic experience - 12MP dual cameras with optical image stabilization./Power optimization - 20W fast charge, 50% full battery in about 30 minutes.', N'6.1 inch', N'12MP', N'4GB', N'4,352mAh', N'Apple A15', N'2778 x 1284 pixel', N'13midnight1.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (15, N'Iphone 13 Mini', CAST(699.00 AS Decimal(10, 2)), N'Experience a compact but high-performance smartphone/Outstanding performance - Powerful Apple A15 Bionic chip, supports high-speed 5G network./Vibrant display space - 5.4" Super Retina XDR display with high brightness and sharpness./The ultimate cinematic experience - 12MP dual cameras with optical image stabilization./Power optimization - 20W fast charge, 50% full battery in about 30 minutes.', N'5.4 inch', N'12MP', N'4GB', N'2,406mAh', N'Apple A15', N'1080 x 2340 pixels', N'13miniblue3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (17, N'Iphone 13 Pro', CAST(999.00 AS Decimal(10, 2)), N'Experience the power of Iphone 13 Pro/Outstanding performance - Powerful Apple A15 Bionic chip, supports high-speed 5G network./Vibrant display space - 6.1" Super Retina XDR display with high brightness and sharpness./The ultimate cinematic experience - Cluster of 3 12MP cameras, supporting optical image stabilization./Power optimization - 20W fast charging, 50% battery full in about 30 minutes Outstanding performance - Powerful Apple A15 Bionic chip, supports high-speed 5G network./Vibrant display space - 6.1" Super Retina XDR display with high brightness and sharpness./The ultimate cinematic experience - Cluster of 3 12MP cameras, supporting optical image stabilization./Power optimization - 20W fast charge, 50% full battery in about 30 minutes./', N'6.1 inch', N'12MP', N'6GB', N'3,095mAh', N'Apple A15
', N'1170 x 2532 pixels', N'13progray3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (21, N'Iphone 13 Pro Max', CAST(1099.00 AS Decimal(10, 2)), N'The best product in the iPhone 13 series/Outstanding performance - Powerful Apple A15 Bionic chip, supports high-speed 5G network./Vibrant display space - 6.7" Super Retina XDR display with high brightness and sharpness./The ultimate cinematic experience - Cluster of 3 dual 12MP cameras, supporting optical image stabilization./Power optimization - 20W fast charge, 50% full battery in about 30 minutes.', N'6.7 inch', N'12MP', N'6GB', N'4,352mAh', N'Apple A15', N'2778 x 1284 pixel', N'13promaxgreen3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (23, N'Iphone 14', CAST(799.00 AS Decimal(10, 2)), N'Breakthrough change with Iphone 14/Excellent design, meticulous every line - Comprehensive upgrade with new design, many youthful color options./Elevate the ultimate entertainment experience - 6.1" screen with OLED panel with high-end Super Retina XDR technology./Take more professional photos - Cluster of 2 12MP cameras with many modern shooting modes and functions./The world''s leading performance - Apple A15 Bionic 6-core fast, stable processor.', N'6.1 inch', N'12MP', N'6GB', N'3279 mAh', N'Apple A15 Bionic 6 nhân', N'2532 x 1170 pixels', N'14yellow3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (26, N'Iphone 14 Plus', CAST(899.00 AS Decimal(10, 2)), N'Highlights of Iphone 14/Impressive visual experience - Sharp 6.7"" large screen with Super Retina XDR . technology./Long-lasting use with large battery for up to 26 hours of continuous video playback./Excellent design, meticulous every line - Comprehensive upgrade with new design, many youthful color options./The world''s leading performance - Apple A15 Bionic 6-core fast, stable processor.', N'6.7 inch', N'12MP', N'6Gb', N'4325 mAh', N'Apple A15 Bionic', N'2778 x 1284 pixel', N'14plusblack3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (28, N'Iphone 14 Pro', CAST(999.00 AS Decimal(10, 2)), N'Experience the pinnacle with iphone 14 pro/mpressive visual experience - Dynamic Island display, sharp with Super Retina XDR technology, smooth 120 Hz./Excellent design, meticulous every line - Comprehensive upgrade with new design, many youthful color options./The world''s leading performance - Apple A16 Bionic is fast and stable for all tasks./Professional photography standard camera - 48MP rear camera equipped with a variety of shooting technologies.', N'6.1 inch', N'48MP', N'6GB', N'3200 mAh', N'Apple A16 Bionic 6 nhân', N'2556 x 1179 pixels', N'14propurple3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (30, N'Iphone 14 Pro Max', CAST(1099.00 AS Decimal(10, 2)), N'The most powerful iphone ever/Dynamic Island screen - The disappearance of the notch screen replaced by a tablet design, 6.7-inch OLED, always-on display support./Powerful configuration of iPhone 14 Pro Max, great performance from A16 Bionic chipset./Mastering photography technology - 48MP rear camera, vivid TOF sensor./Built-in lithium-ion battery combined with innovative fast charging technology.', N'6.7 inch', N'48MP', N'8GB', N'4.352 mAh', N'Apple A16 Bionic 6 nhân ', N'1284x 2778 pixels', N'14promaxgold3.jpg', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [Screen], [Camera], [Ram], [Pin], [Chipset], [Screen_resolution], [img], [Status]) VALUES (138, N'Iphone', CAST(999.00 AS Decimal(10, 2)), N'dfsdfsd', N'fdf', N'fsdfsd', N'sdfsdf1', N'fsdsd', N'fsdsdfs', N'dsfsdf', N'11promaxgreen3.jpg', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImage] ON 

INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (1, N'SEred1.jpg', 1, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (2, N'SEred2.jpg', 1, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (3, N'SEred3.jpg', 1, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (5, N'SEstarlight1.jpg', 1, 2)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (6, N'SEstarlight2.jpg', 1, 2)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (8, N'SEMightnight1.jpg', 1, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (9, N'SEmidnight2.jpg', 1, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (10, N'SEmidnight3.jpg', 1, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (11, N'11black1.jpg', 3, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (12, N'11black2.jpg', 3, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (13, N'11black3.jpg', 3, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (14, N'11white1.jpg', 3, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (15, N'11white2.jpg', 3, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (16, N'11white3.jpg', 3, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (17, N'11prosilver1.jpg', 4, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (18, N'11prosilver2.jpg', 4, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (19, N'11prosilver3.jpg', 4, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (20, N'11progold1.jpg', 4, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (21, N'11progold2.jpg', 4, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (22, N'11progold3.jpg', 4, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (23, N'11progreen1.jpg', 4, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (24, N'11progreen2.jpg', 4, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (25, N'11progreen3.jpg', 4, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (27, N'11promaxgray1.jpg', 5, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (29, N'11promaxgray2.jpg', 5, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (30, N'11promaxgray3.jpg', 5, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (31, N'11promaxgreen1.jpg', 5, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (33, N'11promaxgreen2.jpg', 5, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (34, N'11promaxgreen3.jpg', 5, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (35, N'11promaxsilver1.jpg', 5, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (36, N'11promaxsilver2.jpg', 5, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (37, N'11promaxsilver3.jpg', 5, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (38, N'11promaxgold1.jpg', 5, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (40, N'11promaxgold2.jpg', 5, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (41, N'11promaxgold3.jpg', 5, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (42, N'12blue1.jpg', 6, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (43, N'12blue2.jpg', 6, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (44, N'12blue3.jpg', 6, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (45, N'12purple1.jpg', 6, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (46, N'12purple2.jpg', 6, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (47, N'12purple3.jpg', 6, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (48, N'12green1.jpg', 6, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (49, N'12green2.jpg', 6, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (50, N'12green3.jpg', 6, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (51, N'12white1.jpg', 6, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (52, N'12white2.jpg', 6, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (53, N'12white3.jpg', 6, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (54, N'12black1.jpg', 6, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (55, N'12black2.jpg', 6, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (56, N'12black3.jpg', 6, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (57, N'12red1.jpg', 6, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (59, N'12red2.jpg', 6, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (60, N'12red3.jpg', 6, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (61, N'12miniblack1.jpg', 8, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (62, N'12miniblack2.jpg', 8, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (63, N'12miniblack3.jpg', 8, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (64, N'12minipurple1.jpg', 8, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (65, N'12minipurple2jpg.jpg', 8, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (66, N'12minipurple3.jpg', 8, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (67, N'12miniblue1.jpg', 8, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (68, N'12miniblue2.jpg', 8, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (70, N'12miniblue3.jpg', 8, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (71, N'12minigreen1.jpg', 8, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (72, N'12minigreen2.jpg', 8, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (73, N'12minigreen3.jpg', 8, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (74, N'12minired1.jpg', 8, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (75, N'12minired2.jpg', 8, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (76, N'12minired3.jpg', 8, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (77, N'12miniwhite1.jpg', 8, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (78, N'12miniwhite2.jpg', 8, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (79, N'12miniwhite3.jpg', 8, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (80, N'12promaxgray1.jpg', 10, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (81, N'12promaxgray2.jpg', 10, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (82, N'12promaxgray3.jpg', 10, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (83, N'12promaxblue1.jpg', 10, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (84, N'12promaxblue2.jpg', 10, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (85, N'12promaxblue3.jpg', 10, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (86, N'12promaxgold1.jpg', 10, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (87, N'12promaxgold2.jpg', 10, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (88, N'12promaxgold3.jpg', 10, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (89, N'12promaxsilver1.jpg', 10, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (90, N'12promaxsilver2.jpg', 10, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (91, N'12promaxsilver3.jpg', 10, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (92, N'13red1.jpg', 11, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (93, N'13red2.jpg', 11, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (94, N'13red3.jpg', 11, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (95, N'13green1.jpg', 11, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (96, N'13green2.jpg', 11, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (97, N'13green3.jpg', 11, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (98, N'13starlight1.jpg', 11, 2)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (99, N'13starlight2.jpg', 11, 2)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (100, N'13starlight3.jpg', 11, 2)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (101, N'13midnight1.jpg', 11, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (102, N'13midnight2.jpg', 11, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (103, N'13midnight3.jpg', 11, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (104, N'13pink1.jpg', 11, 12)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (105, N'13pink2.jpg', 11, 12)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (106, N'13pink3.jpg', 11, 12)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (107, N'13blue1.jpg', 11, 10)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (108, N'13blue2.jpg', 11, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (110, N'13blue3.jpg', 11, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (111, N'13minired1.jpg', 15, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (112, N'13minired2.jpg', 15, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (113, N'13minired3.jpg', 15, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (114, N'13minigreen1.jpg', 15, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (115, N'13minigreen2.jpg', 15, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (116, N'13minigreen3.jpg', 15, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (117, N'13ministarlight1.jpg', 15, 2)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (118, N'13ministarlight2.jpg', 15, 2)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (119, N'13ministarlight3.jpg', 15, 2)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (120, N'13minimidnight1.jpg', 15, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (121, N'13minimidnight2.jpg', 15, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (122, N'13minimidnight3.jpg', 15, 3)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (123, N'13minipink1.jpg', 15, 12)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (125, N'13minipink2.jpg', 15, 12)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (126, N'13minipink3.jpg', 15, 12)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (127, N'13miniblue1.jpg', 15, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (128, N'13miniblue2.jpg', 15, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (129, N'13miniblue3.jpg', 15, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (131, N'13prosilver1.jpg', 17, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (132, N'13prosilver2.jpg', 17, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (133, N'13prosilver3.jpg', 17, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (134, N'13problue1.jpg', 17, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (135, N'13problue2.jpg', 17, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (136, N'13problue3.jpg', 17, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (137, N'13progray1.jpg', 17, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (138, N'13progray2.jpg', 17, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (139, N'13progray3.jpg', 17, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (140, N'13progold1.jpg', 17, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (141, N'13progold2.jpg', 17, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (142, N'13progold3.jpg', 17, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (143, N'13progreen1.jpg', 17, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (144, N'13progreen2.jpg', 17, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (145, N'13progreen3.jpg', 17, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (146, N'13promaxgreen1.jpg', 21, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (147, N'13promaxgreen2.jpg', 21, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (148, N'13promaxgreen3.jpg', 21, 8)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (149, N'13promaxgray1.jpg', 21, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (150, N'13promaxgray2.jpg', 21, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (151, N'13promaxgray3.jpg', 21, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (152, N'13promaxgold1.jpg', 21, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (153, N'13promaxgold2.jpg', 21, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (154, N'13promaxgold3.jpg', 21, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (155, N'13promaxsilver1.jpg', 21, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (156, N'13promaxsilver2.jpg', 21, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (157, N'13promaxsilver3.jpg', 21, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (158, N'13promaxblue1.jpg', 21, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (159, N'13promaxblue2.jpg', 21, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (160, N'13promaxblue3.jpg', 21, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (161, N'14blue1.jpg', 23, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (162, N'14blue2.jpg', 23, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (163, N'14blue3.jpg', 23, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (164, N'14yellow1.jpg', 23, 13)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (165, N'14yellow2.jpg', 23, 13)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (166, N'14yellow3.jpg', 23, 13)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (167, N'14purple1.jpg', 23, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (168, N'14purple2.jpg', 23, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (169, N'14purple3.jpg', 23, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (170, N'14red1.jpg', 23, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (171, N'14red2.jpg', 23, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (172, N'14red3.jpg', 23, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (173, N'14plusred1.jpg', 26, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (174, N'14plusred2jpg.jpg', 26, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (176, N'14plusred3.jpg', 26, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (177, N'14plusblue1.jpg', 26, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (178, N'14plusblue2.jpg', 26, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (179, N'14plusblue3.jpg', 26, 10)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (180, N'14pluswhite1.jpg', 26, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (181, N'14pluswhite2.jpg', 26, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (182, N'14pluswhite3.jpg', 26, 5)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (183, N'14plusblack1.jpg', 26, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (184, N'14plusblack2.jpg', 26, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (185, N'14plusblack3.jpg', 26, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (186, N'14pluspurple1.jpg', 26, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (187, N'14pluspurple2.jpg', 26, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (189, N'14pluspurple3.jpg', 26, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (190, N'14propurple1.jpg', 28, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (191, N'14propurple2.jpg', 28, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (192, N'14propurple3.jpg', 28, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (193, N'14progold1.jpg', 28, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (194, N'14progold2.jpg', 28, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (195, N'14progold3.jpg', 28, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (196, N'14problack1.jpg', 28, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (197, N'14problack2.jpg', 28, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (199, N'14problack3.jpg', 28, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (200, N'14prosilver1.jpg', 28, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (201, N'14prosilver2.jpg', 28, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (202, N'14prosilver3.jpg', 28, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (203, N'14promaxblack1.jpg', 30, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (204, N'14promaxblack2.jpg', 30, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (205, N'14promaxblack3.jpg', 30, 4)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (206, N'14promaxpurple1.jpg', 30, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (207, N'14promaxpurple2.jpg', 30, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (208, N'14promaxpurple3.jpg', 30, 11)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (209, N'14promaxgold1.jpg', 30, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (210, N'14promaxgold2.jpg', 30, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (211, N'14promaxgold3.jpg', 30, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (212, N'14promaxsilver1.jpg', 30, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (213, N'14promaxsilver2.jpg', 30, 6)
GO
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (214, N'14promaxsilver3.jpg', 30, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (301, N'12miniblue1.jpg', 138, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (303, N'14yellow1.jpg', 138, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (304, N'11progreen3.jpg', 138, 6)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (307, N'11promaxgreen3.jpg', 138, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (308, N'11promaxgray2.jpg', 138, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (309, N'11black2.jpg', 138, 1)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (311, N'11promaxgreen3.jpg', 138, 9)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (313, N'11prosilver3.jpg', 138, 13)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (314, N'11promaxsilver2.jpg', 138, 7)
INSERT [dbo].[ProductImage] ([Id], [Url], [Product_Id], [Color_Id]) VALUES (315, N'12miniblack2.jpg', 138, 11)
SET IDENTITY_INSERT [dbo].[ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVariant] ON 

INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (1, 1, 1, 5, 4, CAST(479.00 AS Decimal(10, 2)), 2, 2)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (2, 1, 1, 1, -1, CAST(579.00 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (5, 1, 1, 2, 4, CAST(579.00 AS Decimal(10, 2)), 1, 7)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (6, 1, 2, 5, 0, CAST(429.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (7, 1, 2, 1, 0, CAST(479.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (8, 1, 2, 2, 0, CAST(529.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (9, 1, 3, 5, 0, CAST(429.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (10, 1, 3, 1, 5, CAST(479.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (11, 1, 3, 2, 5, CAST(529.00 AS Decimal(10, 2)), 1, 4)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (13, 3, 4, 5, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (14, 3, 4, 1, 3, CAST(649.00 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (15, 3, 4, 2, 4, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (16, 3, 4, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (17, 3, 5, 5, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (19, 3, 5, 1, 5, CAST(649.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (20, 3, 5, 2, 4, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (21, 3, 5, 3, 3, CAST(849.00 AS Decimal(10, 2)), 1, 11)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (22, 4, 6, 5, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (23, 4, 6, 1, 5, CAST(1049.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (24, 4, 6, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (25, 4, 6, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (26, 4, 7, 5, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (27, 4, 7, 1, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (28, 4, 7, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (29, 4, 7, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (30, 4, 8, 5, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (31, 4, 8, 1, 5, CAST(1049.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (32, 4, 8, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (33, 4, 8, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (34, 5, 6, 5, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (35, 5, 6, 1, 4, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (36, 5, 6, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (37, 5, 6, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (38, 5, 7, 5, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (39, 5, 7, 1, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (40, 5, 7, 2, 5, CAST(1299.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (41, 5, 7, 3, 5, CAST(1449.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (42, 5, 8, 5, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (43, 5, 8, 1, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (44, 5, 8, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (45, 5, 8, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (46, 5, 9, 5, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (47, 5, 9, 1, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (48, 5, 9, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (49, 5, 9, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (50, 6, 1, 5, 5, CAST(649.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (51, 6, 1, 1, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (52, 6, 1, 2, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (54, 6, 1, 3, 5, CAST(899.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (55, 6, 4, 5, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (56, 6, 4, 1, 5, CAST(649.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (57, 6, 4, 2, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (58, 6, 4, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (59, 6, 5, 5, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (60, 6, 5, 1, 5, CAST(649.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (61, 6, 5, 2, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (62, 6, 5, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (63, 6, 8, 5, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (67, 6, 8, 1, 5, CAST(649.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (68, 6, 8, 2, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (69, 6, 8, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (70, 6, 10, 5, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (71, 6, 10, 1, 5, CAST(649.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (72, 6, 10, 2, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (73, 6, 10, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (74, 6, 11, 5, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (75, 6, 11, 1, 5, CAST(649.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (76, 6, 11, 2, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (77, 6, 11, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (78, 8, 1, 5, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (79, 8, 1, 1, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (80, 8, 1, 2, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (81, 8, 1, 3, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (83, 8, 4, 5, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (84, 8, 4, 1, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (85, 8, 4, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (87, 8, 4, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (88, 8, 5, 5, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (89, 8, 5, 1, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (90, 8, 5, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (91, 8, 5, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (92, 8, 8, 5, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (93, 8, 8, 1, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (94, 8, 8, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (95, 8, 8, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (96, 8, 10, 5, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (97, 8, 10, 1, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (98, 8, 10, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (99, 8, 10, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (100, 8, 11, 5, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (101, 8, 11, 1, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (102, 8, 11, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (103, 8, 11, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (104, 10, 6, 5, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (105, 10, 6, 1, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (106, 10, 6, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (107, 10, 6, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (108, 10, 6, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (109, 10, 7, 5, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
GO
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (110, 10, 7, 1, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (111, 10, 7, 2, 5, CAST(1299.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (112, 10, 7, 3, 4, CAST(1499.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (113, 10, 7, 4, 5, CAST(1699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (114, 10, 9, 5, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (115, 10, 9, 1, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (116, 10, 9, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (117, 10, 9, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (118, 10, 9, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (119, 10, 10, 5, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (120, 10, 10, 1, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (121, 10, 10, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (122, 10, 10, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (123, 10, 10, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (124, 11, 1, 1, 5, CAST(649.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (125, 11, 1, 2, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (126, 11, 1, 3, 5, CAST(899.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (128, 11, 2, 1, 0, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (129, 11, 2, 2, 0, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (130, 11, 2, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (131, 11, 3, 1, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (133, 11, 3, 2, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (134, 11, 3, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (135, 11, 8, 1, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (137, 11, 8, 2, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (139, 11, 10, 1, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (140, 11, 10, 2, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (141, 11, 10, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (142, 11, 12, 1, 5, CAST(599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (143, 11, 12, 2, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (144, 11, 12, 3, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (145, 15, 1, 1, 5, CAST(749.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (146, 15, 1, 2, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (148, 15, 1, 3, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (149, 15, 2, 1, 0, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (150, 15, 2, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (151, 15, 2, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (152, 15, 3, 1, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (153, 15, 3, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (154, 15, 3, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (155, 15, 8, 1, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (156, 15, 8, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (157, 15, 8, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (158, 15, 10, 1, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (159, 15, 10, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (160, 15, 10, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (161, 15, 12, 1, 5, CAST(699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (162, 15, 12, 2, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (163, 15, 12, 3, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (164, 17, 6, 1, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (165, 17, 6, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (166, 17, 6, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (167, 17, 7, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (168, 17, 7, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (169, 17, 7, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (170, 17, 8, 1, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (171, 17, 8, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (172, 17, 8, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (173, 17, 9, 1, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (174, 17, 9, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (176, 17, 9, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (177, 17, 10, 1, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (178, 17, 10, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (179, 17, 10, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (180, 21, 6, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (181, 21, 6, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (184, 21, 6, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (185, 21, 6, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (186, 21, 7, 1, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (187, 21, 7, 2, 5, CAST(1299.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (188, 21, 7, 3, 5, CAST(1449.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (189, 21, 7, 4, 5, CAST(1699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (190, 21, 8, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (191, 21, 8, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (192, 21, 8, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (193, 21, 8, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (194, 21, 9, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (195, 21, 9, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (196, 21, 9, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (197, 21, 9, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (198, 21, 10, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (199, 21, 10, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (200, 21, 10, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (201, 21, 10, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (202, 23, 1, 1, 5, CAST(849.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (203, 23, 1, 2, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (204, 23, 1, 3, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (205, 23, 10, 1, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (206, 23, 10, 2, 0, CAST(899.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (207, 23, 10, 3, 5, CAST(1049.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (208, 23, 11, 1, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (209, 23, 11, 2, 4, CAST(899.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (210, 23, 11, 3, 5, CAST(1049.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (211, 23, 13, 1, 5, CAST(799.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (212, 23, 13, 2, 4, CAST(899.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (213, 23, 13, 3, 5, CAST(1049.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (214, 26, 1, 1, 5, CAST(949.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (216, 26, 1, 2, 5, CAST(1049.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (217, 26, 1, 3, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (218, 26, 4, 1, 5, CAST(899.00 AS Decimal(10, 2)), 1, 1)
GO
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (219, 26, 4, 2, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (220, 26, 4, 3, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (221, 26, 5, 1, 5, CAST(899.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (222, 26, 5, 2, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (223, 26, 5, 3, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (224, 26, 10, 1, 5, CAST(899.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (225, 26, 10, 2, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (226, 26, 10, 3, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (227, 26, 11, 1, 5, CAST(899.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (228, 26, 11, 2, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (229, 26, 11, 3, 5, CAST(1149.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (230, 28, 4, 1, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (231, 28, 4, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (232, 28, 4, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (233, 28, 6, 1, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (234, 28, 6, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (235, 28, 6, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (236, 28, 7, 1, 4, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (237, 28, 7, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (238, 28, 7, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (239, 28, 11, 1, 5, CAST(999.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (240, 28, 11, 2, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (241, 28, 11, 3, 5, CAST(1249.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (242, 30, 4, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (243, 30, 4, 2, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (244, 30, 4, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (245, 30, 4, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (246, 30, 6, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (247, 30, 6, 2, 0, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (248, 30, 6, 3, 4, CAST(1349.00 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (249, 30, 6, 4, 0, CAST(1599.00 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (250, 30, 7, 1, 5, CAST(1199.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (251, 30, 7, 2, 1, CAST(1299.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (252, 30, 7, 3, 0, CAST(1449.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (253, 30, 7, 4, 5, CAST(1699.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (255, 30, 11, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (256, 30, 11, 2, 3, CAST(1199.00 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (257, 30, 11, 3, 5, CAST(1349.00 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (258, 30, 11, 4, 3, CAST(1599.00 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (267, 138, 1, 1, 5, CAST(1099.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (268, 138, 6, 4, 5, CAST(1499.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (269, 138, 1, 4, 5, CAST(1599.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (270, 138, 9, 4, 3, CAST(1499.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (271, 138, 13, 1, 33, CAST(1074.00 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (272, 138, 7, 1, 123, CAST(1149.00 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[ProductVariant] ([Id], [Product_Id], [Color_Id], [Storage_Id], [Quantity], [Variant_Price], [Status], [Sale_id]) VALUES (273, 138, 11, 4, 33, CAST(1499.00 AS Decimal(10, 2)), 2, 3)
SET IDENTITY_INSERT [dbo].[ProductVariant] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role_Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Role_Name]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (1, CAST(0.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (2, CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (3, CAST(15.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (4, CAST(20.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (5, CAST(25.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (6, CAST(30.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (7, CAST(40.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (9, CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (10, CAST(32.00 AS Decimal(5, 2)))
INSERT [dbo].[Sale] ([Id], [Percent]) VALUES (11, CAST(50.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO
INSERT [dbo].[Security] ([Question_Id], [Account_Id], [Answer]) VALUES (1, 8, N'abc')
INSERT [dbo].[Security] ([Question_Id], [Account_Id], [Answer]) VALUES (1, 9, N'abc')
INSERT [dbo].[Security] ([Question_Id], [Account_Id], [Answer]) VALUES (1, 10, N'abc')
GO
SET IDENTITY_INSERT [dbo].[SecurityQuestion] ON 

INSERT [dbo].[SecurityQuestion] ([Id], [Question]) VALUES (1, N'What is your favorite song?')
INSERT [dbo].[SecurityQuestion] ([Id], [Question]) VALUES (2, N'Who is your best friend?')
INSERT [dbo].[SecurityQuestion] ([Id], [Question]) VALUES (3, N'Where are you come from?')
SET IDENTITY_INSERT [dbo].[SecurityQuestion] OFF
GO
INSERT [dbo].[Status] ([Id], [Status]) VALUES (1, N'In Cart')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (2, N'Processing')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (3, N'Pending')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (4, N'Shipping')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (5, N'Delivered')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (6, N'Cancel')
INSERT [dbo].[Status] ([Id], [Status]) VALUES (7, N'Refund')
GO
SET IDENTITY_INSERT [dbo].[Storage] ON 

INSERT [dbo].[Storage] ([Id], [Storage_Size], [Price_Bonus], [Status]) VALUES (1, N'128GB', CAST(50.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Storage] ([Id], [Storage_Size], [Price_Bonus], [Status]) VALUES (2, N'256GB', CAST(100.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Storage] ([Id], [Storage_Size], [Price_Bonus], [Status]) VALUES (3, N'512GB', CAST(250.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Storage] ([Id], [Storage_Size], [Price_Bonus], [Status]) VALUES (4, N'1TB', CAST(500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Storage] ([Id], [Storage_Size], [Price_Bonus], [Status]) VALUES (5, N'64GB', CAST(0.00 AS Decimal(10, 2)), 1)
SET IDENTITY_INSERT [dbo].[Storage] OFF
GO
INSERT [dbo].[User] ([Id], [Fullname], [Phone], [Address], [Gender]) VALUES (8, N'', N'', N'', NULL)
INSERT [dbo].[User] ([Id], [Fullname], [Phone], [Address], [Gender]) VALUES (9, N'Doc Co Cau Bai', N'0329311571', N'Viet Nam', 0)
INSERT [dbo].[User] ([Id], [Fullname], [Phone], [Address], [Gender]) VALUES (10, N'Kien kieu', N'0329311571', N'Viet Nam - Ha Noi', 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__536C85E4271540BE]    Script Date: 7/24/2023 9:28:24 PM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blog] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[BlogCategory] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Color] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Created_Date]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductVariant] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductVariant] ADD  DEFAULT ((1)) FOR [Sale_id]
GO
ALTER TABLE [dbo].[Storage] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[BlogCategory] ([id])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([status])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[ProductVariant] ([Id])
GO
ALTER TABLE [dbo].[orderHistory]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD FOREIGN KEY([Color_Id])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductVariant]  WITH CHECK ADD FOREIGN KEY([Color_Id])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[ProductVariant]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductVariant]  WITH CHECK ADD FOREIGN KEY([Storage_Id])
REFERENCES [dbo].[Storage] ([Id])
GO
ALTER TABLE [dbo].[ProductVariant]  WITH CHECK ADD  CONSTRAINT [FK_product_sale] FOREIGN KEY([Sale_id])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[ProductVariant] CHECK CONSTRAINT [FK_product_sale]
GO
ALTER TABLE [dbo].[Security]  WITH CHECK ADD FOREIGN KEY([Account_Id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Security]  WITH CHECK ADD FOREIGN KEY([Question_Id])
REFERENCES [dbo].[SecurityQuestion] ([Id])
GO
ALTER TABLE [dbo].[SubBlog]  WITH CHECK ADD FOREIGN KEY([blogId])
REFERENCES [dbo].[Blog] ([id])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [DURIAN_SHOP] SET  READ_WRITE 
GO
