USE [master]
GO
/****** Object:  Database [USAImportWorkflowWeb]    Script Date: 16-02-2023 13:25:11 ******/
CREATE DATABASE [USAImportWorkflowWeb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'USAImportWorkflowWeb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\USAImportWorkflowWeb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'USAImportWorkflowWeb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\USAImportWorkflowWeb_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [USAImportWorkflowWeb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [USAImportWorkflowWeb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [USAImportWorkflowWeb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET ARITHABORT OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET RECOVERY FULL 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET  MULTI_USER 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [USAImportWorkflowWeb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [USAImportWorkflowWeb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'USAImportWorkflowWeb', N'ON'
GO
ALTER DATABASE [USAImportWorkflowWeb] SET QUERY_STORE = OFF
GO
USE [USAImportWorkflowWeb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Digiview]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Digiview](
	[Hblno] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[DigiviewStatus] [nvarchar](max) NULL,
	[DigiviewComments] [nvarchar](max) NULL,
	[LastModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Digiview] PRIMARY KEY CLUSTERED 
(
	[Hblno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DispositionMaster]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DispositionMaster](
	[Name] [nvarchar](450) NOT NULL,
	[Code] [nvarchar](max) NULL,
 CONSTRAINT [PK_DispositionMaster] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileMaster]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileMaster](
	[FileNumber] [nvarchar](20) NOT NULL,
	[Container] [nvarchar](max) NULL,
	[Mbl] [nvarchar](max) NULL,
	[Hblcount] [int] NULL,
	[Pol] [nvarchar](max) NULL,
	[Pod] [nvarchar](max) NULL,
	[UnitDispo] [nvarchar](max) NULL,
	[DepFile] [nvarchar](max) NULL,
	[ShippingLine] [nvarchar](max) NULL,
	[Cfs] [nvarchar](max) NULL,
	[Vessel] [nvarchar](max) NULL,
	[Terminal] [nvarchar](max) NULL,
	[Sslremarks] [nvarchar](max) NULL,
	[NewEta] [datetime2](7) NULL,
	[DischargeDate] [datetime2](7) NULL,
	[BerthingDate] [datetime2](7) NULL,
	[TrackNtraceUserId] [nvarchar](450) NULL,
	[RecievedDate] [datetime2](7) NULL,
	[Eta] [datetime2](7) NULL,
	[PreviousEta] [datetime2](7) NULL,
	[Office] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[CreateDateTime] [datetime2](7) NULL,
	[Hbluser] [nvarchar](max) NULL,
	[Hblstatus] [nvarchar](max) NULL,
	[DigiviewUser] [nvarchar](max) NULL,
	[DigiviewStatus] [nvarchar](max) NULL,
	[Icuser] [nvarchar](max) NULL,
	[Icstatus] [nvarchar](max) NULL,
	[Aging] [nvarchar](max) NULL,
	[FileStartTime] [datetime2](7) NULL,
	[FileComplitionDate] [datetime2](7) NULL,
	[EtaChangedBy] [nvarchar](max) NULL,
	[EtaChangedComment] [nvarchar](max) NULL,
	[EtaChangedDatetime] [datetime2](7) NULL,
	[QcStatus] [nvarchar](max) NULL,
 CONSTRAINT [PK_FileMaster] PRIMARY KEY CLUSTERED 
(
	[FileNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HBLMaster]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HBLMaster](
	[Hblno] [nvarchar](450) NOT NULL,
	[Pod] [nvarchar](max) NULL,
	[Pld] [nvarchar](max) NULL,
	[FileNumber] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
	[HblprocessingStatus] [nvarchar](max) NULL,
	[HblprocessingDate] [datetime2](7) NULL,
	[Hblcomments] [nvarchar](max) NULL,
	[Amsstatus] [nvarchar](max) NULL,
	[AmsprocessingDate] [datetime2](7) NULL,
	[Amscomments] [nvarchar](max) NULL,
	[InvoicingStatus] [nvarchar](max) NULL,
	[InvoicingDate] [nvarchar](max) NULL,
	[InvoicingComments] [nvarchar](max) NULL,
	[DigiviewUser] [nvarchar](max) NULL,
	[DigiviewStatus] [nvarchar](max) NULL,
	[DigiviewComments] [nvarchar](max) NULL,
	[FileMasterFileNumber] [nvarchar](20) NULL,
 CONSTRAINT [PK_HBLMaster] PRIMARY KEY CLUSTERED 
(
	[Hblno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HBLProcessing]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HBLProcessing](
	[ActivtyId] [nvarchar](450) NOT NULL,
	[Hblno] [nvarchar](max) NULL,
	[UserId] [nvarchar](max) NULL,
	[Activity] [nvarchar](max) NULL,
	[ActivityStatus] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[UpdateDatetime] [datetime2](7) NULL,
	[HblnoNavigationHblno] [nvarchar](450) NULL,
 CONSTRAINT [PK_HBLProcessing] PRIMARY KEY CLUSTERED 
(
	[ActivtyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCoOrdinator]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCoOrdinator](
	[ActivityID] [nvarchar](255) NOT NULL,
	[Hblno] [nvarchar](max) NULL,
	[Activity] [nvarchar](max) NULL,
	[ActivityStatus] [nvarchar](max) NULL,
	[ActivityComment] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[LastUpdateDateTime] [datetime2](7) NULL,
	[HblnoNavigationHblno] [nvarchar](450) NULL,
 CONSTRAINT [PK_ImportCoOrdinator] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficeMaster]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeMaster](
	[Id] [uniqueidentifier] NOT NULL,
	[Office] [nvarchar](max) NULL,
	[OfficeName] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_OfficeMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreAlertMaster]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreAlertMaster](
	[Id] [uniqueidentifier] NOT NULL,
	[FileNumber] [nvarchar](max) NULL,
	[Container] [nvarchar](max) NULL,
	[Mbl] [nvarchar](max) NULL,
	[Hblcount] [int] NULL,
	[Pod] [nvarchar](max) NULL,
	[Pol] [nvarchar](max) NULL,
	[RecievedDate] [datetime2](7) NULL,
	[Eta] [datetime2](7) NULL,
	[Office] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[ContractPerson] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[FuserId] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[ComplitionTime] [datetime2](7) NULL,
	[UpdationTime] [datetime2](7) NULL,
	[Status] [nvarchar](max) NULL,
	[MissingDoc] [nvarchar](max) NULL,
	[EmailSendDate] [datetime2](7) NULL,
	[MissDocReceivedDate] [datetime2](7) NULL,
	[AmsCheck] [nvarchar](max) NULL,
	[IfsCheck] [nvarchar](max) NULL,
	[HazDoc] [nvarchar](max) NULL,
	[PieceCount] [nvarchar](max) NULL,
	[Priority] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[ChecklistComplitionDate] [datetime2](7) NULL,
 CONSTRAINT [PK_PreAlertMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QcHblWiseData]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QcHblWiseData](
	[Id] [uniqueidentifier] NOT NULL,
	[QcMasterId] [uniqueidentifier] NULL,
	[FileNumber] [nvarchar](max) NULL,
	[Hblno] [nvarchar](max) NULL,
	[ErrorField] [nvarchar](max) NULL,
	[ErrorType] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[L1comment] [nvarchar](max) NULL,
	[L2comment] [nvarchar](max) NULL,
	[L3comment] [nvarchar](max) NULL,
	[L4comment] [nvarchar](max) NULL,
	[QcStatus] [nvarchar](max) NULL,
	[Qcuser] [nvarchar](max) NULL,
	[StartTime] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
 CONSTRAINT [PK_QcHblWiseData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QcMaster]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QcMaster](
	[Id] [uniqueidentifier] NOT NULL,
	[FileNumber] [nvarchar](20) NULL,
	[HblNo] [nvarchar](max) NULL,
	[ErrorField] [nvarchar](max) NULL,
	[ErrorType] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[L1comment] [nvarchar](max) NULL,
	[L2comment] [nvarchar](max) NULL,
	[L3comment] [nvarchar](max) NULL,
	[L4comment] [nvarchar](max) NULL,
	[QcStatus] [nvarchar](max) NULL,
	[Qcuser] [nvarchar](max) NULL,
	[StartTime] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
 CONSTRAINT [PK_QcMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[Wnsid] [nvarchar](max) NULL,
	[CitrixId] [nvarchar](max) NULL,
	[Doc_Contact] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NOT NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOfficeMaster]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOfficeMaster](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[OfficeId] [uniqueidentifier] NULL,
	[LocationNameNavigationId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_UserOfficeMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOfficeRelation]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOfficeRelation](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[OfficeId] [uniqueidentifier] NULL,
	[Order] [int] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UserOfficeRelation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 16-02-2023 13:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221001103452_DbCreated', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221007085620_AdddispositionMaster ', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221007100127_adddispositionMaster', N'6.0.9')
GO
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'AQI-USDA HOLD', N'AQI')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'ARRIVED TO PORT', N'PORT')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'CARGO BEING UNLOADED', N'CBUL')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'CET HOLD', N'CET')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'CONTAINER IN CLOSED AREA', N'COCA')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'CONTAINER ON THE WATER', N'WATER')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'CONTAINER STILL ON VESSEL', N'SONV')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'CUSTOMS HOLD', N'HOLD')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'DATA ENTRY', N'DATA')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'DIGIVIEW', N'DIGI')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'IMPORTS UNIT CLOSED', N'IMUC')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'INTENSIVE EXAM', N'INEX')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'INTERMODAL', N'IMOD')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'MULTIPLE CUSTOMS HOLDS', N'MULT')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'PORT CONGESTION', N'POCO')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'RAIL CONGESTION', N'RACO')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'RELEASE FROM CUSTOMS EXAM', N'RELEASE')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'UNDER REVIEW', N'REVIEW')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'VACIS EXAM / XRAY EXAM', N'VACIS')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'VESSEL ANCHORED', N'VESSEL')
INSERT [dbo].[DispositionMaster] ([Name], [Code]) VALUES (N'XRAY HOLD', N'XRAY')
GO
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'089665', N'FGG334345', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-22T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-29T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, N'Vaibhav', NULL, CAST(N'2022-09-22T18:59:19.8600000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-22T18:59:50.9500000' AS DateTime2), CAST(N'2022-09-22T19:00:55.2233333' AS DateTime2), NULL, NULL, NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'112244', N'FGRD34567', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-23T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-02T00:00:00.0000000' AS DateTime2), NULL, N'CHI', NULL, N'VAIbhav', NULL, CAST(N'2022-07-23T15:36:40.7966667' AS DateTime2), N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-23T15:38:06.9866667' AS DateTime2), CAST(N'2022-08-13T15:02:48.1100000' AS DateTime2), N'', N'', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'223344', N'FDER342114', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-23T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-11T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, N'Vaibhav', NULL, CAST(N'2022-07-23T15:35:59.2866667' AS DateTime2), N'326068', N'Pending', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-30T16:09:38.7533333' AS DateTime2), N'', N'', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'23167', N'FGRR322335', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-17T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-22T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, N'Vaibhav', NULL, CAST(N'2022-09-17T13:11:05.8700000' AS DateTime2), N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-17T13:11:34.9433333' AS DateTime2), CAST(N'2022-09-17T13:21:04.0133333' AS DateTime2), NULL, NULL, NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'297494', N'UETU5463000', NULL, 3, N'CHENNAI', N'HOUSTON, TX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-03T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, NULL, NULL, CAST(N'2022-08-12T15:33:23.0000000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-13T14:25:43.4366667' AS DateTime2), CAST(N'2022-08-13T14:58:24.6600000' AS DateTime2), NULL, N'ETA changed through Web report.', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'297527', N'CMAU7458941', NULL, 9, N'CHENNAI', N'HOUSTON, TX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-03T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, NULL, NULL, CAST(N'2022-08-12T15:33:23.0000000' AS DateTime2), N'458752', N'WIP', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-13T15:41:59.3433333' AS DateTime2), NULL, NULL, N'ETA changed through Web report.', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'302400', N'CAIU4614328', NULL, 1, N'TUTICORIN', N'BOSTON, MA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-06-10T00:00:00.0000000' AS DateTime2), NULL, N'CHI', NULL, NULL, NULL, CAST(N'2022-08-12T15:33:23.0000000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-13T15:30:03.3466667' AS DateTime2), CAST(N'2022-08-13T15:32:09.3466667' AS DateTime2), NULL, N'ETA changed through Web report.', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'321255', N'DFGRD546474', NULL, 4, N'BUSAN', N'CHICAGO, IL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-27T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-22T18:54:23.4733333' AS DateTime2), CAST(N'2022-09-22T18:55:45.0100000' AS DateTime2), NULL, NULL, NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'321261', N'OOLU8654875', N'COSU6332312100', 2, N'BUSAN', N'CHICAGO, IL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-20T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, NULL, NULL, NULL, N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-17T13:09:31.8466667' AS DateTime2), CAST(N'2022-09-17T13:10:39.6000000' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'330945', N'TTNU8752553', NULL, 10, N'XINGANG', N'NEW YORK , NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-30T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-13T00:00:00.0000000' AS DateTime2), NULL, N'NYC', N'GIM', N'Ganesh Tatale', N'15817f8d-b405-4387-9869-ec9e16645a29', NULL, N'373598', N'Completed', NULL, NULL, NULL, NULL, N'17', CAST(N'2022-06-22T17:41:48.6700000' AS DateTime2), CAST(N'2022-06-30T13:49:08.9600000' AS DateTime2), NULL, N'ETA changed through Web report.', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'330950', N'SEGU5920778', NULL, 2, N'SINGAPORE', N'NEW YORK , NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-30T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-16T00:00:00.0000000' AS DateTime2), NULL, N'NYC', N'GIM', N'Nagaraj Bkempaiah', N'15817f8d-b405-4387-9869-ec9e16645a29', NULL, N'310475', N'Completed', NULL, NULL, NULL, NULL, N'17', NULL, CAST(N'2022-07-22T20:18:49.1133333' AS DateTime2), NULL, N'ETA changed through Web report.', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'331457', N'ZCSU8734799', NULL, 4, N'SHENZHEN CFS (GUANGDONG)', N'NEW YORK , NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-31T00:00:00.0000000' AS DateTime2), CAST(N'2022-06-30T00:00:00.0000000' AS DateTime2), NULL, N'NYC', N'GIM', N'Faisalkhan Pathan', N'15817f8d-b405-4387-9869-ec9e16645a29', NULL, N'310475', N'Completed', NULL, NULL, NULL, NULL, N'21', NULL, CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), NULL, N'ETA changed through Web report.', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'332006', N'ZCSU6625607', NULL, 5, N'LAEM CHABANG', N'NEW YORK , NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-12T00:00:00.0000000' AS DateTime2), NULL, N'NYC', N'GIM', N'Nagaraj Bkempaiah', NULL, NULL, N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-21T15:58:37.2766667' AS DateTime2), CAST(N'2022-07-21T16:08:39.2300000' AS DateTime2), N'310475', N'ETA changed through Web report.', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'332031', N'MSMU8234866', NULL, 6, N'SINGAPORE', N'LOS ANGELES, CA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-13T00:00:00.0000000' AS DateTime2), NULL, N'NYC', N'GIM', N'Shubham Vishwakarma', NULL, NULL, N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-01T18:29:24.9166667' AS DateTime2), CAST(N'2022-07-19T12:45:17.8866667' AS DateTime2), NULL, N'ETA changed through Web report.', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'332036', N'CAIU5676263', NULL, 2, N'XINGANG', N'CHICAGO, IL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-09T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, NULL, NULL, NULL, N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-16T18:23:35.0266667' AS DateTime2), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'345632', N'DFRE4567890', NULL, 4, N'NYC', N'CHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-13T00:00:00.0000000' AS DateTime2), NULL, N'LAX', N'EDI', N'Vaibhav Aher', NULL, CAST(N'2022-06-25T13:08:55.9600000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'345673', N'FDGR34323455', NULL, 4, N'NYC', N'MIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-14T00:00:00.0000000' AS DateTime2), NULL, N'MIA', N'GIM', N'Vaibhav Aher', NULL, CAST(N'2022-06-21T15:36:54.7533333' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-22T16:01:29.6833333' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'425874', N'HJGF458894', NULL, 4, N'NYC', N'CHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-14T00:00:00.0000000' AS DateTime2), NULL, N'CHI', N'EDI', N'vaibhav Aher', NULL, CAST(N'2022-06-21T15:38:58.9700000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-19T18:44:43.7333333' AS DateTime2), CAST(N'2022-07-19T19:08:40.4166667' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'452145', N'FGRDR34567', NULL, 2, N'NYC', N'MIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-30T00:00:00.0000000' AS DateTime2), NULL, N'LAX', N'EDI', NULL, NULL, NULL, N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-19T19:39:05.0833333' AS DateTime2), CAST(N'2022-07-19T19:42:32.7900000' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'457854', N'CBHU9184976', NULL, 11, N'TAO', N'NYC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-09T00:00:00.0000000' AS DateTime2), CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2), NULL, N'LAX', N'EDI', N'Vaibhav Aher', NULL, CAST(N'2022-06-09T13:41:07.8066667' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-22T20:18:56.1333333' AS DateTime2), CAST(N'2022-07-23T15:35:04.5233333' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'457855', N'GHFD45678', NULL, 10, N'NYC', N'CHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-07T00:00:00.0000000' AS DateTime2), NULL, N'CHI', N'EDI', N'Vaibhav Aher', NULL, CAST(N'2022-06-21T15:34:29.1233333' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-19T14:41:44.1933333' AS DateTime2), CAST(N'2022-07-19T14:53:26.8200000' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'535357', N'FGRT435467', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-03T00:00:00.0000000' AS DateTime2), CAST(N'2022-10-05T00:00:00.0000000' AS DateTime2), NULL, N'CHI', NULL, N'Vaibhav', NULL, CAST(N'2022-09-02T16:56:31.1833333' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-19T17:19:02.7966667' AS DateTime2), CAST(N'2022-09-19T18:12:41.7066667' AS DateTime2), N'', N'', NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'560098', N'FGRR466342', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-13T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-31T00:00:00.0000000' AS DateTime2), NULL, N'CHI', NULL, N'fdfsf', NULL, CAST(N'2022-08-13T15:41:43.9400000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-13T15:42:27.0600000' AS DateTime2), CAST(N'2022-09-15T14:11:18.0733333' AS DateTime2), N'', N'', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'56443', N'dddf43435d', NULL, 2, N'GFV', N'GHT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-30T00:00:00.0000000' AS DateTime2), NULL, N'CHI', N'GIM', N'Vaibhav', NULL, NULL, N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-21T16:12:17.5366667' AS DateTime2), CAST(N'2022-07-21T17:01:55.5833333' AS DateTime2), N'310475', N'Eta Changed by Vaibhav Aher', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'567009', N'FDREE232455', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-27T00:00:00.0000000' AS DateTime2), NULL, N'CHI', NULL, N'dssf', NULL, NULL, N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-16T16:58:10.1733333' AS DateTime2), N'', N'', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'56788', N'sdfdg324343', NULL, 2, N'FGT', N'SDR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-18T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-18T00:00:00.0000000' AS DateTime2), NULL, N'CHI', N'GIM', N'Vaibhav', N'df572fa5-3220-4f53-8b82-13793c2e8a1a', CAST(N'2022-07-18T20:00:52.6900000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-19T18:08:47.4800000' AS DateTime2), CAST(N'2022-07-19T18:36:38.2333333' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'577889', N'FGDER3456778', NULL, 2, N'NYC', N'CHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-20T00:00:00.0000000' AS DateTime2), NULL, N'LAX', N'EDI', N'Vaibhav Aher', NULL, CAST(N'2022-06-21T15:39:37.5666667' AS DateTime2), N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-22T15:51:35.0066667' AS DateTime2), CAST(N'2022-09-29T13:34:16.6966667' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'670098', N'FHDJ456322', NULL, 3, N'RTE', N'TYR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-31T00:00:00.0000000' AS DateTime2), NULL, N'CHI', N'EDI', NULL, NULL, CAST(N'2022-06-25T12:35:25.4433333' AS DateTime2), N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-16T17:19:54.6466667' AS DateTime2), N'', N'', NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'676754', N'GHFR345672', NULL, 2, N'ryrty', N'rtyrty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2), NULL, N'LAX', N'GIM', NULL, N'df572fa5-3220-4f53-8b82-13793c2e8a1a', CAST(N'2022-06-25T12:27:45.6333333' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-19T18:40:48.4033333' AS DateTime2), CAST(N'2022-07-19T18:41:38.8300000' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'678965', N'FGRD454677', NULL, 5, N'CHI', N'NYC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-06-30T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-20T00:00:00.0000000' AS DateTime2), NULL, N'NYC', N'GIM', N'Vaibhav Aher', NULL, CAST(N'2022-06-30T13:46:20.2700000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-19T19:08:43.5700000' AS DateTime2), CAST(N'2022-07-19T19:35:35.3966667' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'789032', N'FGRDE5432', NULL, 2, N'FGD', N'HYT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-02T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-29T00:00:00.0000000' AS DateTime2), NULL, N'MIA', N'GIM', N'Vaibhav ', NULL, CAST(N'2022-07-21T17:04:15.3400000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-21T19:12:47.6133333' AS DateTime2), N'310475', N'Eta Changed by Vaibhav Aher', CAST(N'2022-07-21T19:11:23.3900000' AS DateTime2), NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'856856', N'FHRR34353', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-22T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-30T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, N'Vaibhsv', NULL, CAST(N'2022-09-22T15:51:25.4333333' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-22T15:52:33.3000000' AS DateTime2), CAST(N'2022-09-22T16:02:23.4166667' AS DateTime2), NULL, NULL, NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'879656', N'GVH456321', NULL, 2, N'CHI', N'NYC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-02T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-06T00:00:00.0000000' AS DateTime2), NULL, N'NYC', N'EDI', N'Vaibhav Aher', NULL, CAST(N'2022-07-02T16:22:31.9200000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-07-19T18:42:29.2600000' AS DateTime2), CAST(N'2022-07-19T18:44:33.5133333' AS DateTime2), NULL, NULL, NULL, NULL)
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'879787', N'FFG43533', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-22T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-30T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, N'Vaibhav', NULL, CAST(N'2022-09-22T16:22:02.5233333' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-22T16:23:00.1500000' AS DateTime2), CAST(N'2022-09-22T16:23:19.4366667' AS DateTime2), NULL, NULL, NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'890765', N'RTDER45657', NULL, 3, N'DFR', N'RTY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-31T00:00:00.0000000' AS DateTime2), NULL, N'CHI', N'EDI', N'dggd', NULL, CAST(N'2022-08-12T15:33:23.2000000' AS DateTime2), N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-16T17:23:50.4333333' AS DateTime2), N'', N'', NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'89765', N'ssfd43535', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-23T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, N'Vaibhav', NULL, CAST(N'2022-09-16T18:52:07.1600000' AS DateTime2), N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-16T18:52:51.7733333' AS DateTime2), CAST(N'2022-09-16T19:06:10.3866667' AS DateTime2), NULL, NULL, NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'963524', N'FGHT23456', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-30T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, N'Vaibhav', NULL, CAST(N'2022-09-21T19:51:01.7000000' AS DateTime2), N'310475', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-21T19:51:22.6400000' AS DateTime2), CAST(N'2022-09-21T20:03:47.5766667' AS DateTime2), NULL, NULL, NULL, N'Completed')
INSERT [dbo].[FileMaster] ([FileNumber], [Container], [Mbl], [Hblcount], [Pol], [Pod], [UnitDispo], [DepFile], [ShippingLine], [Cfs], [Vessel], [Terminal], [Sslremarks], [NewEta], [DischargeDate], [BerthingDate], [TrackNtraceUserId], [RecievedDate], [Eta], [PreviousEta], [Office], [FileType], [ContactPerson], [UserId], [CreateDateTime], [Hbluser], [Hblstatus], [DigiviewUser], [DigiviewStatus], [Icuser], [Icstatus], [Aging], [FileStartTime], [FileComplitionDate], [EtaChangedBy], [EtaChangedComment], [EtaChangedDatetime], [QcStatus]) VALUES (N'963528', N'FGHT23454', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-30T00:00:00.0000000' AS DateTime2), NULL, N'NYC', NULL, N'Vaibhav', NULL, CAST(N'2022-09-21T19:51:01.0000000' AS DateTime2), N'326068', N'Completed', NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-29T13:33:44.2366667' AS DateTime2), CAST(N'2022-09-29T13:35:57.6866667' AS DateTime2), NULL, NULL, NULL, N'WIP')
GO
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'2', NULL, NULL, N'223344', N'326068', CAST(N'2022-08-30T16:09:38.7533333' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:09:38.7533333' AS DateTime2), NULL, N'Query', CAST(N'2022-08-30T16:09:38.7533333' AS DateTime2), NULL, N'Query', N'08/30/2022 04:09:38 PM', NULL, NULL, NULL, NULL, N'223344')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'4', NULL, NULL, N'223344', N'326068', CAST(N'2022-08-30T16:09:38.7533333' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:09:38.7533333' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:09:38.7533333' AS DateTime2), NULL, N'Pending', N'08/30/2022 04:09:38 PM', NULL, NULL, NULL, NULL, N'223344')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'4365475764377', NULL, NULL, N'890765', N'326068', CAST(N'2022-09-16T17:23:50.4066667' AS DateTime2), N'Completed', CAST(N'2022-09-16T17:23:50.4066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T17:23:50.4066667' AS DateTime2), NULL, N'Completed', N'09/16/2022 05:23:50 PM', NULL, NULL, NULL, NULL, N'890765')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'6346436', NULL, NULL, N'890765', N'326068', CAST(N'2022-09-16T17:23:50.4333333' AS DateTime2), N'Completed', CAST(N'2022-09-16T17:23:50.4333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T17:23:50.4333333' AS DateTime2), NULL, N'Completed', N'09/16/2022 05:23:50 PM', NULL, NULL, NULL, NULL, N'890765')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'643643643', NULL, NULL, N'890765', N'326068', CAST(N'2022-09-16T17:23:50.4300000' AS DateTime2), N'Completed', CAST(N'2022-09-16T17:23:50.4300000' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T17:23:50.4300000' AS DateTime2), NULL, N'Completed', N'09/16/2022 05:23:50 PM', NULL, NULL, NULL, NULL, N'890765')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'bfffh6', N'fhfg', N'fghg', N'332006', N'310475', CAST(N'2022-07-21T16:08:35.5766667' AS DateTime2), N'Completed', CAST(N'2022-07-21T16:08:35.5766667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T16:08:35.5766667' AS DateTime2), NULL, N'Completed', N'07/21/2022 04:08:35 PM', NULL, NULL, NULL, NULL, N'332006')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'bfffh6gry', N'gfg', N'gfdg', N'332006', N'310475', CAST(N'2022-07-21T16:08:35.5766667' AS DateTime2), N'Completed', CAST(N'2022-07-21T16:08:35.5766667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T16:08:35.5766667' AS DateTime2), NULL, N'Completed', N'07/21/2022 04:08:35 PM', NULL, NULL, NULL, NULL, N'332006')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'BLR/HOU/03054', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:42.8666667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:43.0700000' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:43.2600000' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:43 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'CAIU8434474', NULL, NULL, N'56443', N'310475', CAST(N'2022-07-21T17:01:54.6333333' AS DateTime2), N'Completed', CAST(N'2022-07-21T17:01:54.6333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T17:01:54.6333333' AS DateTime2), NULL, N'Completed', N'07/21/2022 05:01:54 PM', NULL, NULL, NULL, NULL, N'56443')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'CAIU84344745', NULL, NULL, N'789032', N'310475', CAST(N'2022-07-21T19:12:47.6133333' AS DateTime2), N'Completed', CAST(N'2022-07-21T19:12:47.6133333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T19:12:47.6133333' AS DateTime2), NULL, N'Completed', N'07/21/2022 07:12:47 PM', NULL, NULL, NULL, NULL, N'789032')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'CMDUSGN1398916', NULL, NULL, N'670098', N'326068', CAST(N'2022-09-16T17:19:33.1900000' AS DateTime2), N'Completed', CAST(N'2022-09-16T17:19:33.4233333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T17:19:33.6933333' AS DateTime2), NULL, N'Completed', N'09/16/2022 05:19:34 PM', NULL, NULL, NULL, NULL, N'670098')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'CNN/BOS/00007', N'BOSTON, MA', NULL, N'302400', N'310475', CAST(N'2022-08-13T15:32:09.3400000' AS DateTime2), N'Completed', CAST(N'2022-08-13T15:32:09.3400000' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T15:32:09.3400000' AS DateTime2), NULL, N'Completed', N'08/13/2022 03:32:09 PM', NULL, NULL, NULL, NULL, N'302400')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'COSU6886590760', NULL, NULL, N'089665', N'310475', CAST(N'2022-09-22T19:00:55.2200000' AS DateTime2), N'Completed', CAST(N'2022-09-22T19:00:55.2200000' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T19:00:55.2200000' AS DateTime2), NULL, N'Completed', N'09/22/2022 07:00:55 PM', NULL, NULL, NULL, NULL, N'089665')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'CTJ0041774', N'CHICAGO, IL', NULL, N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, NULL, CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, NULL, N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'CTJ0041836', N'CHICAGO, IL', NULL, N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, NULL, CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, NULL, N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'CVG/NAV/03081', NULL, NULL, N'963528', N'326068', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', N'09/29/2022 01:35:57 PM', NULL, NULL, NULL, NULL, N'963528')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'DET/MEL/03332', NULL, NULL, N'963528', N'326068', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', N'09/29/2022 01:35:57 PM', NULL, NULL, NULL, NULL, N'963528')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'DET/MEL/033324', NULL, NULL, N'963528', N'326068', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', N'09/29/2022 01:35:57 PM', NULL, NULL, NULL, NULL, N'963528')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'DFS056012884', N'CHICAGO, IL', NULL, N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, NULL, CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, NULL, N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'DFSU6582480', NULL, NULL, N'56443', N'310475', CAST(N'2022-07-21T17:01:54.6366667' AS DateTime2), N'Completed', CAST(N'2022-07-21T17:01:54.6366667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T17:01:54.6366667' AS DateTime2), NULL, N'Completed', N'07/21/2022 05:01:54 PM', NULL, NULL, NULL, NULL, N'56443')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'DFSU65824805', NULL, NULL, N'789032', N'310475', CAST(N'2022-07-21T19:12:47.6133333' AS DateTime2), N'Completed', CAST(N'2022-07-21T19:12:47.6133333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T19:12:47.6133333' AS DateTime2), NULL, N'Completed', N'07/21/2022 07:12:47 PM', NULL, NULL, NULL, NULL, N'789032')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'dgdgdg46', N'gfhf', N'ffhh', N'332006', N'310475', CAST(N'2022-07-21T16:08:35.5800000' AS DateTime2), N'Completed', CAST(N'2022-07-21T16:08:35.5800000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T16:08:35.5800000' AS DateTime2), NULL, N'Completed', N'07/21/2022 04:08:35 PM', NULL, NULL, NULL, NULL, N'332006')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'EGLV146102891448', NULL, NULL, N'089665', N'310475', CAST(N'2022-09-22T19:00:55.2166667' AS DateTime2), N'Completed', CAST(N'2022-09-22T19:00:55.2166667' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T19:00:55.2166667' AS DateTime2), NULL, N'Completed', N'09/22/2022 07:00:55 PM', NULL, NULL, NULL, NULL, N'089665')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'EGLV146102954164', NULL, NULL, N'089665', N'310475', CAST(N'2022-09-22T19:00:55.1833333' AS DateTime2), N'Completed', CAST(N'2022-09-22T19:00:55.1833333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T19:00:55.1833333' AS DateTime2), NULL, N'Completed', N'09/22/2022 07:00:55 PM', NULL, NULL, NULL, NULL, N'089665')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'fdgfgfdg65465', NULL, NULL, N'535357', N'310475', CAST(N'2022-09-21T17:36:55.0633333' AS DateTime2), N'Completed', CAST(N'2022-09-21T17:36:55.0633333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-21T17:36:55.0633333' AS DateTime2), NULL, N'Completed', N'09/21/2022 05:36:55 PM', NULL, NULL, NULL, NULL, N'535357')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'fdsfd54366', NULL, NULL, N'89765', N'326068', CAST(N'2022-09-16T19:06:02.4033333' AS DateTime2), N'Completed', CAST(N'2022-09-16T19:06:02.4033333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T19:06:02.4033333' AS DateTime2), NULL, N'Completed', N'09/16/2022 07:06:02 PM', NULL, NULL, NULL, NULL, N'89765')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'fgfddfd2243', N'hkhk', N'vgf', N'332006', N'310475', CAST(N'2022-07-21T16:08:35.5733333' AS DateTime2), N'Completed', CAST(N'2022-07-21T16:08:35.5733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T16:08:35.5733333' AS DateTime2), NULL, N'Completed', N'07/21/2022 04:08:35 PM', NULL, NULL, NULL, NULL, N'332006')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'FGRT3446646', NULL, NULL, N'23167', N'326068', CAST(N'2022-09-17T13:19:23.5333333' AS DateTime2), N'Completed', CAST(N'2022-09-17T13:19:23.6666667' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-17T13:19:23.8433333' AS DateTime2), NULL, N'Completed', N'09/17/2022 01:19:24 PM', NULL, NULL, NULL, NULL, N'23167')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'fhfhfhfe41', N'ddg', N'sdfd', N'332006', N'310475', CAST(N'2022-07-21T16:08:35.5733333' AS DateTime2), N'Completed', CAST(N'2022-07-21T16:08:35.5733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-21T16:08:35.5733333' AS DateTime2), NULL, N'Completed', N'07/21/2022 04:08:35 PM', NULL, NULL, NULL, NULL, N'332006')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'fsdfdgfg4364', NULL, NULL, N'856856', N'310475', CAST(N'2022-09-22T16:02:23.3566667' AS DateTime2), N'Completed', CAST(N'2022-09-22T16:02:23.3566667' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T16:02:23.3566667' AS DateTime2), NULL, N'Completed', N'09/22/2022 04:02:23 PM', NULL, NULL, NULL, NULL, N'856856')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'fsfdsdf4434', NULL, NULL, N'89765', N'326068', CAST(N'2022-09-16T19:06:09.2066667' AS DateTime2), N'Completed', CAST(N'2022-09-16T19:06:09.2066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T19:06:09.2066667' AS DateTime2), NULL, N'Completed', N'09/16/2022 07:06:10 PM', NULL, NULL, NULL, NULL, N'89765')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'gdfgfd678', NULL, NULL, N'535357', N'310475', CAST(N'2022-09-21T17:36:55.0633333' AS DateTime2), N'Completed', CAST(N'2022-09-21T17:36:55.0633333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-21T17:36:55.0633333' AS DateTime2), NULL, N'Completed', N'09/21/2022 05:36:55 PM', NULL, NULL, NULL, NULL, N'535357')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'GFGHT43433', N'NEW YORK', N'NEW YORK', N'425874', N'310475', CAST(N'2022-07-19T19:08:40.4100000' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:08:40.4100000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:08:40.4100000' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:08:40 PM', NULL, NULL, NULL, NULL, N'425874')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'gg65654654', NULL, NULL, N'535357', N'310475', CAST(N'2022-09-21T17:36:54.9933333' AS DateTime2), N'Pending', CAST(N'2022-09-21T17:36:55.0133333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-21T17:36:55.0133333' AS DateTime2), NULL, N'Completed', N'09/21/2022 05:36:55 PM', NULL, NULL, NULL, NULL, N'535357')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'ggfu7686', NULL, NULL, N'879787', N'310475', CAST(N'2022-09-22T16:23:19.4333333' AS DateTime2), N'Completed', CAST(N'2022-09-22T16:23:19.4333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T16:23:19.4333333' AS DateTime2), NULL, N'Completed', N'09/22/2022 04:23:19 PM', NULL, NULL, NULL, NULL, N'879787')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'GHTFDhgj65768', NULL, NULL, N'23167', N'326068', CAST(N'2022-09-17T13:19:27.0433333' AS DateTime2), N'Completed', CAST(N'2022-09-17T13:19:27.2533333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-17T13:19:27.4433333' AS DateTime2), NULL, N'Completed', N'09/17/2022 01:19:27 PM', NULL, NULL, NULL, NULL, N'23167')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'GREFF54464', N'NEW YORK', N'NEW YORK', N'425874', N'310475', CAST(N'2022-07-19T19:08:40.4133333' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:08:40.4133333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:08:40.4133333' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:08:40 PM', NULL, NULL, NULL, NULL, N'425874')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'GREFF54466', N'NEW YORK', N'NEW YORK', N'425874', N'310475', CAST(N'2022-07-19T19:08:40.4166667' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:08:40.4166667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:08:40.4166667' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:08:40 PM', NULL, NULL, NULL, NULL, N'425874')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'GREFF54468', N'NEW YORK', N'NEW YORK', N'425874', N'310475', CAST(N'2022-07-19T19:08:40.4133333' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:08:40.4133333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:08:40.4133333' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:08:40 PM', NULL, NULL, NULL, NULL, N'425874')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL001144', N'NEW YORK', N'NEW YORK', N'56788', N'310475', CAST(N'2022-07-19T18:36:38.2200000' AS DateTime2), N'Completed', CAST(N'2022-07-19T18:36:38.2200000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T18:36:38.2200000' AS DateTime2), NULL, N'Completed', N'07/19/2022 06:36:38 PM', NULL, NULL, NULL, NULL, N'56788')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL001155', N'NEW YORK', N'NEW YORK', N'56788', N'310475', CAST(N'2022-07-19T18:36:38.2333333' AS DateTime2), N'Completed', CAST(N'2022-07-19T18:36:38.2333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T18:36:38.2333333' AS DateTime2), NULL, N'Completed', N'07/19/2022 06:36:38 PM', NULL, NULL, NULL, NULL, N'56788')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL0022556', N'NEW YORK', N'NEW YORK', N'676754', N'310475', CAST(N'2022-07-19T18:41:38.8266667' AS DateTime2), N'Completed', CAST(N'2022-07-19T18:41:38.8266667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T18:41:38.8266667' AS DateTime2), NULL, N'Completed', N'07/19/2022 06:41:38 PM', NULL, NULL, NULL, NULL, N'676754')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL0022557', N'NEW YORK', N'NEW YORK', N'676754', N'310475', CAST(N'2022-07-19T18:41:38.8166667' AS DateTime2), N'Completed', CAST(N'2022-07-19T18:41:38.8166667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T18:41:38.8166667' AS DateTime2), NULL, N'Completed', N'07/19/2022 06:41:38 PM', NULL, NULL, NULL, NULL, N'676754')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL007', N'NYC', N'CHI', N'331457', N'310475', CAST(N'2022-06-28T17:47:19.1000000' AS DateTime2), N'Completed', CAST(N'2022-06-28T17:47:19.5066667' AS DateTime2), N'ABCD', N'Completed', CAST(N'2022-06-28T17:47:19.9866667' AS DateTime2), NULL, N'Completed', N'06/28/2022 05:47:20 PM', NULL, NULL, NULL, NULL, N'331457')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL1001', N'NYC', N'CHI', N'345673', N'310475', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), N'Completed', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), NULL, N'Completed', N'06/22/2022 04:01:04 PM', NULL, NULL, NULL, NULL, N'345673')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL1002', N'NYC', N'CHI', N'345673', N'310475', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), N'Completed', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), NULL, N'Completed', N'06/22/2022 04:01:04 PM', NULL, NULL, NULL, NULL, N'345673')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL1003', N'NYC', N'CHI', N'345673', N'310475', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), N'Completed', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), NULL, N'Completed', N'06/22/2022 04:01:04 PM', NULL, NULL, NULL, NULL, N'345673')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL1004', N'NYC', N'CHI', N'345673', N'310475', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), N'Completed', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-22T16:01:04.4466667' AS DateTime2), NULL, N'Completed', N'06/22/2022 04:01:04 PM', NULL, NULL, NULL, NULL, N'345673')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL123', N'NYC', N'CHI', N'331457', N'310475', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), N'Completed', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), N'GHI', N'Completed', N'06/28/2022 05:47:30 PM', NULL, NULL, NULL, NULL, N'331457')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL321456', N'NEW YORK', N'NEW YORK', N'678965', N'310475', CAST(N'2022-07-19T19:35:35.3900000' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:35:35.3900000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:35:35.3900000' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:35:35 PM', NULL, NULL, NULL, NULL, N'678965')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL3214567', N'NEW YORK', N'NEW YORK', N'678965', N'310475', CAST(N'2022-07-19T19:35:35.3933333' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:35:35.3933333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:35:35.3933333' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:35:35 PM', NULL, NULL, NULL, NULL, N'678965')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL321458', N'NEW YORK', N'NEW YORK', N'678965', N'310475', CAST(N'2022-07-19T19:35:35.3933333' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:35:35.3933333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:35:35.3933333' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:35:35 PM', NULL, NULL, NULL, NULL, N'678965')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL321459', N'NEW YORK', N'NEW YORK', N'678965', N'310475', CAST(N'2022-07-19T19:35:35.3966667' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:35:35.3966667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:35:35.3966667' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:35:35 PM', NULL, NULL, NULL, NULL, N'678965')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL3214590', N'vNEW YORK', N'NEW YORK', N'678965', N'310475', CAST(N'2022-07-19T19:35:35.3966667' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:35:35.3966667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:35:35.3966667' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:35:35 PM', NULL, NULL, NULL, NULL, N'678965')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL4001', N'CHI', N'NYC', N'330950', N'310475', CAST(N'2022-06-22T17:34:51.7400000' AS DateTime2), N'Completed', CAST(N'2022-06-22T17:34:51.7400000' AS DateTime2), NULL, N'Pending', CAST(N'2022-06-22T17:34:51.7400000' AS DateTime2), NULL, N'Query', N'06/22/2022 05:34:51 PM', NULL, NULL, NULL, NULL, N'330950')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL4002', N'CHI', N'NYC', N'330950', N'310475', CAST(N'2022-06-22T17:34:51.7400000' AS DateTime2), N'Completed', CAST(N'2022-06-22T17:34:51.7400000' AS DateTime2), NULL, N'Query', CAST(N'2022-06-22T17:34:51.7400000' AS DateTime2), NULL, N'Completed', N'06/22/2022 05:34:51 PM', NULL, NULL, NULL, NULL, N'330950')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL456', N'NYC', N'CHI', N'331457', N'310475', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), N'Completed', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), NULL, N'Completed', N'06/28/2022 05:47:30 PM', NULL, NULL, NULL, NULL, N'331457')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL54354', N'fdf', N'dfff', N'577889', N'326068', CAST(N'2022-09-17T17:29:06.2300000' AS DateTime2), N'Completed', CAST(N'2022-09-17T17:29:06.2300000' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-17T17:29:06.2300000' AS DateTime2), NULL, N'Completed', N'09/17/2022 05:29:06 PM', NULL, NULL, NULL, NULL, N'577889')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL565211', N'NEW YORK,NY', N'NEW YORK,NY', N'452145', N'310475', CAST(N'2022-07-19T19:42:32.7900000' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:42:32.7900000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:42:32.7900000' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:42:32 PM', NULL, NULL, NULL, NULL, N'452145')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL565212', N'NEW YORK,NY', N'NEW YORK,NY', N'452145', N'310475', CAST(N'2022-07-19T19:42:32.7900000' AS DateTime2), N'Completed', CAST(N'2022-07-19T19:42:32.7900000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T19:42:32.7900000' AS DateTime2), NULL, N'Completed', N'07/19/2022 07:42:32 PM', NULL, NULL, NULL, NULL, N'452145')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL789', N'NYC', N'CHI', N'331457', N'310475', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), N'Completed', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-28T17:47:30.5500000' AS DateTime2), NULL, N'Completed', N'06/28/2022 05:47:30 PM', NULL, NULL, NULL, NULL, N'331457')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL7890011', N'NEW YORK', N'NEW YORK', N'879656', N'310475', CAST(N'2022-07-19T18:44:33.5133333' AS DateTime2), N'Completed', CAST(N'2022-07-19T18:44:33.5133333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T18:44:33.5133333' AS DateTime2), NULL, N'Completed', N'07/19/2022 06:44:33 PM', NULL, NULL, NULL, NULL, N'879656')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL7890012', N'NEW YORK', N'NEW YORK', N'879656', N'310475', CAST(N'2022-07-19T18:44:33.5133333' AS DateTime2), N'Completed', CAST(N'2022-07-19T18:44:33.5133333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T18:44:33.5133333' AS DateTime2), NULL, N'Completed', N'07/19/2022 06:44:33 PM', NULL, NULL, NULL, NULL, N'879656')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL9944', N'DFFF', N'SDR', N'345632', N'310475', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), N'Completed', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, N'Completed', N'06/30/2022 08:05:19 PM', NULL, NULL, NULL, NULL, N'345632')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL9955', N'FG', N'GTR', N'345632', N'310475', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), N'Completed', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, N'Completed', N'06/30/2022 08:05:19 PM', NULL, NULL, NULL, NULL, N'345632')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL9999', N'GGHT', N'FFF', N'345632', N'310475', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), N'Completed', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, N'Completed', N'06/30/2022 08:05:19 PM', NULL, NULL, NULL, NULL, N'345632')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL99997', N'GHJ', N'FGH', N'345632', N'310475', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), N'Completed', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, N'Completed', CAST(N'2022-06-30T20:05:19.5766667' AS DateTime2), NULL, N'Completed', N'06/30/2022 08:05:19 PM', NULL, NULL, NULL, NULL, N'345632')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HBL99999', N'asfd', N'afd', N'577889', N'326068', CAST(N'2022-09-17T17:29:06.2433333' AS DateTime2), N'Completed', CAST(N'2022-09-17T17:29:06.2433333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-17T17:29:06.2433333' AS DateTime2), NULL, N'Completed', N'09/17/2022 05:29:06 PM', NULL, NULL, NULL, NULL, N'577889')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HDMUSHAZ88484000', NULL, NULL, N'567009', N'326068', CAST(N'2022-09-16T16:58:06.2000000' AS DateTime2), N'Completed', CAST(N'2022-09-16T16:58:06.4133333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T16:58:06.6233333' AS DateTime2), NULL, N'Completed', N'09/16/2022 04:58:06 PM', NULL, NULL, NULL, NULL, N'567009')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/ATL/00997', N'NEW YORK , NY', N'NEW YORK , NY', N'332031', N'310475', CAST(N'2022-07-19T12:44:05.9766667' AS DateTime2), N'Completed', CAST(N'2022-07-19T12:44:06.1866667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T12:44:06.3800000' AS DateTime2), NULL, N'Completed', N'07/19/2022 12:44:06 PM', NULL, NULL, NULL, NULL, N'332031')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/ATL/009977', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:14.5000000' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:14.7600000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:14.9300000' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:15 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/BOS/00495', N'NEW YORK , NY', N'NEW YORK , NY', N'332031', N'310475', CAST(N'2022-07-19T12:44:01.4033333' AS DateTime2), N'Completed', CAST(N'2022-07-19T12:44:01.6000000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T12:44:01.7866667' AS DateTime2), NULL, N'Completed', N'07/19/2022 12:44:02 PM', NULL, NULL, NULL, NULL, N'332031')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/BOS/004957', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9266667' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9266667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9266667' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/NYC/02706', N'NEW YORK , NY', N'NEW YORK , NY', N'332031', N'310475', CAST(N'2022-07-19T12:43:47.5133333' AS DateTime2), N'Completed', CAST(N'2022-07-19T12:43:47.6900000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T12:43:47.8900000' AS DateTime2), NULL, N'Completed', N'07/19/2022 12:43:48 PM', NULL, NULL, NULL, NULL, N'332031')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/NYC/027067', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9300000' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9300000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9300000' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/NYC/02710', N'NEW YORK , NY', N'NEW YORK , NY', N'332031', N'310475', CAST(N'2022-07-19T12:43:50.9633333' AS DateTime2), N'Completed', CAST(N'2022-07-19T12:43:51.1500000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T12:43:51.3633333' AS DateTime2), NULL, N'Completed', N'07/19/2022 12:43:51 PM', NULL, NULL, NULL, NULL, N'332031')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/NYC/027107', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9300000' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9300000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9300000' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/NYC/02732', N'NEW YORK , NY', N'NEW YORK , NY', N'332031', N'310475', CAST(N'2022-07-19T12:43:44.3633333' AS DateTime2), N'Completed', CAST(N'2022-07-19T12:43:44.6033333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T12:43:44.7933333' AS DateTime2), NULL, N'Completed', N'07/19/2022 12:43:45 PM', NULL, NULL, NULL, NULL, N'332031')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/NYC/027327', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9333333' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9333333' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/NYC/02736', N'NEW YORK , NY', N'NEW YORK , NY', N'332031', N'310475', CAST(N'2022-07-19T12:43:39.9066667' AS DateTime2), N'Completed', CAST(N'2022-07-19T12:43:40.2533333' AS DateTime2), N'fdfdgfdddddddddddddddddddddddddddsawewwrwerwerererwerwrwerwegrtrtrtrtrwaaaaaaaaaaaaaaaaaaaaadsdswwrewrewrwererewrerwrwrwerertrhthghfghfgbvbvcbvcbvcbvcbcbvcbvcbvcb', N'Completed', CAST(N'2022-07-19T12:43:40.5866667' AS DateTime2), NULL, N'Completed', N'07/19/2022 12:43:40 PM', NULL, NULL, NULL, NULL, N'332031')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'HPH/NYC/027367', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/45127', N'LAX', N'SJU', N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Query', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/451277', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/45128', N'KLG', N'IJG', N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Query', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/451287', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9366667' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/45129', N'CHI', N'IHJ', N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'p', N'Pending', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/451297', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9400000' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9400000' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9400000' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/45130', N'OPD', N'GHA', N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/451307', N'NEW YORK , NY', N'NEW YORK , NY', N'457855', N'310475', CAST(N'2022-07-19T14:53:16.9433333' AS DateTime2), N'Completed', CAST(N'2022-07-19T14:53:16.9433333' AS DateTime2), NULL, N'Completed', CAST(N'2022-07-19T14:53:16.9433333' AS DateTime2), NULL, N'Completed', N'07/19/2022 02:53:16 PM', NULL, NULL, NULL, NULL, N'457855')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/45131', N'HJO', N'UIH', N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/45132', N'LKJ', N'IOP', N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/45133', N'UTH', N'KKH', N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Completed', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Completed', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LAX/SJU/45134', N'HHI', N'FGH', N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Completed', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LS12TJ2205010', N'CHICAGO, IL', NULL, N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, NULL, CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, NULL, N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LS12TJ2205018', N'CHICAGO, IL', NULL, N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LS12TJ2205106', N'CHICAGO, IL', NULL, N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Completed', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LS12TJ2205110', N'CHICAGO, IL', NULL, N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'LSH12TJ2204402', N'CHICAGO, IL', NULL, N'332036', N'326068', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', CAST(N'2022-08-30T16:12:28.3900000' AS DateTime2), NULL, N'Pending', N'08/30/2022 04:12:28 PM', NULL, NULL, NULL, NULL, N'332036')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/DAL/00714', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/DAL/00715', N'HOUSTON, TX', NULL, N'297527', N'310475', CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, NULL, CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, NULL, N'08/13/2022 03:33:37 PM', NULL, NULL, NULL, NULL, N'297527')
GO
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03117', NULL, NULL, N'112244', N'326068', CAST(N'2022-08-13T15:02:48.1066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T15:02:48.1066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T15:02:48.1066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 03:02:48 PM', NULL, NULL, NULL, NULL, N'112244')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03118', N'HOUSTON, TX', NULL, N'297527', N'310475', CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, NULL, CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, NULL, N'08/13/2022 03:33:37 PM', NULL, NULL, NULL, NULL, N'297527')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03119', NULL, NULL, N'112244', N'326068', CAST(N'2022-08-13T15:02:48.1066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T15:02:48.1066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T15:02:48.1066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 03:02:48 PM', NULL, NULL, NULL, NULL, N'112244')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03120', NULL, NULL, N'112244', N'326068', CAST(N'2022-08-13T15:01:43.6200000' AS DateTime2), N'Completed', CAST(N'2022-08-13T15:01:43.9166667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T15:01:44.2033333' AS DateTime2), NULL, N'Completed', N'08/13/2022 03:02:48 PM', NULL, NULL, NULL, NULL, N'112244')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03121', N'HOUSTON, TX', NULL, N'297527', N'310475', CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, NULL, CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, NULL, N'08/13/2022 03:33:37 PM', NULL, NULL, NULL, NULL, N'297527')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03122', N'HOUSTON, TX', NULL, N'297527', N'310475', CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, NULL, CAST(N'2022-08-13T15:33:37.4566667' AS DateTime2), NULL, NULL, N'08/13/2022 03:33:37 PM', NULL, NULL, NULL, NULL, N'297527')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03123', NULL, NULL, N'112244', N'326068', CAST(N'2022-08-13T15:02:48.1100000' AS DateTime2), N'Completed', CAST(N'2022-08-13T15:02:48.1100000' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T15:02:48.1100000' AS DateTime2), NULL, N'Completed', N'08/13/2022 03:02:48 PM', NULL, NULL, NULL, NULL, N'112244')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03124', NULL, NULL, N'112244', N'326068', CAST(N'2022-08-13T15:02:48.1100000' AS DateTime2), N'Completed', CAST(N'2022-08-13T15:02:48.1100000' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T15:02:48.1100000' AS DateTime2), NULL, N'Completed', N'08/13/2022 03:02:48 PM', NULL, NULL, NULL, NULL, N'112244')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03126', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03127', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03128', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03129', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03130', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03131', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03132', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03133', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03134', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03135', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03136', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03137', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03139', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03140', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03141', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAA/HOU/03143', N'HOUSTON, TX', NULL, N'297494', N'310475', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', CAST(N'2022-08-13T14:57:46.7066667' AS DateTime2), NULL, N'Completed', N'08/13/2022 02:57:46 PM', NULL, NULL, NULL, NULL, N'297494')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAEU215563407', NULL, NULL, N'089665', N'310475', CAST(N'2022-09-22T19:00:55.2233333' AS DateTime2), N'Completed', CAST(N'2022-09-22T19:00:55.2233333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T19:00:55.2233333' AS DateTime2), NULL, N'Completed', N'09/22/2022 07:00:55 PM', NULL, NULL, NULL, NULL, N'089665')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAEU215972129', NULL, NULL, N'567009', N'326068', CAST(N'2022-09-16T16:58:10.1733333' AS DateTime2), N'Completed', CAST(N'2022-09-16T16:58:10.1733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T16:58:10.1733333' AS DateTime2), NULL, N'Completed', N'09/16/2022 04:58:10 PM', NULL, NULL, NULL, NULL, N'567009')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'MAN/CHS/05825', NULL, NULL, N'963524', N'310475', CAST(N'2022-09-21T20:03:44.2600000' AS DateTime2), N'Completed', CAST(N'2022-09-21T20:03:44.2600000' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-21T20:03:44.2600000' AS DateTime2), NULL, N'Completed', N'09/21/2022 08:03:44 PM', NULL, NULL, NULL, NULL, N'963524')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'NON-CHI-SE469842', NULL, NULL, N'963524', N'310475', CAST(N'2022-09-21T20:03:44.2566667' AS DateTime2), N'Completed', CAST(N'2022-09-21T20:03:44.2566667' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-21T20:03:44.2566667' AS DateTime2), NULL, N'Completed', N'09/21/2022 08:03:44 PM', NULL, NULL, NULL, NULL, N'963524')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'NYC/NAV/03174', NULL, NULL, N'963528', N'326068', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', N'09/29/2022 01:35:57 PM', NULL, NULL, NULL, NULL, N'963528')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'NYC/NAV/031747', NULL, NULL, N'963528', N'326068', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-29T13:35:57.6333333' AS DateTime2), NULL, N'Completed', N'09/29/2022 01:35:57 PM', NULL, NULL, NULL, NULL, N'963528')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'ONEYTA1DI7162300', NULL, NULL, N'567009', N'326068', CAST(N'2022-09-16T16:58:09.5700000' AS DateTime2), N'Completed', CAST(N'2022-09-16T16:58:10.1733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T16:58:10.1733333' AS DateTime2), NULL, N'Completed', N'09/16/2022 04:58:10 PM', NULL, NULL, NULL, NULL, N'567009')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PNH/CHI/00043', N'CHICAGO, IL', NULL, N'321255', N'310475', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', N'09/22/2022 06:55:44 PM', NULL, NULL, NULL, NULL, N'321255')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PNHCHI00042', N'CHICAGO, IL', NULL, N'321255', N'310475', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', N'09/22/2022 06:55:44 PM', NULL, NULL, NULL, NULL, N'321255')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PNHCHI00044', N'CHICAGO, IL', NULL, N'321261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'321261')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PNHCHI00045', N'CHICAGO, IL', NULL, N'321261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'321261')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040018', N'CHICAGO, IL', NULL, N'321261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'321261')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040020', N'CHICAGO, IL', NULL, N'321261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'321261')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040023', N'CHICAGO, IL', NULL, N'321255', N'310475', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', N'09/22/2022 06:55:44 PM', NULL, NULL, NULL, NULL, N'321255')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040024', N'CHICAGO, IL', NULL, N'321255', N'310475', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', N'09/22/2022 06:55:44 PM', NULL, NULL, NULL, NULL, N'321255')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040032', N'CHICAGO, IL', NULL, N'321261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'321261')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040033', N'CHICAGO, IL', NULL, N'321255', N'310475', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', N'09/22/2022 06:55:44 PM', NULL, NULL, NULL, NULL, N'321255')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040034', N'CHICAGO, IL', NULL, N'321261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'321261')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040036', N'CHICAGO, IL', NULL, N'321261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'321261')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040037', N'CHICAGO, IL', NULL, N'321255', N'310475', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', N'09/22/2022 06:55:44 PM', NULL, NULL, NULL, NULL, N'321255')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22040038', N'CHICAGO, IL', NULL, N'321255', N'310475', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T18:55:44.9733333' AS DateTime2), NULL, N'Completed', N'09/22/2022 06:55:44 PM', NULL, NULL, NULL, NULL, N'321255')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSCHI22050013', N'CHICAGO, IL', NULL, N'321261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'321261')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSMIA22060027', NULL, NULL, N'560098', N'310475', CAST(N'2022-09-15T14:11:18.0733333' AS DateTime2), N'Completed', CAST(N'2022-09-15T14:11:18.0733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-15T14:11:18.0733333' AS DateTime2), NULL, N'Completed', N'09/15/2022 02:11:18 PM', NULL, NULL, NULL, NULL, N'560098')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'PUSMIA22060033', NULL, NULL, N'560098', N'310475', CAST(N'2022-09-15T14:11:18.0733333' AS DateTime2), N'Completed', CAST(N'2022-09-15T14:11:18.0733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-15T14:11:18.0733333' AS DateTime2), NULL, N'Completed', N'09/15/2022 02:11:18 PM', NULL, NULL, NULL, NULL, N'560098')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'rretr5436', NULL, NULL, N'856856', N'310475', CAST(N'2022-09-22T16:02:23.4166667' AS DateTime2), N'Completed', CAST(N'2022-09-22T16:02:23.4166667' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T16:02:23.4166667' AS DateTime2), NULL, N'Completed', N'09/22/2022 04:02:23 PM', NULL, NULL, NULL, NULL, N'856856')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'sdfsdh56767', NULL, NULL, N'535357', N'310475', CAST(N'2022-09-19T18:11:38.7100000' AS DateTime2), N'Completed', CAST(N'2022-09-19T18:11:38.8733333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-19T18:11:39.1700000' AS DateTime2), NULL, N'Completed', N'09/19/2022 06:11:39 PM', NULL, NULL, NULL, NULL, N'535357')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'SHOAK22062282A', NULL, NULL, N'963524', N'310475', CAST(N'2022-09-21T20:03:44.1966667' AS DateTime2), N'Completed', CAST(N'2022-09-21T20:03:44.1966667' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-21T20:03:44.1966667' AS DateTime2), NULL, N'Completed', N'09/21/2022 08:03:44 PM', NULL, NULL, NULL, NULL, N'963524')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'SHOAK220800001', NULL, NULL, N'963524', N'310475', CAST(N'2022-09-21T20:03:44.2533333' AS DateTime2), N'Completed', CAST(N'2022-09-21T20:03:44.2533333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-21T20:03:44.2533333' AS DateTime2), NULL, N'Completed', N'09/21/2022 08:03:44 PM', NULL, NULL, NULL, NULL, N'963524')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'SHOAK220800006', NULL, NULL, N'963524', N'310475', CAST(N'2022-09-21T20:03:44.2533333' AS DateTime2), N'Completed', CAST(N'2022-09-21T20:03:44.2533333' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-21T20:03:44.2533333' AS DateTime2), NULL, N'Completed', N'09/21/2022 08:03:44 PM', NULL, NULL, NULL, NULL, N'963524')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'V5427731', NULL, NULL, N'670098', N'326068', CAST(N'2022-09-16T17:19:40.5333333' AS DateTime2), N'Completed', CAST(N'2022-09-16T17:19:40.7100000' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T17:19:40.9000000' AS DateTime2), NULL, N'Completed', N'09/16/2022 05:19:41 PM', NULL, NULL, NULL, NULL, N'670098')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'xdfsdfd6547', NULL, NULL, N'879787', N'310475', CAST(N'2022-09-22T16:23:19.4000000' AS DateTime2), N'Completed', CAST(N'2022-09-22T16:23:19.4000000' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-22T16:23:19.4000000' AS DateTime2), NULL, N'Completed', N'09/22/2022 04:23:19 PM', NULL, NULL, NULL, NULL, N'879787')
INSERT [dbo].[HBLMaster] ([Hblno], [Pod], [Pld], [FileNumber], [UserId], [CreateDate], [HblprocessingStatus], [HblprocessingDate], [Hblcomments], [Amsstatus], [AmsprocessingDate], [Amscomments], [InvoicingStatus], [InvoicingDate], [InvoicingComments], [DigiviewUser], [DigiviewStatus], [DigiviewComments], [FileMasterFileNumber]) VALUES (N'ZIMUHKG83303417', NULL, NULL, N'670098', N'326068', CAST(N'2022-09-16T17:19:44.2733333' AS DateTime2), N'Completed', CAST(N'2022-09-16T17:19:44.5600000' AS DateTime2), NULL, N'Completed', CAST(N'2022-09-16T17:19:44.7766667' AS DateTime2), NULL, N'Completed', N'09/16/2022 05:19:44 PM', NULL, NULL, NULL, NULL, N'670098')
GO
INSERT [dbo].[OfficeMaster] ([Id], [Office], [OfficeName], [IsActive], [IsDelete]) VALUES (N'4f3e8446-c68d-4333-afc8-1eb100f48384', N'LAX', N'LAX', 1, 0)
INSERT [dbo].[OfficeMaster] ([Id], [Office], [OfficeName], [IsActive], [IsDelete]) VALUES (N'9c4028af-ac8e-46c5-bfb2-4b8381d771a1', NULL, N'MIA', 1, 0)
INSERT [dbo].[OfficeMaster] ([Id], [Office], [OfficeName], [IsActive], [IsDelete]) VALUES (N'50019b99-2382-4458-ada7-b4fb675cb84b', N'CHI', N'CHI', 1, 0)
INSERT [dbo].[OfficeMaster] ([Id], [Office], [OfficeName], [IsActive], [IsDelete]) VALUES (N'80ab28d2-bb04-4b6b-9827-da64295273b3', NULL, N'SJU', 1, 0)
INSERT [dbo].[OfficeMaster] ([Id], [Office], [OfficeName], [IsActive], [IsDelete]) VALUES (N'f7bd1d5f-a1d5-4f62-815c-e015f290418f', NULL, N'PRI', 1, 0)
INSERT [dbo].[OfficeMaster] ([Id], [Office], [OfficeName], [IsActive], [IsDelete]) VALUES (N'80f189c1-a508-47de-8469-e045c725f883', NULL, N'FIM', 1, 0)
GO
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'a9dcf529-a8ef-444f-ac25-004537f5bf4d', N'890765', N'RTDER45657', NULL, 3, N'RTY', N'DFR', CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-31T00:00:00.0000000' AS DateTime2), N'CHI', N'EDI', N'dggd', NULL, N'139289', CAST(N'2022-08-12T15:33:23.2000000' AS DateTime2), CAST(N'2022-08-12T15:33:23.2000000' AS DateTime2), NULL, N'Data Entry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'a4d69f16-19f7-43a3-886c-96087fbc382a', N'676754', N'GHFR345672', NULL, 2, N'rtyrty', N'ryrty', CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2), N'LAX', N'GIM', NULL, NULL, N'310475', CAST(N'2022-06-25T12:27:45.6333333' AS DateTime2), CAST(N'2022-06-25T12:27:45.6333333' AS DateTime2), CAST(N'2022-07-11T13:33:30.7666667' AS DateTime2), N'Data Entry', N'ABCD', CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2), NULL, N'Missing', N'Available', N'Not Applicable', NULL, N'Normal', NULL, NULL)
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'f6d17a0e-26eb-4acb-b347-985b07ffb13c', N'345632', N'DFRE4567890', NULL, 4, N'CHI', N'NYC', CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-13T00:00:00.0000000' AS DateTime2), N'LAX', N'EDI', N'Vaibhav Aher', NULL, NULL, CAST(N'2022-06-25T13:08:55.9600000' AS DateTime2), CAST(N'2022-06-25T13:08:56.1300000' AS DateTime2), NULL, N'Data Entry', N'MBL', CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2), NULL, N'Available', N'Available', N'Not Applicable', NULL, N'Normal', NULL, NULL)
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'766afba2-cd9a-4c97-a03f-a39c18a187eb', N'452145', N'FGRDR34567', NULL, 10, N'MIA', N'NYC', CAST(N'2022-06-22T00:00:00.0000000' AS DateTime2), CAST(N'2022-06-30T00:00:00.0000000' AS DateTime2), N'LAX', N'EDI', NULL, NULL, NULL, CAST(N'2022-06-21T15:03:01.8000000' AS DateTime2), CAST(N'2022-06-21T15:03:01.8000000' AS DateTime2), CAST(N'2022-06-21T15:03:46.6966667' AS DateTime2), N'Data Entry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'c5088e1b-e8cf-479c-8f91-a7cc15f71d92', N'425874', N'HJGF458894', NULL, 4, N'CHI', N'NYC', CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-14T00:00:00.0000000' AS DateTime2), N'CHI', N'EDI', N'vaibhav Aher', NULL, NULL, CAST(N'2022-06-21T15:38:58.9700000' AS DateTime2), CAST(N'2022-06-21T15:38:58.9700000' AS DateTime2), CAST(N'2022-06-21T15:41:33.6133333' AS DateTime2), N'Data Entry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'3f397dff-36ef-4f94-85ef-ada706cb1b0e', N'670098', N'FHDJ456322', NULL, 2, N'TYR', N'RTE', CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-31T00:00:00.0000000' AS DateTime2), N'CHI', N'EDI', NULL, NULL, N'139289', CAST(N'2022-06-25T12:35:25.4433333' AS DateTime2), CAST(N'2022-06-25T12:35:25.9566667' AS DateTime2), CAST(N'2022-07-04T18:39:20.6100000' AS DateTime2), N'Data Entry', N'MBL', CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'bd7f8d62-3f06-42f6-99df-b159922f9c50', NULL, N'Dsdgfd3344', NULL, 2, NULL, NULL, CAST(N'2022-06-03T00:00:00.0000000' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-09-02T17:27:45.7133333' AS DateTime2), CAST(N'2022-09-02T17:27:45.7133333' AS DateTime2), NULL, N'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'8bf3e449-f671-479a-be76-c00a38d17c6f', N'345673', N'FDGR34323455', NULL, 4, N'MIA', N'NYC', CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-14T00:00:00.0000000' AS DateTime2), N'MIA', N'GIM', N'Vaibhav Aher', NULL, NULL, CAST(N'2022-06-21T15:36:54.7533333' AS DateTime2), CAST(N'2022-06-21T15:36:54.7533333' AS DateTime2), CAST(N'2022-06-21T18:27:46.8200000' AS DateTime2), N'Data Entry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[PreAlertMaster] ([Id], [FileNumber], [Container], [Mbl], [Hblcount], [Pod], [Pol], [RecievedDate], [Eta], [Office], [FileType], [ContractPerson], [UserId], [FuserId], [CreatedDate], [ComplitionTime], [UpdationTime], [Status], [MissingDoc], [EmailSendDate], [MissDocReceivedDate], [AmsCheck], [IfsCheck], [HazDoc], [PieceCount], [Priority], [Remarks], [ChecklistComplitionDate]) VALUES (N'fd0dceb3-6292-4514-b6a8-ceda4816210a', N'577889', N'FGDER3456778', NULL, 2, N'CHI', N'NYC', CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-20T00:00:00.0000000' AS DateTime2), N'LAX', N'EDI', N'Vaibhav Aher', NULL, N'139289', CAST(N'2022-06-21T15:39:37.5666667' AS DateTime2), CAST(N'2022-06-21T15:39:37.9600000' AS DateTime2), CAST(N'2022-06-22T20:06:22.3333333' AS DateTime2), N'Data Entry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'e0b67e3d-b8c3-4163-ab40-0423fec7f35d', N'7083c425-fe03-4713-9784-d2aea67bf859', N'879787', N'xdfsdfd6547', N'Trans-Shipment', N'SOP unclear', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'7233e0ef-9f57-43b0-be27-0d077d9db322', N'c2336c04-4d74-4a76-b4e0-020824c41a57', N'089665', N'MAEU215563407', N'File Office', N'Available in SOP - user did not follow', N'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'aac701cc-07f4-434e-bcbe-20cb568ca737', N'020eac43-027b-4666-9112-d0834217bc91', N'963524', N'SHOAK22062282A', N'Con. City', N'SOP unclear', N'Error', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'4090ad26-7e41-4efa-b100-2eb2b5cdd7ab', N'd2fc882e-6a54-48d7-a752-ea2fe5ae7837', N'535357', N'FHGR466778', N'Origin Agent', N'SOP unclear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'a669edb6-adec-48c2-b066-34ed06016eda', N'7083c425-fe03-4713-9784-d2aea67bf859', N'879787', N'xdfsdfd6547', N'POD', N'Available in SOP - user did not follow', N'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'0534a029-d176-4eda-a6c2-4ae203182781', N'cb603998-5e01-41c6-90bc-4694a499998a', N'089665', N'EGLV146102891448', N'PLD', N'Error due to IC instructions ', N'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'5650e980-ec0a-481a-b05d-4cbbb48e5820', N'67bc1afb-98ff-4d4d-b6b3-c50458e24bca', N'535357', N'FHGR466777', N'POL', N'User Unaware of process steps', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'4412e923-b5d9-4312-8e0d-4fc3ecdded65', N'3dc8a1f8-0b7b-48eb-b1ae-c9c0d78c04ee', N'089665', N'EGLV146102954164', N'Con. Address', N'System Error', N'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'a3094b00-baa3-4006-ba72-5da6c917953e', N'47a02a93-b759-416e-905d-118fcbf2ae34', N'089665', N'COSU6886590760', N'PLD', N'SOP unclear', N'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'e5af6e95-36d9-472a-8a48-65604a6f6c28', N'67bc1afb-98ff-4d4d-b6b3-c50458e24bca', N'535357', N'FHGR466777', N'File Office', N'Error due to IC instructions ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'3bebe1c0-67d4-4f09-b27f-657e160bab94', N'231048b7-74e5-4d5e-a3c2-55229c72df15', N'963524', N'SHOAK220800006', N'Trans-Shipment', N'Information available not captured', N'Error', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'46562f02-6ef3-4a8f-bdf7-67b9d66b05c5', N'954193e7-67c9-434d-b0fe-6850fefbd378', N'856856', N'fsdfdgfg4364', N'File Office', N'SOP unclear', N'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'a0e59ab3-be2c-49f3-a5dd-7c1635a4e95d', N'51b0c737-7dc4-41fe-8c14-ec892f5a11e8', N'856856', N'rretr5436', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'6da725cd-5d01-4435-8c76-aac9137c215c', N'702cf4b6-4b10-4f01-83e6-375c9c394c4b', N'963524', N'NON-CHI-SE469842', N'POD', N'Available in SOP - user did not follow', N'Error', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'5ebe9ed4-3444-4fc6-b9bb-b2550a04f4c9', N'96764d19-cd00-4966-939b-40e12c991a97', N'963524', N'MAN/CHS/05825', N'File Office', N'SOP unclear', N'Error', N'Error', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'd85dbc6d-3749-422f-9741-c6bd350b50dd', N'51b0c737-7dc4-41fe-8c14-ec892f5a11e8', N'856856', N'rretr5436', N'POD', N'Available in SOP - user did not follow', N'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'e542692a-08df-49f6-8ecb-d2d528bb3e16', N'9e4e850b-5e27-4d4b-87f3-7423da9338b6', N'879787', N'ggfu7686', NULL, NULL, N'OK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[QcHblWiseData] ([Id], [QcMasterId], [FileNumber], [Hblno], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'd6f5462b-f748-41ce-bdb1-e5d7feba6975', N'f97827c0-0630-41d6-9f3a-e88fb8358220', N'963524', N'SHOAK220800001', N'Consignee Name', N'Information Available - Typo Error', N'Error', N'Error', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'c2336c04-4d74-4a76-b4e0-020824c41a57', N'089665', N'MAEU215563407', N'File Office', N'Available in SOP - user did not follow', N'Done', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-22T19:19:19.1966667' AS DateTime2), CAST(N'2022-09-22T19:19:55.2566667' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'b59ee5ed-8f85-4f52-8acb-02cd8a1c35b3', N'963528', N'NYC/NAV/03174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:27.7133333' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'47a02a93-b759-416e-905d-118fcbf2ae34', N'089665', N'COSU6886590760', N'PLD', N'SOP unclear', N'Done', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-22T19:19:19.3666667' AS DateTime2), CAST(N'2022-09-22T19:19:55.2566667' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'275ce502-ba1e-4846-afc0-1373cd42504b', N'89765', N'fsfdsdf4434', N'File Office', N'Error due to IC instructions ', N'fgfd', N'gfdg', N'gfdfd', N'gfdg', N'gfdg', N'Completed', N'326068', CAST(N'2022-09-19T14:07:54.1733333' AS DateTime2), CAST(N'2022-09-19T14:08:21.9233333' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'94d0114d-1823-4073-a837-17bdfa7d9352', N'963528', N'NYC/NAV/03174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:27.9666667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'e3948110-32ce-4da5-8c5f-24e5c761c2c2', N'963528', N'NYC/NAV/031747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:27.9733333' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'36203c90-81cf-4270-b0c7-2cd0d79de7d4', N'890765', N'6346436', N'POD', N'Error due to IC instructions ', N'ef', N'dgfd', N'dddg', N'gfg', N'fddgd', N'Completed', N'310475', CAST(N'2022-09-19T14:07:14.1333333' AS DateTime2), CAST(N'2022-09-19T14:08:14.8533333' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'702cf4b6-4b10-4f01-83e6-375c9c394c4b', N'963524', N'NON-CHI-SE469842', N'POD', N'Available in SOP - user did not follow', N'Error', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-21T20:20:44.5766667' AS DateTime2), CAST(N'2022-09-21T20:21:29.6900000' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'96764d19-cd00-4966-939b-40e12c991a97', N'963524', N'MAN/CHS/05825', N'File Office', N'SOP unclear', N'Error', N'Error', NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-21T20:20:44.7566667' AS DateTime2), CAST(N'2022-09-21T20:21:29.6900000' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'cb603998-5e01-41c6-90bc-4694a499998a', N'089665', N'EGLV146102891448', N'PLD', N'Error due to IC instructions ', N'Done', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-22T19:19:19.3733333' AS DateTime2), CAST(N'2022-09-22T19:19:55.2566667' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'cc9d928f-c79e-4dbe-ba58-4b3b6b0cad57', N'963528', N'CVG/NAV/03081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:27.9800000' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'231048b7-74e5-4d5e-a3c2-55229c72df15', N'963524', N'SHOAK220800006', N'Trans-Shipment', N'Information available not captured', N'Error', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-21T20:20:44.7633333' AS DateTime2), CAST(N'2022-09-21T20:21:29.6900000' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'67ee9474-8fbd-4e0e-89ea-613915d80d9b', N'963528', N'NYC/NAV/031747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:27.9866667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'954193e7-67c9-434d-b0fe-6850fefbd378', N'856856', N'fsdfdgfg4364', N'File Office', N'SOP unclear', N'Done', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-22T16:12:29.0766667' AS DateTime2), CAST(N'2022-09-22T16:14:52.5266667' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'87c03d6b-c8c0-451f-a481-6dda97f161a5', N'23167', N'GHTFDhgj65768', N'System.Windows.Controls.ComboBoxItem: POD', N'System.Windows.Controls.ComboBoxItem: Available in SOP - user did not follow', N'gg', N'fdgfd', N'gfdg', N'gd', NULL, N'Completed', N'310475', CAST(N'2022-09-17T15:35:50.7133333' AS DateTime2), CAST(N'2022-09-17T15:36:52.8266667' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'52ff9b82-a635-4e31-a3c8-6f3b751f2e0f', N'963528', N'CVG/NAV/03081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:27.9933333' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'9e4e850b-5e27-4d4b-87f3-7423da9338b6', N'879787', N'ggfu7686', NULL, NULL, N'OK', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-22T18:29:01.1566667' AS DateTime2), CAST(N'2022-09-22T18:39:40.8566667' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'bd69f55b-8e80-47b3-bb7b-7822b993baf9', N'963528', N'NYC/NAV/031747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.0000000' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'a29a6e37-9797-4686-a89d-86495aa92867', N'963528', N'CVG/NAV/03081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.0066667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'21b38365-fc6d-4a95-99eb-96201add7c58', N'963528', N'DET/MEL/03332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.0766667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'1dbc9c05-943e-4d68-b716-9ce64f831b16', N'963528', N'NYC/NAV/031747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.0833333' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'b7164d3d-c167-4b02-a239-a07c90b1ee38', N'890765', N'643643643', N'File Office', N'Error due to IC instructions ', N'gfdg', N'fdgfdg', N'fdggd', N'fgdg', N'fdgfdg', N'Completed', N'310475', CAST(N'2022-09-19T14:07:14.4166667' AS DateTime2), CAST(N'2022-09-19T14:08:14.8533333' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'effbb3c7-c7cc-4c3e-92d1-a17ea7bcaaee', N'963528', N'DET/MEL/033324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.0866667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'2ad193b1-f279-419a-bc14-a29eb2c66a0b', N'963528', N'DET/MEL/033324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.0966667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'71710a41-2c71-4c0b-a760-b1891eca956e', N'890765', N'4365475764377', N'Ship. Address', N'SOP unclear', N'gfdg', N'fd', N'fgdg', N'gdg', N'vffdg', N'Completed', N'310475', CAST(N'2022-09-19T14:07:14.4333333' AS DateTime2), CAST(N'2022-09-19T14:08:14.8533333' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'43afc6f5-46dc-4a65-95b0-b5457142b970', N'23167', N'FGRT3446646', N'System.Windows.Controls.ComboBoxItem: Origin Agent', N'System.Windows.Controls.ComboBoxItem: Information available captured incorrectly', N'gfgf', N'fgfdg', N'gfgd', N'gdg', NULL, N'Completed', N'310475', CAST(N'2022-09-17T15:35:51.7000000' AS DateTime2), CAST(N'2022-09-17T15:36:52.8266667' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'37fa34cb-dc39-4c49-af8e-c133cb0f215d', N'963528', N'NYC/NAV/03174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.1000000' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'67bc1afb-98ff-4d4d-b6b3-c50458e24bca', N'535357', N'FHGR466777', N'File Office', N'Error due to IC instructions ', NULL, NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-21T19:27:13.4233333' AS DateTime2), CAST(N'2022-09-21T19:35:29.6033333' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'3dc8a1f8-0b7b-48eb-b1ae-c9c0d78c04ee', N'089665', N'EGLV146102954164', N'Con. Address', N'System Error', N'Done', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-22T19:19:19.3766667' AS DateTime2), CAST(N'2022-09-22T19:19:55.2566667' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'020eac43-027b-4666-9112-d0834217bc91', N'963524', N'SHOAK22062282A', N'Con. City', N'SOP unclear', N'Error', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-21T20:20:44.7700000' AS DateTime2), CAST(N'2022-09-21T20:21:29.6900000' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'659bf41b-e8f2-4429-b3e4-d2763eece026', N'963528', N'DET/MEL/03332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.1066667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'7083c425-fe03-4713-9784-d2aea67bf859', N'879787', N'xdfsdfd6547', N'Trans-Shipment', N'SOP unclear', N'Done', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-22T18:29:01.3366667' AS DateTime2), CAST(N'2022-09-22T18:39:42.0633333' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'8d533101-5e93-4d21-b0a8-db56401aa014', N'963528', N'DET/MEL/03332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.1100000' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'509e4be4-f477-4fd1-8385-e7b09fb4e265', N'963528', N'DET/MEL/033324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.1166667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'f97827c0-0630-41d6-9f3a-e88fb8358220', N'963524', N'SHOAK220800001', N'Consignee Name', N'Information Available - Typo Error', N'Error', N'Error', NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-21T20:20:44.7733333' AS DateTime2), CAST(N'2022-09-21T20:21:29.6900000' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'ee4d76d7-d817-41a4-96a6-e9f6db1919ec', N'963528', N'NYC/NAV/03174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.1200000' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'd2fc882e-6a54-48d7-a752-ea2fe5ae7837', N'535357', N'FHGR466778', N'Origin Agent', N'SOP unclear', NULL, NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-21T19:27:13.6100000' AS DateTime2), CAST(N'2022-09-21T19:35:30.4033333' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'51b0c737-7dc4-41fe-8c14-ec892f5a11e8', N'856856', N'rretr5436', N'POD', N'Available in SOP - user did not follow', N'Done', NULL, NULL, NULL, NULL, N'Completed', N'326068', CAST(N'2022-09-22T16:12:29.2533333' AS DateTime2), CAST(N'2022-09-22T16:14:53.8800000' AS DateTime2))
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'2749fc91-6844-4ade-b53e-ee3850f6ba36', N'963528', N'DET/MEL/03332', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.1233333' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'6c4668ce-6642-4273-b338-f6db7fd4ce71', N'963528', N'CVG/NAV/03081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.1266667' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'a476f2d7-5ff5-48fa-9d0c-fabf4edf6b10', N'963528', N'DET/MEL/033324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'WIP', N'326068', CAST(N'2022-10-10T16:30:28.1333333' AS DateTime2), NULL)
INSERT [dbo].[QcMaster] ([Id], [FileNumber], [HblNo], [ErrorField], [ErrorType], [Comment], [L1comment], [L2comment], [L3comment], [L4comment], [QcStatus], [Qcuser], [StartTime], [EndTime]) VALUES (N'367cbef6-cc1a-4bb1-a54e-fcc22c049589', N'89765', N'fdsfd54366', N'Ship. City', N'SOP unclear', N'fgdg', N'gfgg', N'fdfd', N'ffd', N'gfdg', N'Completed', N'326068', CAST(N'2022-09-19T14:07:54.3466667' AS DateTime2), CAST(N'2022-09-19T14:08:21.9233333' AS DateTime2))
GO
INSERT [dbo].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1f37676c-b4f8-498e-b926-29419018a0ee', N'QC', NULL, N'f52fcc07-6993-4308-908f-3007fb6f53ca')
INSERT [dbo].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'366947cf-69b5-4a47-8bcb-cca98192a88d', N'Admin', NULL, N'41562f6b-b7d7-4032-8f8f-a8afaed4fa0a')
INSERT [dbo].[Role] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3a0cb039-13de-48f8-b41d-0fcb18a01247', N'User', NULL, N'df6fe904-0227-4b3d-a7e5-acab1dec811b')
GO
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'15817f8d-b405-4387-9869-ec9e16645a29', N'ArchanaD', N'101656', N'ArchanaD', N'ArchanaA', 1, 0, N'ARCHANAD', N'OEE4IWF7LBPP23ZJ2CMTKTOIUQNDNF4R', N'281cc8f6-c126-4c25-9c9b-84038726e5e6', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'166a3f15-66bb-4fad-b475-79b25b0ba56c', N'RavindraM', N'326068', N'RavindraM', N'RAVINDRAM', 1, 0, N'RAVINDRAM', N'M5ODC2G4E3KQQ67IOQW3JI7BTD37VVPH', N'9b90d43d-82fa-43ab-bcdb-6310e5e8a9fb', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'212e6fa3-5360-44c9-aec2-7c2c88b12bbe', N'SajidS', N'300101', N'SajidS', N'SajidS', 1, 0, N'SAJIDS', N'TRBZIE35HFNK2A6YCJWRBBRDL6V6BE5V', N'0891d8dd-affc-4cd4-97ce-e1b5ebab4701', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'3158d4d2-b622-48e3-aeb7-c1181930f2e2', N'NRajesh', N'379755', N'NRajesh', N'RajeshN', 1, 0, N'NRAJESH', N'6ORSJZTX54WHCZAYJB4DDLLWZ44EWA7G', N'fe730965-cd4e-4dcd-8b24-e28d7b8ec460', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'394025bd-5e19-46c4-9236-7f8a430d60f3', N'ChandaM', N'374089', N'ChandaM', N'ChandaM', 1, 0, N'CHANDAM', N'BJ5V6U3BWTC5OE5WYW7FBWQLPVEG65HF', N'bcf14ac3-8fa0-43c1-b947-d55650317657', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'4096d22e-b2b3-4a09-b769-038f821a728f', N'MansiA', N'375551', N'MansiA', N'MansiA', 1, 0, N'MANSIA', N'S7JGLPUZW5SXPW5H7UIDYGVAXKA7V5O6', N'39d3453c-e476-4072-b986-e636c6a873d9', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'51f1b3dd-638e-4d35-8828-2ce6e0ea4dfa', N'Anand', N'458752', N'Anand', N'Anand', 1, 0, N'ANAND', N'PTM6FDCYHETSBNNZJ26LZKQD2IRNKHYA', N'0fd553a6-2db9-49b2-bb1b-10dcfb76b822', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'53de56b0-441d-4231-a2d4-4cbbf033dcc7', N'AkshayJ', N'457891', N'AkshayJ', N'AkshayJ', 1, 0, N'AKSHAYJ', N'OWXIC6SJXQDV7WNYFI7JF7BCOGSQMEXA', N'29e24362-073f-4d37-b344-7c7c51eb6476', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'5f16e46f-e947-4c83-a192-2f8d79e7d304', N'LaxmanM', N'369644', N'LaxmanM', N'LaxmanM', 1, 0, N'LAXMANM', N'NC7FRZXKZ6GAXOCHNWVTNOKGFF64LEBB', N'8384acf9-ecac-4470-9189-335e6dfb4c9d', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'63ccc71b-c005-46d7-a9fd-2115448ea7f4', N'PratikK', N'370742', N'PratikK', N'PratikK', 1, 0, N'PRATIKK', N'F4Y55S76UZ4W5UX42H3KMBWOIFOR3XVQ', N'95e356e5-1c04-4491-9fb7-e299c53ba724', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'75f44547-dde5-454e-984a-e8065f555744', N'RahulW', N'275401', N'RahulW', N'RAHULW', 1, 0, N'RAHULW', N'VIQAVZVMVXKVR2U4FSFPVXDW56ABGAH2', N'fb2e0e53-8139-416d-a4fa-57a0710aea98', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'8bebeeac-085a-4ba1-8cf3-ce238e7ef388', N'PoojaJ', N'284796', N'PoojaJ', N'POOJAJ', 1, 0, N'POOJAJ', N'FPKMWSBR7GOI224GP25FN4UNXRCZXWID', N'a8ebc41a-78a0-4436-b52a-a52fa549596e', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'8fea7810-e4d8-4a29-8a4f-18458dd71bec', N'YogitaS', N'361413', N'YogitaS', N'YogitaS', 1, 0, N'YOGITAS', N'SYMZTOMN4OFGZBJVIWKG4AD2DAFRVMUQ', N'4367381f-3e43-47a7-9ca6-6d3a7834eb94', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'a7e680c7-da1f-4a2f-89fc-487bbf317c48', N'BhavnaJ', N'373598', N'BhavnaJ', N'BhavnaJ', 1, 0, N'BHAVNAJ', N'VYMZDAMAD74RQHOTOU5XSVJPXOG5Y3YA', N'ab0e0968-67aa-4e65-a3cc-a9888943a641', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'b3288a6e-0f1a-45f6-af99-190a99220fc1', N'PratikB', N'361644', N'PratikB', N'PRATIKB', 1, 0, N'PRATIKB', N'EUSQGRZ7BNIXCFPD6KFDSA2LHOQGU6V2', N'321b27ce-70c5-4ae4-980b-ccc2d14d810b', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'c89264f9-961e-4b22-80c4-fcaacbb32c81', N'PushpalathaK', N'379756', N'PushpalathaK', N'PushpalathaK', 1, 0, N'PUSHPALATHAK', N'IAOADUMW5UPWKLCPVY25KEEQ3RBQJ5QB', N'0ba42a09-12a1-463a-9df4-b7e90279f46c', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'df572fa5-3220-4f53-8b82-13793c2e8a1a', N'VaibhavA', N'310475', N'VaibhavA', N'VAIBHAVA', 1, 0, N'VAIBHAVA', N'G2N4K2OT6WC26RV324IXEMAZOM5CP2TT', N'6686f333-7dd9-47d3-bbd9-2065c3e2df21', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'e03c6bdb-9d56-4411-888f-3ac011e85c11', N'MansiK', N'383059', N'MansiK', N'MansiK', 1, 0, N'MANSIK', N'TAAUMEESRYCHHHS337KFAXJ3L3LNGNX7', N'd63f2df3-fe58-49f4-b11e-bfac38233453', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'e7d2ce0a-b0ee-4fed-9f3a-78dd4e8e8493', N'SnehaM', N'373380', N'SnehaM', N'SnehaM', 1, 0, N'SNEHAM', N'ZXWNQTCR2I3KSYXZTD5AZSSR4IOXPICX', N'059e6a96-5429-4567-91c5-1b85e9f6b7a7', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'e97930a3-e7b9-41a3-ab77-4316c6ea55ff', N'PrasadK', N'367266', N'PrasadK', N'PrasadK', 1, 0, N'PRASADK', N'4PSEJ5FEGFA2RYRQUUISFPXINJIJZND5', N'6c263c18-1f2b-4a1c-b384-eb21acd3ebcd', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'f54e77a3-96d0-402e-8af7-7fe8294906f4', N'HemantA', N'152509', N'HemantA', N'HemantA', 1, 0, N'HEMANTA', N'ZH3MKPBLTMOOAGXTHNTLRXAN6DZOF6N3', N'd8913be5-893c-4a8f-94e0-d7dd2b29ec6b', 0)
INSERT [dbo].[User] ([Id], [UserName], [Wnsid], [CitrixId], [Doc_Contact], [IsActive], [IsDelete], [NormalizedUserName], [SecurityStamp], [ConcurrencyStamp], [AccessFailedCount]) VALUES (N'fc7d012a-5aab-41f4-a2fe-ca8316b97d6f', N'MansiS', N'375552', N'MansiS', N'MansiS', 1, 0, N'MANSIS', N'4QXBPIE6QR6HSOYGGCHMUIWP6I34YWVM', N'213c7ea9-1ccf-44e5-b4d1-283ec4c8ae3f', 0)
GO
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'00000000-0000-0000-0000-000000000000', N'457891', N'50019b99-2382-4458-ada7-b4fb675cb84b', 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'93d439b0-4897-415e-9417-1b1a64605353', N'367266', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'd753be3a-6440-40e1-ad5c-1d7d2bc32548', N'374089', NULL, 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'111a90b0-6e2c-43eb-87cd-2e2d906086cd', N'375552', NULL, 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'7aa21de2-18a9-4aa1-b0d7-3916bb0fa235', N'361413', N'9c4028af-ac8e-46c5-bfb2-4b8381d771a1', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'498e990a-267c-42a3-97f2-3bce2a2fa25a', N'361413', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'2d57b724-854e-4521-898e-3cbb25959717', N'373598', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'6c0f9f55-3f80-47b6-96c1-59bb08b99eed', N'379756', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'530861e9-1583-4773-87a4-5c30d07c58aa', N'310475', NULL, 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'6a64eb8d-3ef9-45a6-9628-60f736be9d47', N'379755', NULL, 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'8f284ce7-6718-4da4-ac3a-64b6cd14232c', N'379756', NULL, 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'9efc002a-a166-4f5a-890d-67295eaf27f5', N'310475', N'50019b99-2382-4458-ada7-b4fb675cb84b', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'b334d3c8-815e-4454-87f8-735b5add6113', N'457891', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'37264233-b3c3-44c3-ad72-76d2c2b351b4', N'458752', N'9c4028af-ac8e-46c5-bfb2-4b8381d771a1', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'fd89f2de-398d-45b8-8fe2-8a0936498efa', N'373380', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'62cef905-d7d0-4427-a90d-8f3b22fd5c5d', N'326068', NULL, 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'2cb398b3-1edd-43fc-96f4-93ddc5a9f50d', N'375552', N'9c4028af-ac8e-46c5-bfb2-4b8381d771a1', 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'e99fe809-fbe6-4622-87f9-a97113869cc1', N'373380', NULL, 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'd2e6ef28-d0f1-4738-9a4d-c1f03059a84b', N'367266', NULL, 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'6d964299-50ca-474b-979b-c4f10864e095', N'375551', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'408ef81e-22da-469a-acca-c68eaf153644', N'374089', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'20af36a4-9241-42cd-995d-c96c0100ae14', N'370742', N'50019b99-2382-4458-ada7-b4fb675cb84b', 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'db5b8e8d-23cc-488c-b0d2-cdf7cea7cad9', N'458752', N'50019b99-2382-4458-ada7-b4fb675cb84b', 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'523266e7-cc66-493c-925d-e86d888fbdf3', N'375551', N'50019b99-2382-4458-ada7-b4fb675cb84b', 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'ed396cc9-8493-4c73-8f8f-ebe64ef7ab5a', N'370742', NULL, 1, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'e5b33b75-70ea-42c7-aa61-f01fb3df65d9', N'373598', NULL, 2, 1)
INSERT [dbo].[UserOfficeRelation] ([Id], [UserId], [OfficeId], [Order], [IsActive]) VALUES (N'2dd62516-97f4-4ebc-bd75-f917ca8c5c07', N'379755', N'4f3e8446-c68d-4333-afc8-1eb100f48384', 1, 1)
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'212e6fa3-5360-44c9-aec2-7c2c88b12bbe', N'366947cf-69b5-4a47-8bcb-cca98192a88d')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'8bebeeac-085a-4ba1-8cf3-ce238e7ef388', N'366947cf-69b5-4a47-8bcb-cca98192a88d')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'15817f8d-b405-4387-9869-ec9e16645a29', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'3158d4d2-b622-48e3-aeb7-c1181930f2e2', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'394025bd-5e19-46c4-9236-7f8a430d60f3', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'4096d22e-b2b3-4a09-b769-038f821a728f', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'51f1b3dd-638e-4d35-8828-2ce6e0ea4dfa', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'53de56b0-441d-4231-a2d4-4cbbf033dcc7', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'5f16e46f-e947-4c83-a192-2f8d79e7d304', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'63ccc71b-c005-46d7-a9fd-2115448ea7f4', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'8fea7810-e4d8-4a29-8a4f-18458dd71bec', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'a7e680c7-da1f-4a2f-89fc-487bbf317c48', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'b3288a6e-0f1a-45f6-af99-190a99220fc1', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'c89264f9-961e-4b22-80c4-fcaacbb32c81', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e03c6bdb-9d56-4411-888f-3ac011e85c11', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e7d2ce0a-b0ee-4fed-9f3a-78dd4e8e8493', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'e97930a3-e7b9-41a3-ab77-4316c6ea55ff', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'f54e77a3-96d0-402e-8af7-7fe8294906f4', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'fc7d012a-5aab-41f4-a2fe-ca8316b97d6f', N'3a0cb039-13de-48f8-b41d-0fcb18a01247')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Digiview_UserId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_Digiview_UserId] ON [dbo].[Digiview]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileMaster_TrackNtraceUserId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_FileMaster_TrackNtraceUserId] ON [dbo].[FileMaster]
(
	[TrackNtraceUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileMaster_UserId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_FileMaster_UserId] ON [dbo].[FileMaster]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HBLMaster_FileMasterFileNumber]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_HBLMaster_FileMasterFileNumber] ON [dbo].[HBLMaster]
