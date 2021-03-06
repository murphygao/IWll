USE [master]
GO
/****** Object:  Database [IWDA]    Script Date: 2015/3/21 2:15:49 ******/
CREATE DATABASE [IWDA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IWDA', FILENAME = N'D:\Lorance\Project\GitProject\IWll_Trunk\IWll.Web\App_Data\IWDA.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'IWDA_log', FILENAME = N'D:\Lorance\Project\GitProject\IWll_Trunk\IWll.Web\App_Data\IWDA_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [IWDA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IWDA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IWDA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IWDA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IWDA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IWDA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IWDA] SET ARITHABORT OFF 
GO
ALTER DATABASE [IWDA] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [IWDA] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [IWDA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IWDA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IWDA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IWDA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IWDA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IWDA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IWDA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IWDA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IWDA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IWDA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IWDA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IWDA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IWDA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IWDA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IWDA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IWDA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IWDA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IWDA] SET  MULTI_USER 
GO
ALTER DATABASE [IWDA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IWDA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IWDA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IWDA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [IWDA]
GO
/****** Object:  Table [dbo].[Canteenorder]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Canteenorder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personnelid] [int] NULL,
	[dishid] [int] NULL,
	[otherid] [int] NULL,
	[anotherid] [int] NULL,
	[ordertime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Children]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Children](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contactway_1] [nvarchar](20) NULL,
	[contactway_2] [nvarchar](20) NULL,
	[name] [nvarchar](20) NOT NULL,
	[childrenaddress] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diningroom]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diningroom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeid] [int] NULL,
	[name] [nvarchar](50) NOT NULL,
	[contact] [nvarchar](20) NOT NULL,
	[contactway_1] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dishes]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dishes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[price] [real] NULL,
	[introduction] [nvarchar](20) NULL,
	[picture] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL,
	[password] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Manage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicalcenter]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicalcenter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeid] [int] NULL,
	[name] [nvarchar](50) NOT NULL,
	[contact] [nvarchar](20) NOT NULL,
	[contactway_1] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicalcontent]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicalcontent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[content] [nvarchar](200) NULL,
	[picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicallist]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicallist](
	[medicalcenterid] [int] NOT NULL,
	[medicalcontentid] [int] NOT NULL,
 CONSTRAINT [MIDANDMID] PRIMARY KEY CLUSTERED 
(
	[medicalcenterid] ASC,
	[medicalcontentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medicalorder]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicalorder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personnelid] [int] NULL,
	[medicalcenterid] [int] NULL,
	[medicalcontentid] [int] NULL,
	[otherid] [int] NULL,
	[anohterid] [int] NULL,
	[ordertime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menuofdiningroom]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menuofdiningroom](
	[diningroomid] [int] NOT NULL,
	[dishesid] [int] NOT NULL,
 CONSTRAINT [SIDANDCID] PRIMARY KEY CLUSTERED 
(
	[diningroomid] ASC,
	[dishesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Neiborcommittee]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Neiborcommittee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeaddress] [nvarchar](100) NOT NULL,
	[contactway_1] [nvarchar](20) NULL,
	[contactway_2] [nvarchar](20) NULL,
	[contactway_3] [nvarchar](20) NULL,
	[neiborcommitteecontact] [nvarchar](20) NOT NULL,
	[neiborcommitteepassword] [varchar](120) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notice]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeid] [int] NULL,
	[shorttitle] [nvarchar](50) NULL,
	[longtitle] [nvarchar](50) NULL,
	[thetext] [nvarchar](1000) NULL,
	[noticedate] [datetime] NOT NULL,
	[category] [nvarchar](20) NULL,
	[picture] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Oldandchildren]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oldandchildren](
	[oldid] [int] NOT NULL,
	[childrenid] [int] NOT NULL,
	[relationship] [nvarchar](20) NOT NULL,
 CONSTRAINT [OIDANDCID] PRIMARY KEY CLUSTERED 
(
	[oldid] ASC,
	[childrenid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personnel]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personnel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeid] [int] NULL,
	[diningroomid] [int] NULL,
	[servicecenterid] [int] NULL,
	[medicalcenterid] [int] NULL,
	[name] [nvarchar](20) NOT NULL,
	[contactway_1] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Servicecenter]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicecenter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeid] [int] NULL,
	[name] [nvarchar](50) NOT NULL,
	[contact] [nvarchar](20) NOT NULL,
	[contactway_1] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Servicecontent]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicecontent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[content] [nvarchar](200) NULL,
	[picture] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Serviceorder]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Serviceorder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[personnelid] [int] NULL,
	[servicecenterid] [int] NULL,
	[servicecontentid] [int] NULL,
	[otherid] [int] NULL,
	[anotherid] [int] NULL,
	[ordertime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Serviceslist]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Serviceslist](
	[servicecenterid] [int] NOT NULL,
	[servicecontentid] [int] NOT NULL,
 CONSTRAINT [FIDANDFID] PRIMARY KEY CLUSTERED 
(
	[servicecenterid] ASC,
	[servicecontentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Street]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetaddress] [nvarchar](100) NOT NULL,
	[contactway_1] [nvarchar](20) NULL,
	[contactway_2] [nvarchar](20) NULL,
	[contactway_3] [nvarchar](20) NULL,
	[contact] [nvarchar](20) NOT NULL,
	[streetpassword] [nvarchar](120) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Style]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Style](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeid] [int] NULL,
	[shorttitle] [nvarchar](50) NULL,
	[longtitle] [nvarchar](50) NULL,
	[thetext] [nvarchar](1000) NULL,
	[styledate] [datetime] NOT NULL,
	[category] [nvarchar](20) NULL,
	[picture] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Testtable]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testtable](
	[username] [nvarchar](20) NULL,
	[userpassword] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Theold]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theold](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeid] [int] NULL,
	[name] [nvarchar](20) NOT NULL,
	[old] [int] NOT NULL,
	[idcardnumber] [nvarchar](30) NOT NULL,
	[theaaddress] [nvarchar](100) NOT NULL,
	[contactway_1] [nvarchar](50) NULL,
	[contactway_2] [nvarchar](20) NULL,
	[contactway_3] [nvarchar](20) NULL,
	[theoldpassword] [nvarchar](120) NOT NULL,
	[landing_1] [nvarchar](50) NULL,
	[landing_2] [nvarchar](50) NULL,
	[landing_3] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Theread]    Script Date: 2015/3/21 2:15:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theread](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetid] [int] NULL,
	[neiborcommitteeid] [int] NULL,
	[shorttitle] [nvarchar](50) NULL,
	[longtitle] [nvarchar](50) NULL,
	[thetext] [nvarchar](1000) NULL,
	[readdate] [datetime] NOT NULL,
	[category] [nvarchar](20) NULL,
	[picture] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Canteenorder]  WITH CHECK ADD FOREIGN KEY([dishid])
REFERENCES [dbo].[Dishes] ([id])
GO
ALTER TABLE [dbo].[Canteenorder]  WITH CHECK ADD FOREIGN KEY([personnelid])
REFERENCES [dbo].[Personnel] ([id])
GO
ALTER TABLE [dbo].[Diningroom]  WITH CHECK ADD FOREIGN KEY([neiborcommitteeid])
REFERENCES [dbo].[Neiborcommittee] ([id])
GO
ALTER TABLE [dbo].[Diningroom]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Medicalcenter]  WITH CHECK ADD FOREIGN KEY([neiborcommitteeid])
REFERENCES [dbo].[Neiborcommittee] ([id])
GO
ALTER TABLE [dbo].[Medicalcenter]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Medicallist]  WITH CHECK ADD FOREIGN KEY([medicalcenterid])
REFERENCES [dbo].[Medicalcenter] ([id])
GO
ALTER TABLE [dbo].[Medicallist]  WITH CHECK ADD FOREIGN KEY([medicalcontentid])
REFERENCES [dbo].[Medicalcontent] ([id])
GO
ALTER TABLE [dbo].[Medicalorder]  WITH CHECK ADD FOREIGN KEY([medicalcenterid])
REFERENCES [dbo].[Medicalcenter] ([id])
GO
ALTER TABLE [dbo].[Medicalorder]  WITH CHECK ADD FOREIGN KEY([medicalcontentid])
REFERENCES [dbo].[Medicalcontent] ([id])
GO
ALTER TABLE [dbo].[Medicalorder]  WITH CHECK ADD FOREIGN KEY([personnelid])
REFERENCES [dbo].[Personnel] ([id])
GO
ALTER TABLE [dbo].[Menuofdiningroom]  WITH CHECK ADD FOREIGN KEY([diningroomid])
REFERENCES [dbo].[Diningroom] ([id])
GO
ALTER TABLE [dbo].[Menuofdiningroom]  WITH CHECK ADD FOREIGN KEY([dishesid])
REFERENCES [dbo].[Dishes] ([id])
GO
ALTER TABLE [dbo].[Neiborcommittee]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Notice]  WITH CHECK ADD FOREIGN KEY([neiborcommitteeid])
REFERENCES [dbo].[Neiborcommittee] ([id])
GO
ALTER TABLE [dbo].[Notice]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Oldandchildren]  WITH CHECK ADD FOREIGN KEY([childrenid])
REFERENCES [dbo].[Children] ([id])
GO
ALTER TABLE [dbo].[Oldandchildren]  WITH CHECK ADD FOREIGN KEY([oldid])
REFERENCES [dbo].[Theold] ([id])
GO
ALTER TABLE [dbo].[Personnel]  WITH CHECK ADD FOREIGN KEY([diningroomid])
REFERENCES [dbo].[Diningroom] ([id])
GO
ALTER TABLE [dbo].[Personnel]  WITH CHECK ADD FOREIGN KEY([medicalcenterid])
REFERENCES [dbo].[Medicalcenter] ([id])
GO
ALTER TABLE [dbo].[Personnel]  WITH CHECK ADD FOREIGN KEY([neiborcommitteeid])
REFERENCES [dbo].[Neiborcommittee] ([id])
GO
ALTER TABLE [dbo].[Personnel]  WITH CHECK ADD FOREIGN KEY([servicecenterid])
REFERENCES [dbo].[Servicecenter] ([id])
GO
ALTER TABLE [dbo].[Personnel]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Servicecenter]  WITH CHECK ADD FOREIGN KEY([neiborcommitteeid])
REFERENCES [dbo].[Neiborcommittee] ([id])
GO
ALTER TABLE [dbo].[Servicecenter]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Serviceorder]  WITH CHECK ADD FOREIGN KEY([personnelid])
REFERENCES [dbo].[Personnel] ([id])
GO
ALTER TABLE [dbo].[Serviceorder]  WITH CHECK ADD FOREIGN KEY([servicecenterid])
REFERENCES [dbo].[Servicecenter] ([id])
GO
ALTER TABLE [dbo].[Serviceorder]  WITH CHECK ADD FOREIGN KEY([servicecontentid])
REFERENCES [dbo].[Servicecontent] ([id])
GO
ALTER TABLE [dbo].[Serviceslist]  WITH CHECK ADD FOREIGN KEY([servicecenterid])
REFERENCES [dbo].[Servicecenter] ([id])
GO
ALTER TABLE [dbo].[Serviceslist]  WITH CHECK ADD FOREIGN KEY([servicecontentid])
REFERENCES [dbo].[Servicecontent] ([id])
GO
ALTER TABLE [dbo].[Style]  WITH CHECK ADD FOREIGN KEY([neiborcommitteeid])
REFERENCES [dbo].[Neiborcommittee] ([id])
GO
ALTER TABLE [dbo].[Style]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Theold]  WITH CHECK ADD FOREIGN KEY([neiborcommitteeid])
REFERENCES [dbo].[Neiborcommittee] ([id])
GO
ALTER TABLE [dbo].[Theold]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Theread]  WITH CHECK ADD FOREIGN KEY([neiborcommitteeid])
REFERENCES [dbo].[Neiborcommittee] ([id])
GO
ALTER TABLE [dbo].[Theread]  WITH CHECK ADD FOREIGN KEY([streetid])
REFERENCES [dbo].[Street] ([id])
GO
USE [master]
GO
ALTER DATABASE [IWDA] SET  READ_WRITE 
GO
