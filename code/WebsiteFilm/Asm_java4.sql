USE [master]
GO
/****** Object:  Database [Asm_java4]    Script Date: 2/24/2022 3:41:30 PM ******/
CREATE DATABASE [Asm_java4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Asm_java4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Asm_java4.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Asm_java4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Asm_java4_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Asm_java4] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Asm_java4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Asm_java4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Asm_java4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Asm_java4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Asm_java4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Asm_java4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Asm_java4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Asm_java4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Asm_java4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Asm_java4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Asm_java4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Asm_java4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Asm_java4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Asm_java4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Asm_java4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Asm_java4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Asm_java4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Asm_java4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Asm_java4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Asm_java4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Asm_java4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Asm_java4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Asm_java4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Asm_java4] SET RECOVERY FULL 
GO
ALTER DATABASE [Asm_java4] SET  MULTI_USER 
GO
ALTER DATABASE [Asm_java4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Asm_java4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Asm_java4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Asm_java4] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Asm_java4] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Asm_java4', N'ON'
GO
USE [Asm_java4]
GO
/****** Object:  Table [dbo].[history]    Script Date: 2/24/2022 3:41:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[videoid] [int] NULL,
	[viewedDate] [datetime] NOT NULL,
	[isLike] [bit] NOT NULL,
	[likeDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 2/24/2022 3:41:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](10) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[isAdmin] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[video]    Script Date: 2/24/2022 3:41:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[video](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](250) NOT NULL,
	[href] [varchar](50) NOT NULL,
	[poster] [varchar](255) NULL,
	[views] [int] NOT NULL,
	[shares] [int] NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[isActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[history] ON 

INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (1, 2, 1, CAST(N'2022-02-17 18:57:40.867' AS DateTime), 1, CAST(N'2022-02-17 18:57:40.867' AS DateTime))
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (2, 2, 3, CAST(N'2022-02-17 18:57:40.867' AS DateTime), 1, CAST(N'2022-02-22 07:40:06.183' AS DateTime))
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (3, 2, 4, CAST(N'2022-02-18 15:58:13.480' AS DateTime), 1, CAST(N'2022-02-18 15:58:17.573' AS DateTime))
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (4, 2, 2, CAST(N'2022-02-19 09:01:23.757' AS DateTime), 0, NULL)
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (5, 3, 1, CAST(N'2022-02-21 18:04:33.577' AS DateTime), 0, NULL)
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (6, 3, 5, CAST(N'2022-02-21 18:23:05.393' AS DateTime), 0, NULL)
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (7, 4, 1, CAST(N'2022-02-22 05:22:26.377' AS DateTime), 0, NULL)
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (8, 1, 1, CAST(N'2022-02-24 00:23:43.027' AS DateTime), 1, CAST(N'2022-02-24 08:26:01.563' AS DateTime))
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (9, 1, 2, CAST(N'2022-02-24 00:23:49.653' AS DateTime), 1, CAST(N'2022-02-24 00:23:52.460' AS DateTime))
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (10, 1, 4, CAST(N'2022-02-24 00:23:58.887' AS DateTime), 1, CAST(N'2022-02-24 00:24:01.747' AS DateTime))
INSERT [dbo].[history] ([id], [userid], [videoid], [viewedDate], [isLike], [likeDate]) VALUES (11, 1, 3, CAST(N'2022-02-24 08:26:15.823' AS DateTime), 1, CAST(N'2022-02-24 08:26:18.353' AS DateTime))
SET IDENTITY_INSERT [dbo].[history] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [email], [isAdmin], [isActive]) VALUES (1, N'mxt', N'3453', N'sonjacksxc@gmail.com', 1, 1)
INSERT [dbo].[user] ([id], [username], [password], [email], [isAdmin], [isActive]) VALUES (2, N'thaidaynek', N'123', N'thaiday@gmail.com', 0, 1)
INSERT [dbo].[user] ([id], [username], [password], [email], [isAdmin], [isActive]) VALUES (3, N'mxts', N'123', N'sonjacvksxc@gmail.com', 0, 1)
INSERT [dbo].[user] ([id], [username], [password], [email], [isAdmin], [isActive]) VALUES (4, N'mxtxc', N'123', N'jacksxc@gmail.com', 0, 1)
SET IDENTITY_INSERT [dbo].[user] OFF
SET IDENTITY_INSERT [dbo].[video] ON 

INSERT [dbo].[video] ([id], [title], [href], [poster], [views], [shares], [description], [isActive]) VALUES (1, N'SÓNG GIÓss', N'j8U06veqxdU', N'https://img.youtube.com/vi/veLU8xeHrsc/maxresdefault.jpg', 0, 0, N' K-ICM x JACK', 1)
INSERT [dbo].[video] ([id], [title], [href], [poster], [views], [shares], [description], [isActive]) VALUES (2, N'BẠC PHẬN', N'WX7dUj14Z00', N'https://img.youtube.com/vi/WX7dUj14Z00/maxresdefault.jpg', 0, 0, N' K-ICM x JACK', 1)
INSERT [dbo].[video] ([id], [title], [href], [poster], [views], [shares], [description], [isActive]) VALUES (3, N'EM GÌ ƠI', N'cBClD7jylos', N'https://img.youtube.com/vi/cBClD7jylos/maxresdefault.jpg', 0, 0, N'K-ICM ft. JACK ', 1)
INSERT [dbo].[video] ([id], [title], [href], [poster], [views], [shares], [description], [isActive]) VALUES (4, N'TRÊN TÌNH BẠN DƯỚI TÌNH YÊU ?', N'IVOXMTInEoo', N'https://img.youtube.com/vi/IVOXMTInEoo/maxresdefault.jpg', 0, 0, N'Cover | lofi-K', 1)
INSERT [dbo].[video] ([id], [title], [href], [poster], [views], [shares], [description], [isActive]) VALUES (5, N'Enemy ', N'D9G1VOjN_84', N'https://img.youtube.com/vi/D9G1VOjN_84/maxresdefault.jpg', 0, 0, N'Imagine Dragons x J.I.D', 1)
INSERT [dbo].[video] ([id], [title], [href], [poster], [views], [shares], [description], [isActive]) VALUES (6, N'Dacin', N'0XFudmaObLI', N'https://img.youtube.com/vi/0XFudmaObLI/maxresdefault.jpg', 34, 0, N'Aaron Smith ', 1)
SET IDENTITY_INSERT [dbo].[video] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__user__AB6E6164BE931C66]    Script Date: 2/24/2022 3:41:30 PM ******/
ALTER TABLE [dbo].[user] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__user__F3DBC57207039A3B]    Script Date: 2/24/2022 3:41:30 PM ******/
ALTER TABLE [dbo].[user] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__video__7FF10F057B427C02]    Script Date: 2/24/2022 3:41:30 PM ******/
ALTER TABLE [dbo].[video] ADD UNIQUE NONCLUSTERED 
(
	[href] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[history] ADD  DEFAULT (getdate()) FOR [viewedDate]
GO
ALTER TABLE [dbo].[history] ADD  DEFAULT ((0)) FOR [isLike]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((0)) FOR [isAdmin]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[video] ADD  DEFAULT ((0)) FOR [views]
GO
ALTER TABLE [dbo].[video] ADD  DEFAULT ((0)) FOR [shares]
GO
ALTER TABLE [dbo].[video] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD FOREIGN KEY([userid])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[history]  WITH CHECK ADD FOREIGN KEY([videoid])
REFERENCES [dbo].[video] ([id])
GO
/****** Object:  StoredProcedure [dbo].[sp_selectUsersLikedVideoByVideoHref]    Script Date: 2/24/2022 3:41:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_selectUsersLikedVideoByVideoHref](@videoHref varchar(50))
as begin
select
		u.id, u.username, u.[password], u.email, u.isAdmin, u.isActive
	from
		 [user] u inner join history h on u.id = h.userid
			inner join video v on h.videoid = v.id
	where
		v.href = @videoHref and u.isActive = 1 and v.isActive = 1 and h.isLike = 1
end
GO
USE [master]
GO
ALTER DATABASE [Asm_java4] SET  READ_WRITE 
GO