(
	[FileMasterFileNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HBLProcessing_HblnoNavigationHblno]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_HBLProcessing_HblnoNavigationHblno] ON [dbo].[HBLProcessing]
(
	[HblnoNavigationHblno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ImportCoOrdinator_HblnoNavigationHblno]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_ImportCoOrdinator_HblnoNavigationHblno] ON [dbo].[ImportCoOrdinator]
(
	[HblnoNavigationHblno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ImportCoOrdinator_UserId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_ImportCoOrdinator_UserId] ON [dbo].[ImportCoOrdinator]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PreAlertMaster_UserId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_PreAlertMaster_UserId] ON [dbo].[PreAlertMaster]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_QcHblWiseData_QcMasterId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_QcHblWiseData_QcMasterId] ON [dbo].[QcHblWiseData]
(
	[QcMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_QcMaster_FileNumber]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_QcMaster_FileNumber] ON [dbo].[QcMaster]
(
	[FileNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16-02-2023 13:25:12 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Role]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 16-02-2023 13:25:12 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[User]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLogins_UserId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [dbo].[UserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserOfficeMaster_LocationNameNavigationId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_UserOfficeMaster_LocationNameNavigationId] ON [dbo].[UserOfficeMaster]
(
	[LocationNameNavigationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserOfficeMaster_UserId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_UserOfficeMaster_UserId] ON [dbo].[UserOfficeMaster]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserRoles_RoleId]    Script Date: 16-02-2023 13:25:12 ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [dbo].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Digiview]  WITH CHECK ADD  CONSTRAINT [FK_Digiview_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Digiview] CHECK CONSTRAINT [FK_Digiview_User_UserId]
GO
ALTER TABLE [dbo].[FileMaster]  WITH CHECK ADD  CONSTRAINT [FK_FileMaster_User_TrackNtraceUserId] FOREIGN KEY([TrackNtraceUserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[FileMaster] CHECK CONSTRAINT [FK_FileMaster_User_TrackNtraceUserId]
GO
ALTER TABLE [dbo].[FileMaster]  WITH CHECK ADD  CONSTRAINT [FK_FileMaster_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[FileMaster] CHECK CONSTRAINT [FK_FileMaster_User_UserId]
GO
ALTER TABLE [dbo].[HBLMaster]  WITH CHECK ADD  CONSTRAINT [FK_HBLMaster_FileMaster_FileMasterFileNumber] FOREIGN KEY([FileMasterFileNumber])
REFERENCES [dbo].[FileMaster] ([FileNumber])
GO
ALTER TABLE [dbo].[HBLMaster] CHECK CONSTRAINT [FK_HBLMaster_FileMaster_FileMasterFileNumber]
GO
ALTER TABLE [dbo].[HBLProcessing]  WITH CHECK ADD  CONSTRAINT [FK_HBLProcessing_HBLMaster_HblnoNavigationHblno] FOREIGN KEY([HblnoNavigationHblno])
REFERENCES [dbo].[HBLMaster] ([Hblno])
GO
ALTER TABLE [dbo].[HBLProcessing] CHECK CONSTRAINT [FK_HBLProcessing_HBLMaster_HblnoNavigationHblno]
GO
ALTER TABLE [dbo].[ImportCoOrdinator]  WITH CHECK ADD  CONSTRAINT [FK_ImportCoOrdinator_HBLMaster_HblnoNavigationHblno] FOREIGN KEY([HblnoNavigationHblno])
REFERENCES [dbo].[HBLMaster] ([Hblno])
GO
ALTER TABLE [dbo].[ImportCoOrdinator] CHECK CONSTRAINT [FK_ImportCoOrdinator_HBLMaster_HblnoNavigationHblno]
GO
ALTER TABLE [dbo].[ImportCoOrdinator]  WITH CHECK ADD  CONSTRAINT [FK_ImportCoOrdinator_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ImportCoOrdinator] CHECK CONSTRAINT [FK_ImportCoOrdinator_User_UserId]
GO
ALTER TABLE [dbo].[PreAlertMaster]  WITH CHECK ADD  CONSTRAINT [FK_PreAlertMaster_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[PreAlertMaster] CHECK CONSTRAINT [FK_PreAlertMaster_User_UserId]
GO
ALTER TABLE [dbo].[QcHblWiseData]  WITH CHECK ADD  CONSTRAINT [FK_QcHblWiseData_QcMaster_QcMasterId] FOREIGN KEY([QcMasterId])
REFERENCES [dbo].[QcMaster] ([Id])
GO
ALTER TABLE [dbo].[QcHblWiseData] CHECK CONSTRAINT [FK_QcHblWiseData_QcMaster_QcMasterId]
GO
ALTER TABLE [dbo].[QcMaster]  WITH CHECK ADD  CONSTRAINT [FK_QcMaster_FileMaster_FileNumber] FOREIGN KEY([FileNumber])
REFERENCES [dbo].[FileMaster] ([FileNumber])
GO
ALTER TABLE [dbo].[QcMaster] CHECK CONSTRAINT [FK_QcMaster_FileMaster_FileNumber]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Role_RoleId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_User_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_User_UserId]
GO
ALTER TABLE [dbo].[UserOfficeMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserOfficeMaster_OfficeMaster_LocationNameNavigationId] FOREIGN KEY([LocationNameNavigationId])
REFERENCES [dbo].[OfficeMaster] ([Id])
GO
ALTER TABLE [dbo].[UserOfficeMaster] CHECK CONSTRAINT [FK_UserOfficeMaster_OfficeMaster_LocationNameNavigationId]
GO
ALTER TABLE [dbo].[UserOfficeMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserOfficeMaster_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserOfficeMaster] CHECK CONSTRAINT [FK_UserOfficeMaster_User_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Role_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_User_UserId]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_User_UserId]
GO
USE [master]
GO
ALTER DATABASE [USAImportWorkflowWeb] SET  READ_WRITE 
GO
