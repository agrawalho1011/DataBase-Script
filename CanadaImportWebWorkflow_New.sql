USE [master]
GO
/****** Object:  Database [CanadaImportWebWorkflow_New]    Script Date: 16-02-2023 13:20:38 ******/
CREATE DATABASE [CanadaImportWebWorkflow_New]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CanadaImportWebWorkflow_New', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CanadaImportWebWorkflow_New.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CanadaImportWebWorkflow_New_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CanadaImportWebWorkflow_New_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CanadaImportWebWorkflow_New].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET ARITHABORT OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET RECOVERY FULL 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET  MULTI_USER 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CanadaImportWebWorkflow_New', N'ON'
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET QUERY_STORE = OFF
GO
USE [CanadaImportWebWorkflow_New]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16-02-2023 13:20:38 ******/
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
/****** Object:  Table [dbo].[ActivityMapping]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityMapping](
	[Id] [nvarchar](450) NOT NULL,
	[FileActivityId] [nvarchar](450) NOT NULL,
	[HBLActivityId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ActivityMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityMaster]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[BasedOn] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ThreadId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ActivityMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Wnsid] [nvarchar](max) NOT NULL,
	[CitrixId] [nvarchar](max) NOT NULL,
	[DocContact] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NOT NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileActivity]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileActivity](
	[Id] [nvarchar](450) NOT NULL,
	[FileId] [nvarchar](450) NULL,
	[ActivityId] [nvarchar](450) NULL,
	[CurrentStatus] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[EnterDate] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[StartTime] [datetime2](7) NULL,
 CONSTRAINT [PK_FileActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileEntry]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileEntry](
	[Id] [nvarchar](450) NOT NULL,
	[FileNo] [nvarchar](max) NULL,
	[ContainerNo] [nvarchar](max) NULL,
	[IsEdi] [bit] NULL,
	[Pol] [nvarchar](max) NULL,
	[Pod] [nvarchar](max) NULL,
	[FinalDestination] [nvarchar](max) NULL,
	[FileType] [nvarchar](max) NULL,
	[Hblcount] [nvarchar](max) NULL,
	[ActualHblcount] [nvarchar](max) NULL,
	[Cbm] [nvarchar](max) NULL,
	[CoLoader] [nvarchar](max) NULL,
	[SailingDate] [datetime2](7) NULL,
	[EtaAtPod] [datetime2](7) NULL,
	[VesselName] [nvarchar](max) NULL,
	[ShippingLine] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[AllocatedTo] [nvarchar](max) NULL,
	[AllocatedDate] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](450) NULL,
	[EtaAtFD] [datetime2](7) NULL,
	[HBLFreightTerm] [nvarchar](max) NULL,
	[MBLFreightTerm] [nvarchar](max) NULL,
 CONSTRAINT [PK_FileEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HblActivity]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HblActivity](
	[Id] [nvarchar](450) NOT NULL,
	[HblId] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[CurrentStatus] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[EnterBy] [nvarchar](450) NULL,
	[EnterDate] [datetime2](7) NULL,
	[EndTime] [datetime2](7) NULL,
	[StartTime] [datetime2](7) NULL,
 CONSTRAINT [PK_HblActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HblEntry]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HblEntry](
	[Id] [nvarchar](450) NOT NULL,
	[FileGuidId] [nvarchar](450) NOT NULL,
	[Hblno] [nvarchar](max) NOT NULL,
	[IsDap] [bit] NULL,
	[CreatedBy] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_HblEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationMaster]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_LocationMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThreadMaster]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThreadMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Sequance] [int] NULL,
 CONSTRAINT [PK_ThreadMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThreadRelation]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThreadRelation](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ThreadId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ThreadRelation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLocationRelation]    Script Date: 16-02-2023 13:20:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLocationRelation](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[LocationId] [nvarchar](450) NOT NULL,
	[Sequance] [int] NULL,
 CONSTRAINT [PK_UserLocationRelation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221102094811_AllocatedColumnAddedToFileEntry', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221102142157_FileEntryTableUpdate', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221104130040_activityidaddedinhblactivitytable', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221115121803_useridcolumnremovefromthreadmaster', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221115123149_updateFileActivity', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221116072609_startendtimeaddedinfilehblactivity', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221117071305_Sequancecolumnaddedinthreadmaster', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221117074522_ThreadUserIdRemoved', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221117074825_ThreadRelastionCreated', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122115812_HBLActivityNullAddition', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221123091408_ActivityMapping', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221129110010_UserMappingWithOtherTables', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221201132049_foreignkeyremovefromfileactivity', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221215143851_UserLocationRelation', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221220140356_NewColumnsAddedInFileEntry', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221221081119_DateTypeChangeInFileEntry', N'6.0.10')
GO
INSERT [dbo].[ActivityMapping] ([Id], [FileActivityId], [HBLActivityId], [IsActive]) VALUES (N'0addf491-6e88-4071-81c3-c2daf54bda90', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'c6e053a5-0188-4747-879d-80a923d12676', 1)
INSERT [dbo].[ActivityMapping] ([Id], [FileActivityId], [HBLActivityId], [IsActive]) VALUES (N'49a9c212-f8ed-4a5d-a686-f9768627501b', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'40214c14-369b-405f-9f51-3d98dc9be1b9', 1)
INSERT [dbo].[ActivityMapping] ([Id], [FileActivityId], [HBLActivityId], [IsActive]) VALUES (N'633ebadd-28be-4d4b-9c6b-41b7106d3616', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', 1)
INSERT [dbo].[ActivityMapping] ([Id], [FileActivityId], [HBLActivityId], [IsActive]) VALUES (N'86db51d4-2745-4223-957a-a1f42dc6fc17', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'dfe8e644-e625-4f46-81b2-8867cd581855', 1)
GO
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'HBL Status', N'HBL', 1, N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Follow Up', N'HBL', 1, N'21ce7d51-ff52-4243-88a2-292984b75fe7')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Pre-Advice', N'HBL', 1, N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Invoicing Status', N'File', 1, N'dd8beae2-88f1-4366-8ebc-464b666014a8')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Invoice to Customer', N'HBL', 1, N'dd8beae2-88f1-4366-8ebc-464b666014a8')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Provision Status', N'HBL', 1, N'dd8beae2-88f1-4366-8ebc-464b666014a8')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Manifest to Customer', N'HBL', 1, N'dd8beae2-88f1-4366-8ebc-464b666014a8')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'File Processing Status', N'File', 1, N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'95b02d5d-e582-4654-b607-f95cbe573b66', N'test1', N'HBL', 1, N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Pre-Advice', N'File', 1, N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Doc To Warehouse', N'File', 1, N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Release Status', N'File', 1, N'21ce7d51-ff52-4243-88a2-292984b75fe7')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'c6e053a5-0188-4747-879d-80a923d12676', N'Release Status', N'HBL', 1, N'21ce7d51-ff52-4243-88a2-292984b75fe7')
INSERT [dbo].[ActivityMaster] ([Id], [Name], [BasedOn], [IsActive], [ThreadId]) VALUES (N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Invoicing Status', N'HBL', 1, N'dd8beae2-88f1-4366-8ebc-464b666014a8')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0a2fe82d-6e52-4e5b-94c9-351f03edf771', N'QC', NULL, N'f52fcc07-6993-4308-908f-3007fb6f53ca')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'77151b2f-7366-46d9-8703-e3ea6e9a17b9', N'User', NULL, N'df6fe904-0227-4b3d-a7e5-acab1dec811b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'87b37b0d-3c3c-4a43-9259-13dda1bf090b', N'Admin', NULL, N'41562f6b-b7d7-4032-8f8f-a8afaed4fa0a')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'07a75297-73be-46f5-945b-2f77c8d2624d', N'0a2fe82d-6e52-4e5b-94c9-351f03edf771')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'11028791-8228-4a41-8926-0a918ace056c', N'77151b2f-7366-46d9-8703-e3ea6e9a17b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1b8df810-80c0-414e-a91d-ebd4c1530639', N'77151b2f-7366-46d9-8703-e3ea6e9a17b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6cec718c-0aa2-44e0-ae18-f0f46231624d', N'77151b2f-7366-46d9-8703-e3ea6e9a17b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7174a470-bd29-4ca8-9ecc-69d28e9c4125', N'77151b2f-7366-46d9-8703-e3ea6e9a17b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'94cf07de-c563-422f-9e81-8aed349bcffb', N'77151b2f-7366-46d9-8703-e3ea6e9a17b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b4a6b860-f986-47d5-8eea-02b0f6817daa', N'77151b2f-7366-46d9-8703-e3ea6e9a17b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', N'77151b2f-7366-46d9-8703-e3ea6e9a17b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', N'77151b2f-7366-46d9-8703-e3ea6e9a17b9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6cec718c-0aa2-44e0-ae18-f0f46231624d', N'87b37b0d-3c3c-4a43-9259-13dda1bf090b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7174a470-bd29-4ca8-9ecc-69d28e9c4125', N'87b37b0d-3c3c-4a43-9259-13dda1bf090b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b4a6b860-f986-47d5-8eea-02b0f6817daa', N'87b37b0d-3c3c-4a43-9259-13dda1bf090b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e6285f51-76ee-4513-8559-6dc41df55a3c', N'87b37b0d-3c3c-4a43-9259-13dda1bf090b')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'07a75297-73be-46f5-945b-2f77c8d2624d', N'user3', N'user3', N'user3', N'', 1, 0, N'USER3', NULL, NULL, 0, NULL, N'RYCPD2MUJANNOV42TKKDAJ3OTIYUJQPG', N'7d748096-ff4d-4d57-912f-941123a9575b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'11028791-8228-4a41-8926-0a918ace056c', N'ravindram', N'326068', N'ravindram', N'', 1, 0, N'RAVINDRAM', NULL, NULL, 0, NULL, N'ZQCZNKAZI7TNVTTOFL4TI5POJIULBNGC', N'33a508e2-443f-4a1e-8021-1fa1a542e36c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1b8df810-80c0-414e-a91d-ebd4c1530639', N'vaibhava', N'310475', N'vaibhava', N'', 1, 0, N'VAIBHAVA', NULL, NULL, 0, NULL, N'KWNJPEYGNRVINZL7PD43THSK5Q5Z5CLM', N'a7918f2e-1a8f-44eb-8938-01b790acc58a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6cec718c-0aa2-44e0-ae18-f0f46231624d', N'user4', N'123456', N'user4', N'', 1, 0, N'USER4', NULL, NULL, 0, NULL, N'KB6AA5WAR7CF5O5Q7EKBQUO7PE7ZFDOG', N'74716b2b-1176-4ac8-a4d7-b682ae310911', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7174a470-bd29-4ca8-9ecc-69d28e9c4125', N'lalitko', N'207891', N'lalitko', N'', 1, 0, N'LALITKO', NULL, NULL, 0, NULL, N'TXOJNH4JXDKH6GZOHH3TZ6GJEYNBRBTY', N'ee329bda-e974-4586-89a5-1c6cd3bbb64d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7246bd22-97cc-4bda-a40e-55275a0324c6', N'HimanshuA', N'u418450', N'HimanshuA', N'', 1, 0, N'HIMANSHUA', NULL, NULL, 0, NULL, N'BAJHM364UF65WSBKPXRF4BFTJSWPQ4MI', N'506a86a4-ee6f-4139-8586-7973089d0470', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'94cf07de-c563-422f-9e81-8aed349bcffb', N'rahulw', N'u275401', N'rahulw', N'', 1, 0, N'RAHULW', NULL, NULL, 0, NULL, N'TFJIOD7V5D32CSNC6PA3DSLZKVJDX6EU', N'02e9f0de-7c2e-47d6-b7cf-601ed3ff8f1f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b4a6b860-f986-47d5-8eea-02b0f6817daa', N'deepaks', N'858856', N'deepaks', N'', 1, 0, N'DEEPAKS', NULL, NULL, 0, NULL, N'2F3WVC3IPCOLTUJBIOBINGWFTGB5YLXM', N'd15f8682-2bec-4f78-8673-7af45a78074d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', N'user2', N'u123458', N'user2', N'', 1, 0, N'USER2', NULL, NULL, 0, NULL, N'QD3QOUZ62KOHH7XY5IRQZH3XAMXZDFBH', N'dc009a8b-e0d6-485a-acfe-277fddf0ee14', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', N'user1', N'u123457', N'user1', N'', 1, 0, N'USER1', NULL, NULL, 0, NULL, N'JSMJXZHEUCO4BHOKJBQOVBPGGXBFZE7B', N'b8360a22-1a79-44a6-ba9b-4c8759e30fd4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [DocContact], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e6285f51-76ee-4513-8559-6dc41df55a3c', N'supervisor', N'u123456', N'supervisor', N'', 1, 0, N'SUPERVISOR', NULL, NULL, 0, NULL, N'GJ6VKCG3X43FXGZ7PBPGQ6US7VPFNAI2', N'94f06665-f9c7-4132-9ac2-371ed3f9bb27', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'04a33421-1284-47bf-a058-d824d6679777', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed With Query', N'mail id missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T12:50:56.4752708' AS DateTime2), CAST(N'2022-12-20T13:01:27.5364475' AS DateTime2), CAST(N'2022-12-20T12:57:10.3145721' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'0775a485-40e4-4865-87cc-60a4e034b6cf', N'a6cf97f5-6f50-4fd5-a33c-f567263a29fb', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed With Query', N'asdfasdfsadf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:48:49.8433250' AS DateTime2), CAST(N'2023-01-14T11:22:05.8819016' AS DateTime2), CAST(N'2022-12-21T10:49:57.4531449' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'084c7bb2-7314-41ab-808f-174126d99f46', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T12:49:54.2506828' AS DateTime2), CAST(N'2022-12-22T10:54:17.4579499' AS DateTime2), CAST(N'2022-12-20T13:01:36.6799763' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'086762c7-dd1d-4e23-be43-61d3ea9eaae2', N'b01d35bd-3ddc-4e50-a67b-2c76b3ec1d23', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'WIP', NULL, N'07a75297-73be-46f5-945b-2f77c8d2624d', CAST(N'2022-11-28T11:20:28.4515856' AS DateTime2), NULL, CAST(N'2022-12-06T10:43:42.9090543' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'0a5f14e1-9174-47d6-ad73-177d6841b45e', N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-31T11:48:58.4426370' AS DateTime2), CAST(N'2023-01-14T11:33:08.0550910' AS DateTime2), CAST(N'2023-01-14T11:23:00.6929339' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'0c4185f8-d99b-4af0-b73e-7080fd11ba53', N'e3d52dff-e06f-41a4-a309-20f4344c8d74', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:22:57.3890609' AS DateTime2), CAST(N'2023-01-14T11:53:45.5328144' AS DateTime2), CAST(N'2023-01-14T11:52:45.5377381' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'0d62a833-d046-4b07-90f4-beb81a9053a0', N'5578de68-c0ae-4403-8ac9-13fe0bd8e7d7', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6707559' AS DateTime2), CAST(N'2022-12-23T12:07:33.5850332' AS DateTime2), CAST(N'2022-12-22T11:07:46.3888194' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'0fa752ba-b735-46d6-a0f2-c5b4e5fd2f6d', N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.9747425' AS DateTime2), CAST(N'2022-12-27T05:17:11.5371103' AS DateTime2), CAST(N'2022-12-27T05:17:04.3241302' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'160487d5-547f-4742-b96c-290228541b53', N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1760084' AS DateTime2), CAST(N'2022-12-27T05:17:22.2810035' AS DateTime2), CAST(N'2022-12-27T05:17:12.6570292' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'1baa4eb1-8452-4859-8081-39f288cacbb6', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-25T08:41:46.3471638' AS DateTime2), CAST(N'2023-01-14T11:58:12.6973746' AS DateTime2), CAST(N'2022-12-20T10:08:48.8888504' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'212b8e0c-3c00-4aa7-917b-5678cb9026c7', N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'WIP', NULL, N'94cf07de-c563-422f-9e81-8aed349bcffb', CAST(N'2023-01-14T11:56:27.3518563' AS DateTime2), NULL, CAST(N'2023-02-15T08:27:05.7303256' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'214aa4e5-4d92-4727-b807-575aacd067f0', N'a6cf97f5-6f50-4fd5-a33c-f567263a29fb', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.5076847' AS DateTime2), CAST(N'2022-12-27T05:16:52.5950576' AS DateTime2), CAST(N'2022-12-27T05:16:34.4927951' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'216c65f3-1d15-4d57-a4bf-1fe2f8387823', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.2012754' AS DateTime2), CAST(N'2023-01-14T12:03:59.0539043' AS DateTime2), CAST(N'2023-01-14T12:03:46.0919007' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'269f7a54-0b8a-48e1-a142-cb9888e8f8c3', N'b8bdf58f-8fcf-496a-afd2-ba6e94074805', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', N'sdfdsg', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-17T06:44:30.3724092' AS DateTime2), CAST(N'2022-11-17T06:44:30.3724092' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'26d651d1-383b-41e5-9a80-95508fc98f11', N'a6cf97f5-6f50-4fd5-a33c-f567263a29fb', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-21T11:01:33.0126033' AS DateTime2), CAST(N'2022-12-22T11:03:32.4991963' AS DateTime2), CAST(N'2022-12-22T11:03:22.1821279' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'272b6f5f-848f-4716-b3db-38ef73ba3878', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed With Query', N'HBL missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T12:49:54.2504813' AS DateTime2), CAST(N'2022-12-22T10:54:17.4549459' AS DateTime2), CAST(N'2022-12-20T13:01:36.6800031' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'2d16a9b7-13ec-41ed-b312-b545ed47abe8', N'5578de68-c0ae-4403-8ac9-13fe0bd8e7d7', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-30T08:27:41.4908385' AS DateTime2), CAST(N'2022-12-06T14:48:19.3305577' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'2ed27052-5ce9-45aa-a00e-8d37270cb468', N'e43577fd-cfb7-4ab5-bbd9-558395b052b1', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:14:17.3732735' AS DateTime2), CAST(N'2022-11-28T11:17:13.8840762' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'32753ba2-8ae6-4735-9116-1956a72ac45d', N'd5b559d3-0c7e-4557-9152-fae7591e7d53', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-30T08:30:09.3727119' AS DateTime2), CAST(N'2022-12-20T13:05:39.4735436' AS DateTime2), CAST(N'2022-12-06T08:18:36.5550371' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'3360a5e9-1fb8-45f9-a66a-5cde91d0a222', N'74192b11-c8f2-46c9-ba78-d9ea580313e5', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'WIP', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-29T10:47:37.4555044' AS DateTime2), NULL, CAST(N'2022-12-06T08:32:59.8572405' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'364de92f-e435-4d1a-a9b1-918795512ee9', N'd5b559d3-0c7e-4557-9152-fae7591e7d53', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-30T08:30:09.3728196' AS DateTime2), CAST(N'2022-12-20T13:05:39.4747901' AS DateTime2), CAST(N'2022-12-06T08:18:36.5616757' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'372f22e3-dd79-40c6-8ed0-99c86b8e9797', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed With Query', N'dfad', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-21T15:07:49.5195516' AS DateTime2), CAST(N'2022-11-22T11:26:58.6578876' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'38dce0ba-a851-42fe-81aa-733fced34395', N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-21T10:44:34.1461558' AS DateTime2), CAST(N'2022-12-22T11:05:00.9338804' AS DateTime2), CAST(N'2022-12-22T11:04:11.9235651' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'3954eba3-43c2-422c-ad5b-049d7a8b3a58', N'b01d35bd-3ddc-4e50-a67b-2c76b3ec1d23', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Pending', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-28T11:15:25.5172230' AS DateTime2), CAST(N'2022-11-28T11:20:28.4439320' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'3c933ace-6b2b-4122-ac4f-dd17a9c699bf', N'95cecc70-4f62-4254-bd31-ef403ab721ae', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'WIP', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-31T12:05:16.5649747' AS DateTime2), NULL, CAST(N'2023-01-10T03:06:45.5273030' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'3ddb168f-1490-47e6-b33c-4e749ef992b4', N'1d06f6d0-062d-45b0-9a08-307186c4ae86', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'WIP', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-12-22T10:50:05.8087603' AS DateTime2), NULL, CAST(N'2022-12-28T14:09:14.4139506' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'415f99d6-7de9-49c3-a31e-ce1296ae334b', N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-30T08:29:07.4087216' AS DateTime2), CAST(N'2022-12-21T10:44:36.4118012' AS DateTime2), CAST(N'2022-12-07T09:42:19.5523017' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'419e5134-bb25-40be-81f5-7201e899cf3a', N'5578de68-c0ae-4403-8ac9-13fe0bd8e7d7', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', N'afsad', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-06T14:48:19.4880387' AS DateTime2), CAST(N'2022-12-20T13:10:42.6608714' AS DateTime2), CAST(N'2022-12-20T13:09:08.6400973' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'42aa2c8c-acb2-40f9-add9-5f6db803fc30', N'fbc450d6-294a-4bb8-a81f-a102ccfd5814', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'WIP', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-12-20T12:48:56.9748487' AS DateTime2), NULL, CAST(N'2022-12-20T13:05:46.9041156' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'44d9be35-42b4-490c-b594-5e4a94874a8c', N'95cecc70-4f62-4254-bd31-ef403ab721ae', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'WIP', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-31T12:05:16.5648934' AS DateTime2), NULL, CAST(N'2023-01-10T03:06:45.5273159' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'456c2463-4f0e-45f1-be8f-e02a1f96c76b', N'e3d52dff-e06f-41a4-a309-20f4344c8d74', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-20T14:56:57.4711859' AS DateTime2), CAST(N'2023-01-14T11:22:57.3276194' AS DateTime2), CAST(N'2022-12-21T10:51:22.4006221' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'459ae082-2d14-48fe-9594-2bac280d6711', N'e43577fd-cfb7-4ab5-bbd9-558395b052b1', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', N'Test', N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:14:17.3885255' AS DateTime2), CAST(N'2022-11-28T11:17:13.8850979' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'482665b6-18d5-410c-baec-7b883e098137', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.5163366' AS DateTime2), CAST(N'2022-12-22T10:55:12.1682696' AS DateTime2), CAST(N'2022-12-22T10:54:36.2099550' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'48473209-5b93-4334-ad24-a7361fde459d', N'efd138cc-62bd-4fba-b8f7-5b5613906652', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', N'dssd', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T20:09:46.3580323' AS DateTime2), CAST(N'2022-11-16T16:46:41.4485077' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'571cdc65-cc9b-491f-8487-b5da640f20be', N'e3d52dff-e06f-41a4-a309-20f4344c8d74', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-20T14:56:57.4905772' AS DateTime2), CAST(N'2023-01-14T11:22:57.3706222' AS DateTime2), CAST(N'2022-12-21T10:51:22.4006377' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'5d23036c-d4a8-40c2-8926-c68193b81df3', N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-30T08:29:07.4085966' AS DateTime2), CAST(N'2022-12-21T10:44:36.4024229' AS DateTime2), CAST(N'2022-12-07T09:42:19.5647932' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'61fa46a1-48dd-40f3-b2e0-cc311b7cd6c8', N'5578de68-c0ae-4403-8ac9-13fe0bd8e7d7', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed With Query', N'asdfasdfasdfsad', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-30T08:27:41.4619631' AS DateTime2), CAST(N'2022-12-06T14:48:19.3187160' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'6a6eb02d-4b4e-41d5-94be-4362347b77f2', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-09T08:45:40.6887229' AS DateTime2), CAST(N'2023-01-10T03:06:41.1306027' AS DateTime2), CAST(N'2023-01-10T03:05:30.6784058' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'6a7ead83-12a5-473b-9230-9a634a4523c1', N'd5b559d3-0c7e-4557-9152-fae7591e7d53', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-30T08:30:09.3728534' AS DateTime2), CAST(N'2022-12-20T13:05:39.4760029' AS DateTime2), CAST(N'2022-12-06T08:18:36.5617446' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'6aeaa299-6206-4964-a0f4-083d02d669db', N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:48:59.9735592' AS DateTime2), CAST(N'2022-12-22T11:02:18.6118793' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'6ee2d9d1-eaac-4746-a7cc-1bee33e072af', N'5578de68-c0ae-4403-8ac9-13fe0bd8e7d7', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed With Query', N'asdfasdfasdfsadf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-30T08:27:41.4907027' AS DateTime2), CAST(N'2022-12-06T14:48:19.3247147' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'6f74ee69-ea22-4ff8-8a0c-4a36de3b3705', N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-31T11:48:58.4253906' AS DateTime2), CAST(N'2023-01-14T11:33:07.9664105' AS DateTime2), CAST(N'2023-01-14T11:23:00.6929597' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'7219d642-eaf6-4bdb-80e0-d15338cd4d18', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.7970193' AS DateTime2), CAST(N'2023-01-14T12:02:22.5383510' AS DateTime2), CAST(N'2023-01-14T12:01:56.3573534' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'75d9a450-d530-4421-a0d7-8b1dfff3be23', N'1d06f6d0-062d-45b0-9a08-307186c4ae86', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'WIP', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-12-22T10:50:05.8087124' AS DateTime2), NULL, CAST(N'2022-12-28T14:09:17.8001195' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'77a9a11a-3a5d-4a09-8a92-146f11238dc9', N'b01d35bd-3ddc-4e50-a67b-2c76b3ec1d23', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', N'Test', N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-25T08:24:32.7995082' AS DateTime2), CAST(N'2022-11-28T11:16:44.4768650' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'793ac689-b2f4-439d-87e0-bba48642efea', N'b01d35bd-3ddc-4e50-a67b-2c76b3ec1d23', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', N'Test', N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-25T08:24:32.7994198' AS DateTime2), CAST(N'2022-11-28T11:16:44.4749405' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'7cb94fe9-44a8-4942-943f-38019021d420', N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:48:59.9737323' AS DateTime2), CAST(N'2022-12-22T11:02:18.6130470' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'7d5c6f4f-48c2-4659-bbe1-89cdb14ee03f', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-10T03:06:40.9880211' AS DateTime2), CAST(N'2023-01-14T11:47:24.7688753' AS DateTime2), CAST(N'2023-01-14T11:35:56.1177133' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'8772d364-5980-4e2f-88a2-85b5ba2cc754', N'fbc450d6-294a-4bb8-a81f-a102ccfd5814', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'WIP', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-12-20T12:48:56.9494003' AS DateTime2), NULL, CAST(N'2022-12-20T13:05:46.9041290' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'8bacf775-9c21-4554-9e02-686e172e53b5', N'74192b11-c8f2-46c9-ba78-d9ea580313e5', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', N'asdfsafafdfsd', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:06:12.3278981' AS DateTime2), CAST(N'2022-11-29T10:47:37.3300850' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'8dfe6539-3a3b-47c4-8ca8-3a409586b97f', N'1d06f6d0-062d-45b0-9a08-307186c4ae86', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'WIP', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-12-22T10:50:05.8085070' AS DateTime2), NULL, CAST(N'2022-12-28T14:09:19.5925581' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'9065d1fe-163b-49fe-8d50-bc1b2f766b72', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-23T10:42:06.9021112' AS DateTime2), CAST(N'2022-11-25T08:28:37.2452181' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'93b964f1-0c5d-4151-9e02-5fd9c4dc4f82', N'e43577fd-cfb7-4ab5-bbd9-558395b052b1', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, NULL, CAST(N'2022-11-28T11:20:49.7121463' AS DateTime2), NULL, NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'941539a7-e856-48be-8000-f88e9eb0b9ee', N'e3d52dff-e06f-41a4-a309-20f4344c8d74', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'WIP', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.6658146' AS DateTime2), NULL, CAST(N'2023-01-14T12:04:02.8846665' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'94503878-f7d6-4d95-af71-393820036871', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-23T10:42:06.8820762' AS DateTime2), CAST(N'2022-11-25T08:28:37.2427845' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'95934502-491d-498b-816a-705a7fbcedb7', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed With Query', N'mail id missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T12:50:56.4754037' AS DateTime2), CAST(N'2022-12-20T13:01:27.5381683' AS DateTime2), CAST(N'2022-12-20T12:57:10.3147252' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'95c35e15-52a1-4e92-8bad-43ff13721394', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed With Query', N'sadfdasf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-21T15:07:49.5196956' AS DateTime2), CAST(N'2022-11-22T11:27:03.5590559' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'96d410a3-c64c-46e8-acd0-a3aacff63738', N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-30T08:29:07.4087536' AS DateTime2), CAST(N'2022-12-21T10:44:36.4261101' AS DateTime2), CAST(N'2022-12-07T09:42:19.5648976' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'97944641-605c-4948-901e-e21a57d6e1ee', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', N'asdfsdafa', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-21T15:07:49.4858241' AS DateTime2), CAST(N'2022-11-22T11:26:55.7168585' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'9c4af7cf-a513-410c-a710-89b2d6465c88', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed With Query', N'HBL missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T12:49:54.2506459' AS DateTime2), CAST(N'2022-12-22T10:54:17.4565237' AS DateTime2), CAST(N'2022-12-20T13:01:36.6800056' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'9ee79a34-8ce1-4ac4-857c-b799aaa55e56', N'a6cf97f5-6f50-4fd5-a33c-f567263a29fb', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:48:49.8429897' AS DateTime2), CAST(N'2023-01-14T11:22:05.3636011' AS DateTime2), CAST(N'2022-12-21T10:49:57.4531587' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'9f610587-5cd9-419e-90d2-c0141251de79', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-09T08:45:39.5450498' AS DateTime2), CAST(N'2023-01-10T03:06:40.9143670' AS DateTime2), CAST(N'2023-01-10T03:05:30.6887927' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'b1cc5cb5-1c4b-4a7c-8d69-7a85a50e5956', N'a6cf97f5-6f50-4fd5-a33c-f567263a29fb', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed With Query', N'asdfasdfsadf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:48:49.8435179' AS DateTime2), CAST(N'2023-01-14T11:22:06.3011953' AS DateTime2), CAST(N'2022-12-21T10:49:57.4531611' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'b32346e7-dc98-4914-9cdf-e72dab21896e', N'e43577fd-cfb7-4ab5-bbd9-558395b052b1', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-28T11:17:13.8885509' AS DateTime2), CAST(N'2022-11-28T11:20:49.6840787' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'bb386814-b71e-49a2-bb3a-3c751f3fd598', N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-31T11:48:58.4425494' AS DateTime2), CAST(N'2023-01-14T11:33:08.0450040' AS DateTime2), CAST(N'2023-01-14T11:23:00.6929633' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'bb390fc3-2be3-4d74-b2e0-ec5bbaa2e60b', N'e43577fd-cfb7-4ab5-bbd9-558395b052b1', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', N'Test', N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:14:17.3885907' AS DateTime2), CAST(N'2022-11-28T11:17:13.8861469' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'bc390758-f618-4726-acfb-7a4da39d7f14', N'b8bdf58f-8fcf-496a-afd2-ba6e94074805', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', N'fsdg', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T14:37:28.7316994' AS DateTime2), CAST(N'2022-11-16T14:37:28.7316994' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'be6aedf0-8108-4298-913a-0bd1104b5fd6', N'b8bdf58f-8fcf-496a-afd2-ba6e94074805', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'WIP', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-22T12:14:41.6422446' AS DateTime2), CAST(N'2022-11-22T12:14:41.6422446' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'bf87bcc0-1ca2-4c5e-9bce-86b5ddf327ff', N'efd138cc-62bd-4fba-b8f7-5b5613906652', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', N'fdsf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T20:09:46.3577713' AS DateTime2), CAST(N'2022-11-16T16:46:41.4487239' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'c060266f-1ea0-4f95-a72f-ddb9a0e261c2', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'WIP', NULL, N'7174a470-bd29-4ca8-9ecc-69d28e9c4125', CAST(N'2022-12-20T13:08:57.1362488' AS DateTime2), NULL, CAST(N'2022-12-20T13:11:06.6908818' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'c0d20ecc-e8e1-4527-b670-45e54cbe6534', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Query', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:28:21.5104004' AS DateTime2), CAST(N'2022-11-25T08:41:46.3289661' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'c11ef838-642c-4df9-8b36-f5170fe56d48', N'74192b11-c8f2-46c9-ba78-d9ea580313e5', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', N'asdfadfadfasdfda', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:06:12.3027150' AS DateTime2), CAST(N'2022-11-29T10:47:37.3117216' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'c3f11d99-fb93-4110-a17a-741f569303ad', N'e3d52dff-e06f-41a4-a309-20f4344c8d74', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-20T14:56:57.4904923' AS DateTime2), CAST(N'2023-01-14T11:22:57.3640740' AS DateTime2), CAST(N'2022-12-21T10:51:22.4006404' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'c4b0c278-da92-4d21-a3b8-dfca942c37f3', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:27:14.4394468' AS DateTime2), CAST(N'2023-01-14T11:35:53.1663006' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'c8e533a6-e460-4b40-9da8-473e99dad55c', N'fbc450d6-294a-4bb8-a81f-a102ccfd5814', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'WIP', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-12-20T12:48:56.9749421' AS DateTime2), NULL, CAST(N'2022-12-20T13:05:46.9041323' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'cdd906ef-3158-4525-8c19-6a0863430a48', N'efd138cc-62bd-4fba-b8f7-5b5613906652', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'WIP', NULL, N'94cf07de-c563-422f-9e81-8aed349bcffb', CAST(N'2022-11-16T20:37:28.7317069' AS DateTime2), NULL, NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'cf9adb16-c387-46a2-9a0d-fc5551e4c6ea', N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:48:59.9433358' AS DateTime2), CAST(N'2022-12-22T11:02:18.6106547' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'd71cc521-f08d-4e22-9e46-f5a5349698c7', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-23T10:42:06.9020319' AS DateTime2), CAST(N'2022-11-25T08:28:37.2440019' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'd75dabc8-24df-4eaf-978d-4f19636eee52', N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.6222868' AS DateTime2), CAST(N'2022-12-22T11:05:17.1735477' AS DateTime2), CAST(N'2022-12-22T11:05:02.8143635' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'dbcecc2e-3825-40e0-86cb-4ac862d322bc', N'95cecc70-4f62-4254-bd31-ef403ab721ae', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'WIP', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-31T12:05:16.5650008' AS DateTime2), NULL, CAST(N'2023-01-10T03:06:45.5273199' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'de296324-35a4-4569-be63-5053036d9c4a', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-09T08:45:34.7715934' AS DateTime2), CAST(N'2023-01-10T03:06:40.7443029' AS DateTime2), CAST(N'2023-01-10T03:05:30.6889109' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'e6c6c09d-cbc2-4862-ade0-b57eb742fc88', N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:08.1826723' AS DateTime2), CAST(N'2023-01-14T11:56:27.3095189' AS DateTime2), CAST(N'2023-01-14T11:56:18.4424545' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'ebe8be09-994b-4cd8-885b-d4bd3c2a2485', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T12:50:56.4754810' AS DateTime2), CAST(N'2022-12-20T13:01:27.5445735' AS DateTime2), CAST(N'2022-12-20T12:57:10.3147281' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'f1135fda-a6ad-46a4-ad7f-973591337494', N'b01d35bd-3ddc-4e50-a67b-2c76b3ec1d23', N'8a20cf2d-1326-414c-9af5-e2a9af655213', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-25T08:24:32.7759464' AS DateTime2), CAST(N'2022-11-28T11:16:44.4728028' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'f23e5e0a-cd20-4696-8135-d738ab2b4757', N'd5b559d3-0c7e-4557-9152-fae7591e7d53', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:05:39.4893698' AS DateTime2), CAST(N'2022-12-22T11:04:09.5695823' AS DateTime2), CAST(N'2022-12-22T11:03:34.1607316' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'f60c97e5-e87a-4578-ace2-143f6c48c9e9', N'd5b559d3-0c7e-4557-9152-fae7591e7d53', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:04:09.5812026' AS DateTime2), CAST(N'2022-12-27T05:17:03.0847447' AS DateTime2), CAST(N'2022-12-27T05:16:53.8309003' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'f6df2382-98f3-4cf5-9754-856a36298b41', N'74192b11-c8f2-46c9-ba78-d9ea580313e5', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed With Query', N'sdfdafdsdafdfadfafdfaf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:06:12.3278331' AS DateTime2), CAST(N'2022-11-29T10:47:37.3238255' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'fa8d9124-9c0d-4575-a403-003b48c3faaf', N'b8bdf58f-8fcf-496a-afd2-ba6e94074805', N'a85d57f0-cf55-4abe-89a2-25565bbd65a9', N'Completed', N'gsdg', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T14:37:28.7317069' AS DateTime2), CAST(N'2022-11-16T14:37:28.7317069' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'fd834ffa-0202-4b44-b36a-7c724916c4a2', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'50fce0c5-3028-4534-9245-a070dfac9a09', N'Completed With Query', N'invoice missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.6159089' AS DateTime2), CAST(N'2022-12-20T13:08:57.1254407' AS DateTime2), NULL)
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'fe024535-4534-47b1-bc80-a2bfbf0816d9', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'c3b301cd-a682-4da3-9e21-c2ec65ae8743', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1908050' AS DateTime2), CAST(N'2022-12-27T05:16:31.9102919' AS DateTime2), CAST(N'2022-12-27T05:16:19.3752210' AS DateTime2))
INSERT [dbo].[FileActivity] ([Id], [FileId], [ActivityId], [CurrentStatus], [Comment], [UserId], [EnterDate], [EndTime], [StartTime]) VALUES (N'ffb516a0-c907-40b9-99b8-d35255578f28', N'efd138cc-62bd-4fba-b8f7-5b5613906652', N'a759e4f0-d040-4158-bc36-8c22dd783a57', N'Completed', N'fsdf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T20:09:46.3579870' AS DateTime2), CAST(N'2022-11-16T16:46:41.4487318' AS DateTime2), NULL)
GO
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'1d06f6d0-062d-45b0-9a08-307186c4ae86', NULL, N'OOLU9357911 ', 1, N'HAM', N'MTR', N'MTR', N'LCL', N'11', NULL, N'51.37', N'OOCL', CAST(N'2022-12-18T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-27T00:00:00.0000000' AS DateTime2), N'QUEBEC EXPRESS', N'OOCL', N'TINA', NULL, NULL, NULL, CAST(N'2022-12-22T10:50:05.8080537' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', CAST(N'2022-12-31T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'1514554', N'ONEA1234567', 0, N'NGB', N'VAN', N'MTR', N'LCL', N'9', NULL, N'12.2', NULL, CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-23T00:00:00.0000000' AS DateTime2), N'ABCD', N'SM LINE', N'DEEPAK', NULL, NULL, NULL, CAST(N'2022-12-20T12:50:56.4750160' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'5578de68-c0ae-4403-8ac9-13fe0bd8e7d7', N'56875', N'AXIU1900683', 1, N'SGN', N'VAN', N'VAN', N'LCL', N'6', NULL, N'52.94', N'OOCL', CAST(N'2022-11-19T00:00:00.0000000' AS DateTime2), NULL, N'OOCL SAN FRANCISCO', N'OOCL', N'PANKAJ', NULL, NULL, NULL, CAST(N'2022-11-30T08:27:41.4108686' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'74192b11-c8f2-46c9-ba78-d9ea580313e5', N'435446', N'ABCD9876543', 0, N'CHI', N'IND', N'IND', N'LCL', N'3', NULL, N'49.59', N'SMLINE', CAST(N'2022-11-29T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), N'SADFFDW', N'SMLINE', N'WEB MASTER GOGO', NULL, NULL, NULL, CAST(N'2022-11-26T08:06:12.2410826' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'12345', N'XYZA1900684', 0, N'SHA', N'VAN', N'TOR', N'LCL', N'13', NULL, N'22.2', NULL, CAST(N'2022-12-13T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-22T00:00:00.0000000' AS DateTime2), N'ABCD', N'OOCL', N'DEEPAK', NULL, NULL, NULL, CAST(N'2022-12-20T12:49:54.2501292' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'2346436', N'CMAU2651201', 1, N'NYC', N'CHI', N'NHA', N'COL', N'4', NULL, N'78', NULL, CAST(N'2023-01-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2), N'safsdfsdASDF', N'ASDFSADF', N'SDFADFA', NULL, NULL, NULL, CAST(N'2023-01-09T08:45:28.4372781' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), N'COLLECT', N'COLLECT')
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'95cecc70-4f62-4254-bd31-ef403ab721ae', N'16584656', N'MNN4564211', 1, N'CHI', N'HONGKONG', N'HONGKONG', N'LCL', N'12', NULL, N'23', N'SSA', CAST(N'2022-12-28T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-30T00:00:00.0000000' AS DateTime2), N'CHICAGO', N'eCULINE', N'DEEPAK', NULL, NULL, NULL, CAST(N'2022-12-31T12:05:16.5632166' AS DateTime2), N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), N'COLLECT', N'COLLECT')
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'a6cf97f5-6f50-4fd5-a33c-f567263a29fb', N'47565467', N'XYZA1900670', 0, N'VAN', N'SHA', N'TOR', N'LCL', N'2', NULL, N'234', N'ELON MUSK', CAST(N'2022-12-15T00:00:00.0000000' AS DateTime2), NULL, N'ASDF', N'ELON MUSK', N'RAVINDRA MORE', NULL, NULL, NULL, CAST(N'2022-12-21T10:48:49.8421138' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', CAST(N'2022-12-24T00:00:00.0000000' AS DateTime2), N'PREPAID', N'COLLECT')
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'b01d35bd-3ddc-4e50-a67b-2c76b3ec1d23', N'12345678', N'FANU3193229', 1, N'LEH', N'MTR', N'MTR', N'LCL', N'13', NULL, N'49.76', N'HAPAG LLOYD', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-29T00:00:00.0000000' AS DateTime2), N'OTTAWA EXPRESS', N'HAPAG LLOYD', N'Tina', NULL, NULL, NULL, CAST(N'2022-11-25T08:24:32.7266709' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'b8bdf58f-8fcf-496a-afd2-ba6e94074805', N'435446', N'Ffhfh4354', 1, N'gfdg', N'gdfg', N'gfdg', N'LCL', N'2', NULL, N'45', N'gfdgg', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-29T00:00:00.0000000' AS DateTime2), N'dgdfg', N'gdfg', N'Vaibhav', NULL, NULL, CAST(N'2022-11-16T11:26:46.4056325' AS DateTime2), CAST(N'2022-11-15T17:51:18.1343266' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'456789', N'JLJH5165125', 1, N'JKL', N'NJKJ', N'KMKL', N'LCL', N'10', NULL, N'1000', N'HBHUU', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-02-12T00:00:00.0000000' AS DateTime2), N'TUS-RAL-VAB', N'RAVINDRA MORE', N'AJUN ALA NAI', NULL, NULL, NULL, CAST(N'2022-11-23T10:42:06.8025205' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'd5b559d3-0c7e-4557-9152-fae7591e7d53', N'213213', N'TGBU7914111', 1, N'BKK', N'BKK', N'VAN', N'LCL', N'5', NULL, N'38.822', N'OOCL', CAST(N'2022-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-28T00:00:00.0000000' AS DateTime2), N'XIN BEIJING', N'OOCL', N'PANKAJ', NULL, NULL, NULL, CAST(N'2022-11-30T08:30:09.3724879' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'435446', N'ABCD1234560', 1, N'NHAVA SHEVA', N'CHICAGO', N'NEW YORK', N'LCL', N'4', NULL, N'45', N'ASDF', CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), NULL, N'Titanic', N'MAERSK', N'Rsvi Shet', NULL, NULL, NULL, CAST(N'2022-11-21T15:07:49.4095307' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'23214', N'OOCU7984808', 1, N'XMN', N'VAN', N'TOR', N'LCL', N'7', NULL, N'52.522', N'OOCL', CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), NULL, N'CMA CGM MEDEA', N'OOCL', N'PANKAJ', NULL, NULL, NULL, CAST(N'2022-11-30T08:29:07.4083613' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'e3d52dff-e06f-41a4-a309-20f4344c8d74', N'43544634', N'ABDEF4545665', 1, N'ANR', N'CHI', N'ASDFAS', N'COL', N'2', NULL, N'14.2', N'SM LINE', CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), NULL, N'TITANIC', N'SM LINE', N'DEEPAK SARODE', NULL, NULL, NULL, CAST(N'2022-12-20T14:56:57.4071748' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', CAST(N'2022-12-23T00:00:00.0000000' AS DateTime2), N'PREPAID', N'COLLECT')
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'e43577fd-cfb7-4ab5-bbd9-558395b052b1', N'1232324', N'SMCU1096179 ', 1, N'PUS', N'PRINCE RUPERT', N'TOR', N'LCL', N'13', NULL, N'66.676', N'SM LINE', CAST(N'2022-12-18T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), N'SM KWANGYANG', N'SM LINE', N'Tina', NULL, NULL, NULL, CAST(N'2022-11-28T11:14:17.3305798' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'efd138cc-62bd-4fba-b8f7-5b5613906652', N'56577', N'FGKVVKTIE423424', 1, N'fsdf', N'fsdf', N'sdfsd', N'LCL', N'2', NULL, N'45', N'fsdfdf', CAST(N'2022-11-17T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-30T00:00:00.0000000' AS DateTime2), N'fsdfs', N'fsdf', N'Vaibhav', NULL, NULL, NULL, CAST(N'2022-11-16T20:09:46.3573062' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', NULL, NULL, NULL)
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'57845785', N'DTH4575458', 1, N'GFH', N'BNV', N'FILE', N'LCL', N'10', NULL, N'NHT', N'456', CAST(N'2022-12-29T00:00:00.0000000' AS DateTime2), CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), N'NNGTYHB', N'NBFYTRF', N'DEEPAKS', NULL, NULL, NULL, CAST(N'2022-12-31T11:48:58.3773356' AS DateTime2), N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-31T00:00:00.0000000' AS DateTime2), N'COLLECT', N'COLLECT')
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'21321312312', N'CCLU7035206 ', 1, N'HAM', N'MTR', N'MTR', N'LCL', N'5', NULL, N'31.97', N'OOCL', CAST(N'2022-12-18T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-27T00:00:00.0000000' AS DateTime2), N'QUEBEC EXPRESS', N'OOCL', N'TINA', NULL, NULL, NULL, CAST(N'2022-12-22T10:48:59.8495419' AS DateTime2), N'e6285f51-76ee-4513-8559-6dc41df55a3c', CAST(N'2022-12-31T00:00:00.0000000' AS DateTime2), N'PREPAID', N'COLLECT')
INSERT [dbo].[FileEntry] ([Id], [FileNo], [ContainerNo], [IsEdi], [Pol], [Pod], [FinalDestination], [FileType], [Hblcount], [ActualHblcount], [Cbm], [CoLoader], [SailingDate], [EtaAtPod], [VesselName], [ShippingLine], [ContactPerson], [Status], [AllocatedTo], [AllocatedDate], [CreatedDate], [CreatedBy], [EtaAtFD], [HBLFreightTerm], [MBLFreightTerm]) VALUES (N'fbc450d6-294a-4bb8-a81f-a102ccfd5814', NULL, N'ABCD1900684', 1, N'ANR', N'MTR', N'TOR', N'LCL', N'15', NULL, N'22.2', NULL, CAST(N'2022-12-09T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-21T00:00:00.0000000' AS DateTime2), N'HANJING', N'OOCL', N'SANDEEP', NULL, NULL, NULL, CAST(N'2022-12-20T12:48:56.8834602' AS DateTime2), N'11028791-8228-4a41-8926-0a918ace056c', NULL, NULL, NULL)
GO
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'009012f6-babf-48ef-a4a0-1b2fb777dd87', N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:52.5906797' AS DateTime2), CAST(N'2022-12-27T05:16:52.5906781' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'00ccc7f9-013f-4027-a080-3ad8341cad72', N'42e59015-cd98-423a-91dd-03377d956cf6', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1306737' AS DateTime2), CAST(N'2022-12-22T11:05:17.1306725' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'016bd37c-d333-48ab-98c7-bf58be57e8ea', N'f3c2d4c4-abd4-4e6d-ab1f-bddd7007e271', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:22:57.3097596' AS DateTime2), CAST(N'2023-01-14T11:22:57.3097541' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'023f2de7-eb5a-444a-a912-2e929c9c3e1a', N'346a7407-0e68-43ce-b92e-b8f5bbd92d75', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.6195691' AS DateTime2), CAST(N'2023-01-14T11:33:07.6195665' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'02ca5555-b267-40f9-9e90-c8a1664799e7', N'42e59015-cd98-423a-91dd-03377d956cf6', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.6026466' AS DateTime2), CAST(N'2022-12-22T11:02:18.6026455' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'02d7cefb-f139-4334-a3c4-30cd8dd0c16f', N'8ea7685a-fab4-40bb-aeaa-51df6c214702', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Pending', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4399302' AS DateTime2), CAST(N'2022-11-25T08:41:46.4399291' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'03a0eab5-610e-4ad5-a2cf-6e18adc1a4cd', N'42e59015-cd98-423a-91dd-03377d956cf6', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:22.2411260' AS DateTime2), CAST(N'2022-12-27T05:17:22.2411243' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'03d4ced0-49e8-4fc3-ae2f-76e5f463190c', N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8280872' AS DateTime2), CAST(N'2022-12-27T05:16:31.8280847' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'04d8a3a6-5f51-46ce-812f-532dedff6443', N'f5210eaa-a400-48b4-aec8-12afad3ac891', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:22:57.2496400' AS DateTime2), CAST(N'2023-01-14T11:22:57.2496361' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'054866ec-82d5-4151-9d52-4862476ba9e2', N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8817218' AS DateTime2), CAST(N'2022-12-27T05:16:31.8817191' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'05582272-615b-4812-9964-0e82fa2afa71', N'f5210eaa-a400-48b4-aec8-12afad3ac891', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.4972250' AS DateTime2), CAST(N'2023-01-14T11:53:45.4972214' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'056604df-c3bf-42f1-9760-31759d420db2', N'abd181f8-ecf1-4f2b-84f9-329567ebc922', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Pending', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4754897' AS DateTime2), CAST(N'2022-11-25T08:41:46.4754882' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0615180f-d318-4f98-bef9-3057f87aff90', N'8968b205-50de-435a-a807-b48f385afd55', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:17.6522984' AS DateTime2), CAST(N'2022-11-29T10:46:47.4199047' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'063a6932-3241-48b1-a3fe-22e3a24d430d', N'1357c211-7e66-41f9-a8a9-7097a8dbd03b', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2033657' AS DateTime2), CAST(N'2023-01-14T11:56:27.2033607' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'09f6b373-1eb4-41b8-9b58-73c92cbecaed', N'20f3880d-2b85-47b7-b878-260f81e34734', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Pending', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4168892' AS DateTime2), CAST(N'2022-11-25T08:41:46.4168877' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0b396333-75ca-40ad-ad03-81a812a57600', N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8916985' AS DateTime2), CAST(N'2022-12-27T05:16:31.8916944' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0b40831b-d707-449b-9b6d-adb77f51a17f', N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Query', N'xcvzcvzcvzcv', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T11:01:32.6324225' AS DateTime2), CAST(N'2023-01-14T11:22:04.6033626' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0bf9b3e7-90c8-4767-876f-65e1de75cb5a', N'abd181f8-ecf1-4f2b-84f9-329567ebc922', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:58:12.6565880' AS DateTime2), CAST(N'2023-01-14T11:58:12.6565851' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0c973bf1-a62d-47f1-9467-8e329803f40b', N'f5210eaa-a400-48b4-aec8-12afad3ac891', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:22:57.2450971' AS DateTime2), CAST(N'2023-01-14T11:22:57.2450930' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0d3f1955-4443-4cf6-914c-d7277235c8fb', N'9d808f07-d470-4a36-8dc6-13510463879f', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:14.3925780' AS DateTime2), CAST(N'2022-12-21T10:44:34.3730714' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0dc2f961-0dc7-45ed-9c38-2ade9ba781fd', N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.0971384' AS DateTime2), CAST(N'2022-12-22T10:55:12.0971361' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0fc1f9d4-16e1-42fe-911e-ebe1d5b6ae2a', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:02:22.3995794' AS DateTime2), CAST(N'2023-01-14T12:02:22.3995758' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'0ffdc5d8-6023-473f-9a0c-5299cdf02cdb', N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.8637880' AS DateTime2), CAST(N'2022-12-22T11:05:00.8637862' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'101cc1c0-7211-4f26-87ee-0bb301518d3f', N'0ff32e28-8664-4683-b1c9-be04deade276', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0253291' AS DateTime2), CAST(N'2022-12-20T13:08:57.0253108' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'108bbbeb-56b4-4e93-972a-6ae0892b8ddb', N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8824257' AS DateTime2), CAST(N'2022-12-27T05:16:31.8824242' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'10f1de39-5256-4029-9072-4bc5cc690785', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6775107' AS DateTime2), CAST(N'2023-01-14T11:47:24.6775075' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'117c69e6-51c1-4532-97ee-76ca213bebc5', N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8762348' AS DateTime2), CAST(N'2022-12-27T05:16:31.8762318' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'122c2d9f-ee62-45c9-ae2f-d659da65d3a7', N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', N'asdfsad', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:28:51.4543078' AS DateTime2), CAST(N'2022-11-22T11:28:51.4085158' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'12395a64-4de6-4f1f-aa9a-bc99c50dc1be', N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.3874486' AS DateTime2), CAST(N'2022-11-25T08:41:46.4257801' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'14082430-216c-409e-a771-393b733ba94d', N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6438032' AS DateTime2), CAST(N'2022-12-20T13:10:42.6438016' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'14c740ed-52de-4e43-8263-84dda928392a', N'0ff32e28-8664-4683-b1c9-be04deade276', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.3529832' AS DateTime2), CAST(N'2022-12-20T13:01:27.3529748' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'16934f76-e13a-46f8-b5e9-1e761d5eb7cf', N'5f1310a6-8562-4fcb-8c94-b71c99e67935', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.0503677' AS DateTime2), CAST(N'2023-01-14T11:35:53.0503646' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'16f84650-eb65-4418-a05a-f409ac74d6a4', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'95b02d5d-e582-4654-b607-f95cbe573b66', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:39.1806118' AS DateTime2), CAST(N'2023-01-10T03:06:40.1966515' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'189b4861-4937-4121-a2e8-c5bdf18865e9', N'e6d30271-bf1a-498c-9e14-d0cb456392fc', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed With Query', N'dfsdfafad', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T12:15:05.9935418' AS DateTime2), CAST(N'2022-11-22T12:15:05.9935334' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'19045a52-c632-4dbd-8793-52fa1783b4bc', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:02:22.4696688' AS DateTime2), CAST(N'2023-01-14T12:02:22.4696656' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'1aaaa474-f81f-45f5-bd4e-c8f40b34dafc', N'0ff32e28-8664-4683-b1c9-be04deade276', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:11:36.1899030' AS DateTime2), CAST(N'2022-12-22T11:07:01.7929595' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'1b959d38-7c28-46f2-9947-d77c7e0043d8', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:38.0210093' AS DateTime2), CAST(N'2023-01-10T03:06:39.2392481' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'1be9ee4b-1b35-4713-868f-51dc2c7feaa4', N'0e17d1f0-b5ee-47d5-abab-3939c59b2f19', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:16:44.4581049' AS DateTime2), CAST(N'2022-11-28T11:16:44.4581021' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'1c397925-394c-4d7c-96c1-12a9a9eb9503', N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.0977118' AS DateTime2), CAST(N'2022-12-22T10:55:12.0977104' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'1fa1c3a0-7ef4-4b3b-a445-9a164abdf091', N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:11:36.2205500' AS DateTime2), CAST(N'2022-12-22T11:07:01.8207807' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'210920f6-8966-41f3-85d4-991f69c8b905', N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4260740' AS DateTime2), CAST(N'2022-12-22T10:54:17.4260726' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'213fa942-0f3a-4f38-a1a7-d270a258c6d9', N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.0060341' AS DateTime2), CAST(N'2023-01-14T11:35:53.0060316' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'215aa720-905e-49f4-8328-c2948bc7ce09', N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:11.9756494' AS DateTime2), CAST(N'2022-12-22T10:55:11.9756463' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'21c52495-0ecd-4cda-afef-f08ce98a18f8', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:39.7777332' AS DateTime2), CAST(N'2023-01-10T03:06:40.5773998' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'22605583-743f-4479-8b3e-9976f9f7c3a1', N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:11.9865060' AS DateTime2), CAST(N'2022-12-22T10:55:11.9865034' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'235d309c-6728-4d0a-8a53-3f7bfa502f30', N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:11.9806294' AS DateTime2), CAST(N'2022-12-22T10:55:11.9806269' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2484061b-91f2-4c69-b306-15b53d9c207b', N'c7becde5-81b6-49f7-84a0-5a41803fd38a', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:03.0434167' AS DateTime2), CAST(N'2022-12-27T05:17:03.0434128' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2508de76-965d-4c57-9774-affda27278ce', N'9a9fe3b4-9364-4542-b740-1df415ada745', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:03:58.9904686' AS DateTime2), CAST(N'2023-01-14T12:03:58.9904656' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'26253c1a-d82c-4fe7-8378-2ec9cda1182c', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.7259567' AS DateTime2), CAST(N'2023-01-14T11:47:24.7259535' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'26e5363b-9fe8-4a29-b2c6-4b280c379314', N'802c1e38-e111-4b8b-a8ec-f24db90af3f1', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T12:14:59.3912060' AS DateTime2), CAST(N'2022-11-22T12:14:59.3911992' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2820839e-3826-435b-8436-0f7cfab3c8d8', N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1671523' AS DateTime2), CAST(N'2022-12-22T11:05:17.1671506' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2865a15f-8dcb-4a06-9c29-b6b23d195796', N'9b4723e0-a875-44eb-be35-a5633f498617', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.1110292' AS DateTime2), CAST(N'2022-12-20T13:08:57.1110273' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'28a85350-9680-4cf6-9ab7-1dff0377a966', N'802c1e38-e111-4b8b-a8ec-f24db90af3f1', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', N'fsdfds', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T14:37:28.9385550' AS DateTime2), CAST(N'2022-11-16T14:37:28.9384520' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2a9b6ed8-d3ce-444c-99d0-7d5309bd74fc', N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.4785257' AS DateTime2), CAST(N'2022-12-22T11:03:32.4785247' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2c337983-bb34-438d-906d-7677dfc99e89', N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:11.5236306' AS DateTime2), CAST(N'2022-12-27T05:17:11.5236276' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2f4eb190-4af4-4a80-83f9-56161cf8ad20', N'9a9fe3b4-9364-4542-b740-1df415ada745', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.1457318' AS DateTime2), CAST(N'2023-01-14T11:35:53.1457291' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2f50699a-b2f6-4470-926c-4cb5bbdff113', N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4129495' AS DateTime2), CAST(N'2022-12-22T10:54:17.4129476' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2f53a20a-3ffc-47f9-b625-c0ded2d49aca', N'8ea7685a-fab4-40bb-aeaa-51df6c214702', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4407451' AS DateTime2), CAST(N'2022-11-25T08:41:46.4407440' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2f73c073-a8a2-45e7-b79c-2e96d7e077d9', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6868510' AS DateTime2), CAST(N'2023-01-14T11:47:24.6868482' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'2f95579c-08b0-4360-a051-39a92e9fd186', N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1285450' AS DateTime2), CAST(N'2022-12-22T10:55:12.1285430' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3009d458-a892-4b77-a71d-089167123bc8', N'802c1e38-e111-4b8b-a8ec-f24db90af3f1', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T12:14:59.3829139' AS DateTime2), CAST(N'2022-11-22T12:14:59.3829088' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3057e28a-37ab-4a54-a51b-f63b511be609', N'346a7407-0e68-43ce-b92e-b8f5bbd92d75', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2492064' AS DateTime2), CAST(N'2023-01-14T11:56:27.2492025' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'314df6c5-112b-4137-9b43-cd35292ce362', N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:03:58.9280371' AS DateTime2), CAST(N'2023-01-14T12:03:58.9280333' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'31940036-547a-403c-a404-eb92e513cfba', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:02:22.4649962' AS DateTime2), CAST(N'2023-01-14T12:02:22.4649931' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'32ce9457-4a41-413f-b07e-935f13581c36', N'0ff32e28-8664-4683-b1c9-be04deade276', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0265055' AS DateTime2), CAST(N'2022-12-20T13:08:57.0265009' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'34079b77-fbb7-452c-b0f9-7617e6bbb520', N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1277388' AS DateTime2), CAST(N'2022-12-22T10:55:12.1277368' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3430e8bf-e2f2-46e4-b776-15bb259b1e48', N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:52.5866579' AS DateTime2), CAST(N'2022-12-27T05:16:52.5866561' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'34ea06de-8c4b-4f67-b38a-dfa2ce9aec0e', N'ffa03023-1d31-48ae-b2d1-4086d0826b01', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:04:09.5138823' AS DateTime2), CAST(N'2022-12-22T11:04:09.5138817' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'355e6c9e-4369-4c4d-acfd-ea3e06f8de4e', N'1357c211-7e66-41f9-a8a9-7097a8dbd03b', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2079971' AS DateTime2), CAST(N'2023-01-14T11:56:27.2079944' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'355fff03-923a-44a3-9761-42375499f35d', N'0e17d1f0-b5ee-47d5-abab-3939c59b2f19', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-28T11:20:12.0221143' AS DateTime2), CAST(N'2022-11-28T11:20:28.4172269' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3579ba93-2f6b-4267-a531-31fc18ce4e8a', N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1679944' AS DateTime2), CAST(N'2022-12-22T11:05:17.1679930' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'36203003-b01e-4400-aab7-1c8e60e12dd5', N'31fe8c1d-f210-4a67-9bac-afa32d5a51c1', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:16:44.4123529' AS DateTime2), CAST(N'2022-11-28T11:16:44.4123505' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'36383629-7fc0-4228-8f14-b234b43daed3', N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:52.5861386' AS DateTime2), CAST(N'2022-12-27T05:16:52.5861362' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'36a2036e-73e0-4043-b045-95ac070c8ce1', N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0948175' AS DateTime2), CAST(N'2022-12-20T13:08:57.0948151' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'38b3c2dd-c50d-4624-81b8-ac2861ae9e71', N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1039859' AS DateTime2), CAST(N'2022-12-22T10:55:12.1039841' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'399a8b33-66a5-4ed4-a710-0e9456e3b5ad', N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6428850' AS DateTime2), CAST(N'2022-12-20T13:10:42.6428830' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'39c89e0f-3147-4162-b1c3-8cdadb6ff09f', N'9d808f07-d470-4a36-8dc6-13510463879f', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.8404763' AS DateTime2), CAST(N'2022-12-22T11:05:00.8404744' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3a9b8f2c-7b09-449f-98b4-006b2787a9c4', N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.1233427' AS DateTime2), CAST(N'2023-01-14T11:35:53.1233399' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3aa89f9d-f63a-45f2-aacb-7c57ae0f6b05', N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:03:59.0254212' AS DateTime2), CAST(N'2023-01-14T12:03:59.0254185' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3ad5639a-ec40-4fef-b6fa-a4be5866cfc8', N'9b4723e0-a875-44eb-be35-a5633f498617', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:11:36.2247212' AS DateTime2), CAST(N'2022-12-22T11:07:01.8235667' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3b572fa1-ba63-4e4a-ae78-ba2c404054c3', N'0e17d1f0-b5ee-47d5-abab-3939c59b2f19', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:16:44.4571685' AS DateTime2), CAST(N'2022-11-28T11:16:44.4571662' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3b6b70e3-5791-4bf1-b7a8-eb44795fd746', N'9b4723e0-a875-44eb-be35-a5633f498617', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4728740' AS DateTime2), CAST(N'2022-12-20T13:01:27.4728720' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3b8f8435-1757-4d8d-a613-02845da94cf0', N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.4896180' AS DateTime2), CAST(N'2022-12-22T11:03:32.4896165' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3c0e62a1-531e-4cf7-9978-6685ea329f3a', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6807492' AS DateTime2), CAST(N'2023-01-14T11:47:24.6807461' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3c2b51c8-9b68-4f3c-a961-e3a9e22166cc', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:37.9936695' AS DateTime2), CAST(N'2023-01-10T03:06:39.1813228' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3c3b95cd-d7c1-48f0-b871-327d283dfbea', N'8ea7685a-fab4-40bb-aeaa-51df6c214702', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:58:12.6304301' AS DateTime2), CAST(N'2023-01-14T11:58:12.6304258' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3cbd311b-c69e-43cf-b4e6-db24c76d98dd', N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:58:12.6759138' AS DateTime2), CAST(N'2023-01-14T11:58:12.6759113' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3d2849ad-44c7-4645-8ed1-03a6424a8c48', N'ffa03023-1d31-48ae-b2d1-4086d0826b01', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:03.0574206' AS DateTime2), CAST(N'2022-12-27T05:17:03.0574180' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3db15657-f0f2-43f0-875b-68311c7afb68', N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:22.2710725' AS DateTime2), CAST(N'2022-12-27T05:17:22.2710708' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3de42274-863d-4574-a07d-aac30945ef39', N'9a9fe3b4-9364-4542-b740-1df415ada745', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.1494403' AS DateTime2), CAST(N'2023-01-14T11:35:53.1494373' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3f208173-f21c-4fc6-96c1-e3b99980934a', N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8162746' AS DateTime2), CAST(N'2022-12-27T05:16:31.8160972' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3fa4d834-0e63-48f7-afbe-f60d7b85ce05', N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Query', N'HBL missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4003487' AS DateTime2), CAST(N'2022-12-22T10:54:17.4003473' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'3fb7be4a-03ec-4950-aec7-c805b9a76dfa', N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:11.5326209' AS DateTime2), CAST(N'2022-12-27T05:17:11.5326182' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'40294d58-2349-47c8-8e76-ba1b5510a5b6', N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.3626058' AS DateTime2), CAST(N'2022-12-22T10:54:17.3626012' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'43151969-5402-4726-89bb-45fad60ecfa9', N'38ec7849-c89b-4087-9ed0-00b32360507e', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.8723658' AS DateTime2), CAST(N'2023-01-14T11:33:07.8723621' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'43d457df-9aa3-4299-a9c4-e998348622ec', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6997868' AS DateTime2), CAST(N'2023-01-14T11:47:24.6997840' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4487ed51-7075-439d-846a-277e8e79c901', N'e6d30271-bf1a-498c-9e14-d0cb456392fc', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T12:15:05.9876458' AS DateTime2), CAST(N'2022-11-22T12:15:05.9876403' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4515a58d-af73-4a19-9785-b2a9637fa9bb', N'f5210eaa-a400-48b4-aec8-12afad3ac891', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.4940347' AS DateTime2), CAST(N'2023-01-14T11:53:45.4940317' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'46d61aa4-42df-4a48-a47c-2237af8b0238', N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:03:58.9329924' AS DateTime2), CAST(N'2023-01-14T12:03:58.9329874' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'474051bc-0134-419a-a4b0-4ff2fb71a69d', N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.5967825' AS DateTime2), CAST(N'2022-12-22T11:02:18.5967814' AS DateTime2), NULL)
GO
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'49a7c4f2-2576-4da8-b777-ee2dc3b6b747', N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:11:36.2122637' AS DateTime2), CAST(N'2022-12-22T11:07:01.8173866' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4ab50e3a-1ab0-4961-a89d-84277c0ee872', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:38.5506804' AS DateTime2), CAST(N'2023-01-10T03:06:39.7154543' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4b258cd5-1c25-4a0a-a581-e5baf994eb4c', N'5f1310a6-8562-4fcb-8c94-b71c99e67935', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:03:58.9605480' AS DateTime2), CAST(N'2023-01-14T12:03:58.9605453' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4b73200d-4873-4017-acb4-f4e33238f2e4', N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1367200' AS DateTime2), CAST(N'2022-12-22T11:05:17.1367188' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4c619d01-2958-46fc-bbf2-9b00fd050dfc', N'f3c2d4c4-abd4-4e6d-ab1f-bddd7007e271', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:22:57.3120174' AS DateTime2), CAST(N'2023-01-14T11:22:57.3120137' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4c8d7111-15a2-42a8-a83d-81ed01e99046', N'8ea7685a-fab4-40bb-aeaa-51df6c214702', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4395081' AS DateTime2), CAST(N'2022-11-25T08:41:46.4395069' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4cebdf9c-0d94-4907-80da-5481b1b4e131', N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.4791425' AS DateTime2), CAST(N'2022-12-22T11:03:32.4791416' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4cff7f65-561a-42c0-bda0-7221dcc8552d', N'1357c211-7e66-41f9-a8a9-7097a8dbd03b', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.8435712' AS DateTime2), CAST(N'2023-01-14T11:33:07.8435683' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4d628e7e-079c-44b1-afac-e7d09aad9c95', N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.5389708' AS DateTime2), CAST(N'2022-12-22T11:05:00.5389696' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4dc3d8b3-a775-4455-8b30-05ed4ea6646c', N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.3880860' AS DateTime2), CAST(N'2022-11-25T08:41:46.4261895' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4e9bc532-53d8-418a-b9c0-3b2a2c270953', N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:13.9574450' AS DateTime2), CAST(N'2022-12-21T10:44:34.0976438' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'4ed9aab3-f6f0-49bd-ab6e-7f5010c6ff1c', N'80619020-e618-426a-8775-1a1714cdc151', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6026181' AS DateTime2), CAST(N'2022-12-20T13:10:42.6026168' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'51ce20fc-d6f8-4534-8d06-d1ff2c5e8bc3', N'f5210eaa-a400-48b4-aec8-12afad3ac891', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.5016327' AS DateTime2), CAST(N'2023-01-14T11:53:45.5016298' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'52db6a1f-7788-4035-b2c3-d70fa29ff035', N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Query', N'HBL missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1082916' AS DateTime2), CAST(N'2022-12-22T10:55:12.1082897' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'52e90e99-5b16-4c77-b6f1-021443659afd', N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1266065' AS DateTime2), CAST(N'2022-12-22T10:55:12.1266042' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'534d85ce-6500-43cc-9fbd-0476198d6f59', N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.3361700' AS DateTime2), CAST(N'2022-12-22T10:54:17.3361647' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5495d160-ddc8-468e-966d-7edfe2a8a7d9', N'80619020-e618-426a-8775-1a1714cdc151', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:07:59.5451973' AS DateTime2), CAST(N'2022-12-23T12:06:04.2451625' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5501d2cb-007e-47ad-9e39-5862c3b9cd89', N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:22.2660494' AS DateTime2), CAST(N'2022-12-27T05:17:22.2660477' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'556afe84-09ee-486e-b021-6f632916a787', N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1251631' AS DateTime2), CAST(N'2022-12-22T10:55:12.1251612' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5616ac6d-d75e-4a8c-949f-bdb6cb3949a9', N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.5396596' AS DateTime2), CAST(N'2022-12-22T11:05:00.5396588' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'563e4374-ef0c-4930-9e7b-c518d0fbbbaa', N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.5768940' AS DateTime2), CAST(N'2022-12-22T11:02:18.5768917' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'56bbf09e-db38-4678-80b5-7c7d0b97cb4a', N'9d808f07-d470-4a36-8dc6-13510463879f', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.8355840' AS DateTime2), CAST(N'2022-12-22T11:05:00.8355822' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'57428b9d-b556-4fc6-b990-c3fb6a48fb76', N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1031431' AS DateTime2), CAST(N'2022-12-22T10:55:12.1031405' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5a839012-3164-4346-a966-08b2e1280d5f', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'95b02d5d-e582-4654-b607-f95cbe573b66', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:39.8187165' AS DateTime2), CAST(N'2023-01-10T03:06:40.6022946' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5b03f19f-703f-48b7-b5b8-a18331d4fe59', N'ffa03023-1d31-48ae-b2d1-4086d0826b01', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:03.0565711' AS DateTime2), CAST(N'2022-12-27T05:17:03.0565678' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5baff8c7-f124-4b57-a48e-6b78041fa88b', N'afe9760d-8442-43cc-9c0b-bab474787050', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Query', N'TESTING OF HBL COMMENT', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:13.3890408' AS DateTime2), CAST(N'2022-11-29T10:46:48.5635078' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5d55b175-a8da-49a6-b2cc-d41b756ae7ce', N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.1203798' AS DateTime2), CAST(N'2023-01-14T11:35:53.1203770' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5dfad220-d495-4419-941e-8b7d2df1fe3e', N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1663320' AS DateTime2), CAST(N'2022-12-22T11:05:17.1663305' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5e174990-2756-4f4d-b60c-811eadc9e11f', N'afe9760d-8442-43cc-9c0b-bab474787050', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:13.3768348' AS DateTime2), CAST(N'2022-11-29T10:46:48.5572890' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5f526e6b-3656-4a13-b88b-29c46960f4a3', N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:11.9829159' AS DateTime2), CAST(N'2022-12-22T10:55:11.9829135' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5f8da56d-3202-4b45-a67b-221da87d5fcd', N'0e17d1f0-b5ee-47d5-abab-3939c59b2f19', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-28T11:20:12.0239307' AS DateTime2), CAST(N'2022-11-28T11:20:28.4190972' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'5fe28d13-2892-47b0-8439-5039bcacc54f', N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1095489' AS DateTime2), CAST(N'2022-12-22T10:55:12.1095480' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'601f81c9-434a-40a7-b88b-a1295cea4add', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'95b02d5d-e582-4654-b607-f95cbe573b66', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:38.5604319' AS DateTime2), CAST(N'2023-01-10T03:06:39.8219868' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'61a2af4b-7244-41c6-abc2-c12eb66b5b09', N'38ec7849-c89b-4087-9ed0-00b32360507e', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2784178' AS DateTime2), CAST(N'2023-01-14T11:56:27.2784148' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'64a72918-600e-4736-85b6-6e6681fa7a66', N'5f1310a6-8562-4fcb-8c94-b71c99e67935', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.0534035' AS DateTime2), CAST(N'2023-01-14T11:35:53.0534003' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'65d5e13a-f6f1-46a6-94d1-ba4f5b4e88ba', N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:29:00.7421301' AS DateTime2), CAST(N'2022-12-21T10:44:36.1984607' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'66c75dce-55c3-4c79-9133-b482a510f714', N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:22.2723070' AS DateTime2), CAST(N'2022-12-27T05:17:22.2723052' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6801655a-0bf5-4895-b716-1100f6711ac6', N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.1276986' AS DateTime2), CAST(N'2023-01-14T11:35:53.1276957' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'68b541c8-7c29-4ddd-91bd-1da9f28b4aeb', N'80619020-e618-426a-8775-1a1714cdc151', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:07:59.5430584' AS DateTime2), CAST(N'2022-12-23T12:06:04.2425570' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6975bfe7-4f50-4ff9-ba3f-9eb1c66c53ec', N'0ff32e28-8664-4683-b1c9-be04deade276', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0280966' AS DateTime2), CAST(N'2022-12-20T13:08:57.0280937' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6a0798ce-8d2b-409b-b945-24058587f706', N'ffa03023-1d31-48ae-b2d1-4086d0826b01', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:04:09.5121021' AS DateTime2), CAST(N'2022-12-22T11:04:09.5121005' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6b0bece3-db51-4d3c-9b29-1466022fa077', N'20f3880d-2b85-47b7-b878-260f81e34734', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:58:12.5979199' AS DateTime2), CAST(N'2023-01-14T11:58:12.5979149' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6cebfacd-7082-4ee6-81f6-e283fa3dd2cb', N'346a7407-0e68-43ce-b92e-b8f5bbd92d75', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.5800200' AS DateTime2), CAST(N'2023-01-14T11:33:07.5798215' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6d260e08-6a94-40cb-a1b0-67ecd9205112', N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-25T08:28:37.2604327' AS DateTime2), CAST(N'2022-11-25T08:28:37.2604275' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6e7e4b80-39c4-4887-b5dc-11ea62922dec', N'c7becde5-81b6-49f7-84a0-5a41803fd38a', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-12-20T13:05:39.4336841' AS DateTime2), CAST(N'2022-12-20T13:05:39.4336811' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6eca847e-f131-4a84-9461-bfd64bf24e22', N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0931092' AS DateTime2), CAST(N'2022-12-20T13:08:57.0931062' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'6ed0bdd7-3ec3-4158-85f3-d73b0a7922f0', N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.5371792' AS DateTime2), CAST(N'2022-12-22T11:05:00.5371749' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'701e17e6-a0f7-4115-8a00-af55107333bf', N'70349a6a-7c78-4f2c-9382-dd75bf9cb132', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:16.6793175' AS DateTime2), CAST(N'2022-11-29T10:46:44.6072294' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'70b66c69-3dc3-429a-9d15-9fa6249c63aa', N'42e59015-cd98-423a-91dd-03377d956cf6', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.6018823' AS DateTime2), CAST(N'2022-12-22T11:02:18.6018812' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'71d1835a-5406-45b3-92a1-30d506c58e73', N'0ff32e28-8664-4683-b1c9-be04deade276', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0273049' AS DateTime2), CAST(N'2022-12-20T13:08:57.0273023' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'71e3b050-2745-4734-b3b3-e75f4b2d5a5c', N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4677762' AS DateTime2), CAST(N'2022-12-20T13:01:27.4677741' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'72181cae-bea1-4a1d-a4c0-aae0c34d5162', N'70349a6a-7c78-4f2c-9382-dd75bf9cb132', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed With Query', N'TESTING', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:16.6843257' AS DateTime2), CAST(N'2022-11-29T10:46:44.6127116' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'724f63aa-a538-4605-a79c-a4487f27d209', N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8872220' AS DateTime2), CAST(N'2022-12-27T05:16:31.8872200' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'75d60e29-afa9-447e-b2d2-85f959bcd0bf', N'38ec7849-c89b-4087-9ed0-00b32360507e', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2881544' AS DateTime2), CAST(N'2023-01-14T11:56:27.2881514' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'763ff825-ebf0-4661-b41c-64ebcdcecba6', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6091194' AS DateTime2), CAST(N'2023-01-14T11:47:24.6091151' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'765ff8c7-607c-412c-b2be-b295dfd4b472', N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-06T14:48:10.8969213' AS DateTime2), CAST(N'2022-12-06T14:48:10.8969161' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'778f3f9e-5271-45e7-8058-cdd43325ba82', N'5f1310a6-8562-4fcb-8c94-b71c99e67935', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.0566970' AS DateTime2), CAST(N'2023-01-14T11:35:53.0566940' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'77b93974-dd42-4780-84a4-b52a77559907', N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6418628' AS DateTime2), CAST(N'2022-12-20T13:10:42.6418612' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'782daf6e-6e02-41c2-b2ef-343598abb5ae', N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:29:36.3060163' AS DateTime2), CAST(N'2022-12-21T10:44:36.2091448' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7958c17d-1dde-43c3-9aa8-dd0f8f78f623', N'abd181f8-ecf1-4f2b-84f9-329567ebc922', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4763519' AS DateTime2), CAST(N'2022-11-25T08:41:46.4763510' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7aa6cbf2-bfdf-45ac-a089-4f7fbef2d175', N'9b4723e0-a875-44eb-be35-a5633f498617', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.1102932' AS DateTime2), CAST(N'2022-12-20T13:08:57.1102909' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7b8bd42b-c76f-45d2-bd3b-454209a37c26', N'80619020-e618-426a-8775-1a1714cdc151', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6008562' AS DateTime2), CAST(N'2022-12-20T13:10:42.6008544' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7bad396f-7b60-493f-8a3e-3e2912b10856', N'9a9fe3b4-9364-4542-b740-1df415ada745', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:03:58.9952647' AS DateTime2), CAST(N'2023-01-14T12:03:58.9952617' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7c3318f0-52e3-4efe-a3b6-8fb764e8f8b5', N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Query', N'HBL missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4010154' AS DateTime2), CAST(N'2022-12-22T10:54:17.4010143' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7c5009c9-94b5-48de-a3d0-22aad91c7953', N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.4908540' AS DateTime2), CAST(N'2022-12-22T11:03:32.4908528' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7da1d8d1-7598-43ea-b5f6-d58ddd6c67f4', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:39.7162285' AS DateTime2), CAST(N'2023-01-10T03:06:40.5284870' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7dd279d6-efd2-4be2-abbb-327f6150626b', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'95b02d5d-e582-4654-b607-f95cbe573b66', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:38.0222316' AS DateTime2), CAST(N'2023-01-10T03:06:39.3478884' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'7f3fd112-9842-46d4-b585-255b135e91d7', N'38ec7849-c89b-4087-9ed0-00b32360507e', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.8689748' AS DateTime2), CAST(N'2023-01-14T11:33:07.8689714' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'805aa3cc-4371-44b9-b132-bcb2802f0931', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:38.5559134' AS DateTime2), CAST(N'2023-01-10T03:06:39.7769297' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'826089e5-54f0-4821-aeb5-1ccfcf847e59', N'ffa03023-1d31-48ae-b2d1-4086d0826b01', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:04:09.5133138' AS DateTime2), CAST(N'2022-12-22T11:04:09.5133132' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'82fef26a-d87d-4561-aeb5-41a1139eea25', N'38ec7849-c89b-4087-9ed0-00b32360507e', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2746010' AS DateTime2), CAST(N'2023-01-14T11:56:27.2745982' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'84402113-9ce1-48c9-adab-0941b5a3340b', N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.0991444' AS DateTime2), CAST(N'2022-12-22T10:55:12.0991421' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'844fd36b-2fe7-4346-8ed0-9296ec3b80ea', N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:11.5319130' AS DateTime2), CAST(N'2022-12-27T05:17:11.5319102' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'8458707d-151f-4af4-adc6-bc81b1e67e3e', N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Query', N'mail id missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4684229' AS DateTime2), CAST(N'2022-12-20T13:01:27.4684212' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'85dda5d9-33b4-464b-9545-18172d30e4a0', N'8968b205-50de-435a-a807-b48f385afd55', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:17.6565177' AS DateTime2), CAST(N'2022-11-29T10:46:47.4250470' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'85f36a44-3415-4ae2-ab4d-3b6ce3628c25', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:38.9884895' AS DateTime2), CAST(N'2023-01-10T03:06:40.0983642' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'8646b859-e00b-4407-a479-e61a53d90872', N'8ea7685a-fab4-40bb-aeaa-51df6c214702', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4403498' AS DateTime2), CAST(N'2022-11-25T08:41:46.4403487' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'87236232-f037-4837-82e8-78a70bbf908c', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:02:22.2348692' AS DateTime2), CAST(N'2023-01-14T12:02:22.2348663' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'8742eeb6-1528-4e94-b0b9-afd1dd077c74', N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.4796697' AS DateTime2), CAST(N'2022-12-22T11:03:32.4796689' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'882f9ccf-a223-4f56-88be-4b4d36226cc0', N'9a9fe3b4-9364-4542-b740-1df415ada745', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.1422487' AS DateTime2), CAST(N'2023-01-14T11:35:53.1422459' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'888ce1dd-5fd9-447a-a448-bb9d638d8dec', N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:11.5228109' AS DateTime2), CAST(N'2022-12-27T05:17:11.5228080' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'8918278e-7209-4ce8-96fb-46a1a11e130f', N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:03:59.0214027' AS DateTime2), CAST(N'2023-01-14T12:03:59.0213994' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'8955407f-b2dd-4fc0-ab39-b5415bb9b123', N'9b4723e0-a875-44eb-be35-a5633f498617', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Query', N'mail id missing', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4721604' AS DateTime2), CAST(N'2022-12-20T13:01:27.4721583' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'89c28767-5d33-44fb-aee4-87e7590a6a0a', N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.0102750' AS DateTime2), CAST(N'2023-01-14T11:35:53.0102720' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'8e37b8e3-d886-4e31-ac3b-181661d1b41a', N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Pending', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.1003014' AS DateTime2), CAST(N'2022-12-20T13:08:57.1002994' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'8fa53e11-7fd6-4178-b835-11c4f6b56a4c', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.7216891' AS DateTime2), CAST(N'2023-01-14T11:47:24.7216864' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'90ede948-3ed0-43e6-b223-661f49515850', N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.5382124' AS DateTime2), CAST(N'2022-12-22T11:05:00.5382112' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'915634d0-4323-4301-af65-ab09dfc1c533', N'1357c211-7e66-41f9-a8a9-7097a8dbd03b', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2120218' AS DateTime2), CAST(N'2023-01-14T11:56:27.2120188' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'91bb3249-1091-4acc-89e7-2ad25fbc003e', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.7063043' AS DateTime2), CAST(N'2023-01-14T11:47:24.7063006' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'91ceb727-0ee6-4154-934d-518411fb254e', N'20f3880d-2b85-47b7-b878-260f81e34734', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4173363' AS DateTime2), CAST(N'2022-11-25T08:41:46.4173351' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'92ea7c70-34a3-4b5a-8839-ea0cd366f32d', N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:52.9981952' AS DateTime2), CAST(N'2023-01-14T11:35:52.9981913' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'93286423-48d4-4cae-b933-f9644f497326', N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.8681961' AS DateTime2), CAST(N'2022-12-22T11:05:00.8681943' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'93825a8d-dbc5-4403-8700-cbecbda78bfc', N'1357c211-7e66-41f9-a8a9-7097a8dbd03b', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2194600' AS DateTime2), CAST(N'2023-01-14T11:56:27.2194570' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'94a6e3f6-7215-496b-9d3f-3b23886d95a7', N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.1171468' AS DateTime2), CAST(N'2023-01-14T11:35:53.1171440' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'94b0be2d-df1f-4360-9e59-233c53986534', N'802c1e38-e111-4b8b-a8ec-f24db90af3f1', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T12:14:59.3239481' AS DateTime2), CAST(N'2022-11-22T12:14:59.3237660' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'95965c75-e442-4a2f-aa32-9ed99388c36d', N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-25T08:28:37.2611180' AS DateTime2), CAST(N'2022-11-25T08:28:37.2611139' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'97dac9ed-5bb7-4be9-b146-f1b56d0ec3ea', N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4633856' AS DateTime2), CAST(N'2022-12-20T13:01:27.4633823' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'985693bb-b26c-4021-b45a-d907d54ec795', N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4592960' AS DateTime2), CAST(N'2022-12-20T13:01:27.4592931' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9876c2a1-e675-4321-9396-12545fb1a63f', N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Query', N'adfsdafsadfdfa', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T11:01:32.7769188' AS DateTime2), CAST(N'2023-01-14T11:22:03.6420897' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9986ee57-2d5c-45e6-a9ee-32fa109616c2', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.7288928' AS DateTime2), CAST(N'2023-01-14T11:47:24.7288897' AS DateTime2), NULL)
GO
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9ab998be-e3d4-403f-a50a-df6d6dc73bc7', N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0996278' AS DateTime2), CAST(N'2022-12-20T13:08:57.0996256' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9aeabdc1-1182-42a9-9a64-7169c81597b3', N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8865236' AS DateTime2), CAST(N'2022-12-27T05:16:31.8865208' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9b08b17f-a417-4b2c-a3f5-f4da37ff6c74', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6202417' AS DateTime2), CAST(N'2023-01-14T11:47:24.6202386' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9b7aff6f-2475-4a5b-b239-63f886019a07', N'e6d30271-bf1a-498c-9e14-d0cb456392fc', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Query', N'asdfaf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T12:15:06.0055538' AS DateTime2), CAST(N'2022-11-22T12:15:06.0055488' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9c0ab790-95aa-4a2a-b9c6-ddc2209e32dd', N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.5975678' AS DateTime2), CAST(N'2022-12-22T11:02:18.5975665' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9f652368-d145-435d-add9-e4c5111c4682', N'28fb3152-fa74-4bc7-9a63-a9343b4f9bc7', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', N'fsdf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T16:46:42.1335255' AS DateTime2), CAST(N'2022-11-16T16:46:42.1335223' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'9f6ee6e0-10be-46f1-aaa4-274cecb8c7a6', N'f3c2d4c4-abd4-4e6d-ab1f-bddd7007e271', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.4430842' AS DateTime2), CAST(N'2023-01-14T11:53:45.4430814' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a1be4aac-a57d-4bb0-ba7b-7d687a18c770', N'ffa03023-1d31-48ae-b2d1-4086d0826b01', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:04:09.5127993' AS DateTime2), CAST(N'2022-12-22T11:04:09.5127986' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a27509f5-15a2-4486-95a4-95a2ff3adb16', N'12d91cb1-d44c-45d2-8d99-5e469335c504', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', N'fsdf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T16:46:42.1362220' AS DateTime2), CAST(N'2022-11-16T16:46:42.1362190' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a2d005f9-47c8-4fa8-a235-52061149052e', N'9b4723e0-a875-44eb-be35-a5633f498617', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.1095209' AS DateTime2), CAST(N'2022-12-20T13:08:57.1095182' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a2f1c568-5767-4b9d-9e77-de1e76eaca30', N'80619020-e618-426a-8775-1a1714cdc151', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6014981' AS DateTime2), CAST(N'2022-12-20T13:10:42.6014972' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a49ef96d-60c1-487f-82a2-9a3511086bdb', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6125869' AS DateTime2), CAST(N'2023-01-14T11:47:24.6125840' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a4d0d6d5-9c13-4ed1-843c-1ee7a4423e37', N'c7becde5-81b6-49f7-84a0-5a41803fd38a', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-12-20T13:05:39.4346241' AS DateTime2), CAST(N'2022-12-20T13:05:39.4346216' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a4d454ec-959a-47f6-8d55-cf0af5139b8a', N'5f1310a6-8562-4fcb-8c94-b71c99e67935', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:03:58.9663451' AS DateTime2), CAST(N'2023-01-14T12:03:58.9663421' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a5290d61-52a6-4bef-9fc2-f19d35845644', N'9b4723e0-a875-44eb-be35-a5633f498617', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.1086132' AS DateTime2), CAST(N'2022-12-20T13:08:57.1086091' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a552e270-8c0c-4047-bca8-2f1501e9eb03', N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.4914404' AS DateTime2), CAST(N'2022-12-22T11:03:32.4914393' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a59359b7-2411-429d-a3f2-b13da820f72b', N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:11:36.2112638' AS DateTime2), CAST(N'2022-12-22T11:07:01.8169394' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a643ff4c-316b-4338-873a-ee137da48199', N'42e59015-cd98-423a-91dd-03377d956cf6', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:22.2446451' AS DateTime2), CAST(N'2022-12-27T05:17:22.2446434' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a72b7923-9f7e-4fa9-ab42-69f94c1e7ca8', N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0909329' AS DateTime2), CAST(N'2022-12-20T13:08:57.0909304' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a73bb52c-5984-4dca-8352-3ea6220b93bf', N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1377756' AS DateTime2), CAST(N'2022-12-22T11:05:17.1377742' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a78b84bb-8cec-448c-802f-8639fd95cc1d', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:39.0739100' AS DateTime2), CAST(N'2023-01-10T03:06:40.1555626' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a7c1546d-a91d-4294-9561-37f6a121625a', N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.8593600' AS DateTime2), CAST(N'2022-12-22T11:05:00.8593582' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'a8717e25-900d-40de-b96d-8bf799fb15b9', N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T11:01:32.6219586' AS DateTime2), CAST(N'2023-01-14T11:22:04.5278113' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'aba57b25-8f16-4f84-b822-1bfe337f5759', N'28fb3152-fa74-4bc7-9a63-a9343b4f9bc7', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', N'dsfsf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T16:46:42.1168047' AS DateTime2), CAST(N'2022-11-16T16:46:42.1166996' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'acc19fcd-5641-4ac6-ae82-d4b58d47380f', N'e6d30271-bf1a-498c-9e14-d0cb456392fc', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', N'fsdf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T14:37:28.9595601' AS DateTime2), CAST(N'2022-11-16T14:37:28.9595560' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'ad523767-afb3-4c1a-a562-524805d63e2e', N'80619020-e618-426a-8775-1a1714cdc151', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Pending', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-06T14:48:07.5742543' AS DateTime2), CAST(N'2022-12-06T14:48:07.5742504' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'af3462e9-0544-42c8-9655-b5992ecdfd6f', N'abd181f8-ecf1-4f2b-84f9-329567ebc922', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:58:12.6527400' AS DateTime2), CAST(N'2023-01-14T11:58:12.6527348' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'af3a36b1-7eae-483a-837b-cb347aabbff5', N'9d808f07-d470-4a36-8dc6-13510463879f', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.8448816' AS DateTime2), CAST(N'2022-12-22T11:05:00.8448799' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'af7c8c69-0b77-494f-80e7-c846a2441223', N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4268193' AS DateTime2), CAST(N'2022-12-22T10:54:17.4268176' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'b001efc7-2096-462b-8641-9fcf7b1d6569', N'0e17d1f0-b5ee-47d5-abab-3939c59b2f19', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-28T11:20:12.0248254' AS DateTime2), CAST(N'2022-11-28T11:20:28.4199353' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'b0098858-6ec9-4a38-9b9d-76f21acddc9c', N'0ff32e28-8664-4683-b1c9-be04deade276', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.3812498' AS DateTime2), CAST(N'2022-12-20T13:01:27.3812454' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'b079fcba-0bd7-4ef4-a6fb-e0efbccae249', N'12d91cb1-d44c-45d2-8d99-5e469335c504', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', N'fsdf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T16:46:42.1363178' AS DateTime2), CAST(N'2022-11-16T16:46:42.1363172' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'b29b892c-28e1-437d-8e82-12dd60e2c450', N'9a9fe3b4-9364-4542-b740-1df415ada745', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', N'2352345', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:28:00.2780010' AS DateTime2), CAST(N'2022-11-22T11:28:00.2292757' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'b5197df1-414e-4554-9d6b-208595cc9ad8', N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.8704564' AS DateTime2), CAST(N'2022-12-22T11:05:00.8704542' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'b5ccee9e-2520-44c7-b2ff-1088bd4daeb0', N'8ea7685a-fab4-40bb-aeaa-51df6c214702', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:58:12.6336949' AS DateTime2), CAST(N'2023-01-14T11:58:12.6336915' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'b64360ea-603b-47ac-846e-d9b1797b791e', N'e6d30271-bf1a-498c-9e14-d0cb456392fc', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Query', N'asdfaf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T12:15:06.0004889' AS DateTime2), CAST(N'2022-11-22T12:15:06.0004838' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'b956588e-b71f-4f81-b791-c8ceb128da78', N'de8f9a9a-3ae8-47b3-ae77-3821b1500d86', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed With Query', N'asdf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:28:45.1339938' AS DateTime2), CAST(N'2022-11-22T11:28:45.1339889' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'bb0b4369-0868-4b39-8ad9-ce0bc404a583', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.7313421' AS DateTime2), CAST(N'2023-01-14T11:47:24.7313390' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'bdd3db3f-5bf3-4259-b73b-751ea5a66d5e', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:02:22.2009279' AS DateTime2), CAST(N'2023-01-14T12:02:22.2006030' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'be0cd813-e390-4118-9ba4-b9b41ab80499', N'42e59015-cd98-423a-91dd-03377d956cf6', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1316346' AS DateTime2), CAST(N'2022-12-22T11:05:17.1316329' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'be8ec13e-59a0-4883-83f0-434fde54e652', N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Query', N'asdfad', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:28:46.1995030' AS DateTime2), CAST(N'2022-11-22T11:28:46.1994985' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'bed54a84-dc0b-47b0-8de6-139dfc6e7cdb', N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:52.5900888' AS DateTime2), CAST(N'2022-12-27T05:16:52.5900827' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'bf5ea910-1c34-41cd-a717-6835674ab6a3', N'9b4723e0-a875-44eb-be35-a5633f498617', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:11:36.2253766' AS DateTime2), CAST(N'2022-12-22T11:07:01.8241317' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'c3c173f6-6c11-4ae6-b242-b0b225f272eb', N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:07:59.5806734' AS DateTime2), CAST(N'2022-12-23T12:06:04.5799175' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'c4af4fe6-c2b9-404a-91b7-9c1259a7b9a3', N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed With Query', N'asdfsadf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-06T14:48:10.9044184' AS DateTime2), CAST(N'2022-12-06T14:48:10.9044143' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'c4ffe09f-4a37-4af4-8002-254ebde1f26d', N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1054046' AS DateTime2), CAST(N'2022-12-22T10:55:12.1054024' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'c5eba2ed-dd92-41d7-ad78-de697ef4047e', N'9d808f07-d470-4a36-8dc6-13510463879f', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:00.8330611' AS DateTime2), CAST(N'2022-12-22T11:05:00.8330592' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'c6c1d535-6b8f-4438-8410-94eaef78c917', N'f5210eaa-a400-48b4-aec8-12afad3ac891', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.4910204' AS DateTime2), CAST(N'2023-01-14T11:53:45.4910172' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'c6c971cd-03b1-477d-9e59-bb9817ab565d', N'5f1310a6-8562-4fcb-8c94-b71c99e67935', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.0602502' AS DateTime2), CAST(N'2023-01-14T11:35:53.0602475' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'c7ecbd9d-1766-41f9-bb0c-eaaa60830faf', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:02:22.5022115' AS DateTime2), CAST(N'2023-01-14T12:02:22.5022086' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'c86ff959-1991-4397-8ef1-c65b7bbe3951', N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8770690' AS DateTime2), CAST(N'2022-12-27T05:16:31.8770669' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'ca83f588-4465-42fa-94e8-bc6f406eb97c', N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0988459' AS DateTime2), CAST(N'2022-12-20T13:08:57.0988436' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'cad8d24a-459f-4e91-8d50-0da5138e8cff', N'0e17d1f0-b5ee-47d5-abab-3939c59b2f19', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-28T11:20:12.0231067' AS DateTime2), CAST(N'2022-11-28T11:20:28.4181269' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'caeefaf2-f71b-4c58-983d-b986e93862f5', N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:02:22.4987061' AS DateTime2), CAST(N'2023-01-14T12:02:22.4987032' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'cb094f78-f213-420d-96ce-390d32aa8cea', N'9a9fe3b4-9364-4542-b740-1df415ada745', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.1391500' AS DateTime2), CAST(N'2023-01-14T11:35:53.1391470' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'cb121110-4772-47d2-8d7c-61155bb3b8dc', N'80619020-e618-426a-8775-1a1714cdc151', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6019737' AS DateTime2), CAST(N'2022-12-20T13:10:42.6019728' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'cc1dc6c2-ea47-4c19-a782-2dd934906c85', N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4079832' AS DateTime2), CAST(N'2022-12-22T10:54:17.4079808' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'cd7b617b-8950-4554-849e-0842ff7c95d0', N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1372494' AS DateTime2), CAST(N'2022-12-22T11:05:17.1372486' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'cd995c6e-6238-4965-a3a9-dab4dc98eb48', N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:10:42.6447346' AS DateTime2), CAST(N'2022-12-20T13:10:42.6447332' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'ce4e9f6d-2f68-4ea5-bc04-281087e4acd4', N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.0984396' AS DateTime2), CAST(N'2022-12-22T10:55:12.0984377' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'ce4ecb71-50fc-4869-bda7-3ebbf4b7d462', N'9d808f07-d470-4a36-8dc6-13510463879f', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:11.5280852' AS DateTime2), CAST(N'2022-12-27T05:17:11.5280812' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'cee1b060-56e6-4c10-bb60-c6a2783d079b', N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4121501' AS DateTime2), CAST(N'2022-12-22T10:54:17.4121484' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'cfc38d89-bedb-4597-ab67-4e4eafb23afd', N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6165525' AS DateTime2), CAST(N'2023-01-14T11:47:24.6165493' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd09826c0-ddfc-4b90-9079-a9ed7dd0a22d', N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T11:01:32.7604340' AS DateTime2), CAST(N'2023-01-14T11:22:03.5960328' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd23a3bce-7783-48e7-a6a3-8ce0dd4992f8', N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.3885824' AS DateTime2), CAST(N'2022-11-25T08:41:46.4266068' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd44e36ea-9591-46d0-aa0c-19d2814d5f2c', N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.4776891' AS DateTime2), CAST(N'2022-12-22T11:03:32.4776869' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd54fff9d-11d7-4b09-8cd8-2d126e903f3a', N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:07:59.5798078' AS DateTime2), CAST(N'2022-12-23T12:06:04.5765370' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd55c2742-6d51-4e30-ba39-bf0f6b2e404a', N'346a7407-0e68-43ce-b92e-b8f5bbd92d75', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2586813' AS DateTime2), CAST(N'2023-01-14T11:56:27.2586764' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd575528c-0e18-4f18-bc2f-f62d40a2b0ea', N'802c1e38-e111-4b8b-a8ec-f24db90af3f1', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', N'fsdfd', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T14:37:28.9562231' AS DateTime2), CAST(N'2022-11-16T14:37:28.9562194' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd591489c-b25d-4513-a1a0-0cbf08196fe3', N'de8f9a9a-3ae8-47b3-ae77-3821b1500d86', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed With Query', N'68978456', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:28:44.5990206' AS DateTime2), CAST(N'2022-11-22T11:28:44.5990138' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd59a3521-78e9-45ec-882f-138c351c9aba', N'abd181f8-ecf1-4f2b-84f9-329567ebc922', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Query', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4759321' AS DateTime2), CAST(N'2022-11-25T08:41:46.4759311' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd6110749-1b16-4a09-90ee-a56e919785b5', N'38ec7849-c89b-4087-9ed0-00b32360507e', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2823938' AS DateTime2), CAST(N'2023-01-14T11:56:27.2823901' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd6daf8e0-bab9-4a24-83c7-99bd158409a8', N'abd181f8-ecf1-4f2b-84f9-329567ebc922', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4768001' AS DateTime2), CAST(N'2022-11-25T08:41:46.4767992' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'd9398cfd-6ff5-4216-84f2-9d40cb89c7ec', N'9a9fe3b4-9364-4542-b740-1df415ada745', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', N'sadfsadfasdf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:28:13.2728541' AS DateTime2), CAST(N'2022-11-22T11:28:13.2244573' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'dae2521f-4cc1-4a26-b1d3-b76bf20652d0', N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.0024367' AS DateTime2), CAST(N'2023-01-14T11:35:53.0024339' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'db5a51ea-7968-4961-aa75-86f9d8321b86', N'31fe8c1d-f210-4a67-9bac-afa32d5a51c1', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:16:44.4103602' AS DateTime2), CAST(N'2022-11-28T11:16:44.4103556' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'db8df160-dc6a-454a-b1c6-c9c853ef6d87', N'f3c2d4c4-abd4-4e6d-ab1f-bddd7007e271', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.4103689' AS DateTime2), CAST(N'2023-01-14T11:53:45.4100735' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'dc3fb3f4-156b-4898-b0e0-c2c9af788086', N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0940492' AS DateTime2), CAST(N'2022-12-20T13:08:57.0940465' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'dcf4c2fa-ca9d-4e2e-b96c-efbe3b87a5d6', N'20f3880d-2b85-47b7-b878-260f81e34734', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:58:12.6016288' AS DateTime2), CAST(N'2023-01-14T11:58:12.6016256' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'dd992e13-b59b-4b6e-af85-5e147103c16c', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.6838590' AS DateTime2), CAST(N'2023-01-14T11:47:24.6838562' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'de30fc46-a112-4fe5-a581-e7a3b0a4abec', N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1089467' AS DateTime2), CAST(N'2022-12-22T10:55:12.1089456' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'dffcf801-097d-4c79-9e76-a1467aab517d', N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1361102' AS DateTime2), CAST(N'2022-12-22T11:05:17.1361078' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e1275a21-19b0-4500-b92e-0933f3af474c', N'42e59015-cd98-423a-91dd-03377d956cf6', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1324922' AS DateTime2), CAST(N'2022-12-22T11:05:17.1324906' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e381f7b8-ff0a-4632-aeaa-c15993150214', N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:08:57.0981421' AS DateTime2), CAST(N'2022-12-20T13:08:57.0981392' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e4659a05-e842-4158-baaa-43b74997930b', N'0ff32e28-8664-4683-b1c9-be04deade276', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', N'dfdgdagadg', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:11:36.1907665' AS DateTime2), CAST(N'2022-12-22T11:07:01.7937080' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e4eac42d-d68a-4b78-8d87-37be294cce49', N'f3c2d4c4-abd4-4e6d-ab1f-bddd7007e271', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.4370830' AS DateTime2), CAST(N'2023-01-14T11:53:45.4370803' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e5fb9602-03e3-4466-8fed-a3083bb13e91', N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.3890124' AS DateTime2), CAST(N'2022-11-25T08:41:46.4269934' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e6a2b4f6-3704-4f99-a905-40e8de9361a9', N'42e59015-cd98-423a-91dd-03377d956cf6', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1298848' AS DateTime2), CAST(N'2022-12-22T11:05:17.1298826' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e6a34acb-7e26-4d12-aab1-18091700c5ec', N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:03:32.4902520' AS DateTime2), CAST(N'2022-12-22T11:03:32.4902512' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e7393322-fb3b-4d6d-ad76-d3057ab31312', N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:05:17.1685977' AS DateTime2), CAST(N'2022-12-22T11:05:17.1685969' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'e89bc005-5985-4190-bdff-85338bddd744', N'346a7407-0e68-43ce-b92e-b8f5bbd92d75', N'70727053-ec80-4b8f-b441-8ca5152e9db5', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2458799' AS DateTime2), CAST(N'2023-01-14T11:56:27.2458771' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'ec6718dc-bc4f-4edb-9ce9-4ca5332f7609', N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:16:31.8909634' AS DateTime2), CAST(N'2022-12-27T05:16:31.8909606' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'ec6bc5fa-0d46-4fad-b1d4-daf97c769ea2', N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.5777483' AS DateTime2), CAST(N'2022-12-22T11:02:18.5777469' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'efa632e1-1aa8-4a1d-819f-16688cb1b09a', N'20f3880d-2b85-47b7-b878-260f81e34734', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4177601' AS DateTime2), CAST(N'2022-11-25T08:41:46.4177590' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'efdbce0f-5eba-41a1-acd8-7b60ea0ed20f', N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:22.2649616' AS DateTime2), CAST(N'2022-12-27T05:17:22.2649597' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'eff190a1-fa89-41b3-91d1-091d982e8b6c', N'9d808f07-d470-4a36-8dc6-13510463879f', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:14.4019796' AS DateTime2), CAST(N'2022-12-21T10:44:34.3886717' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f0136f71-b6c7-4937-85cf-878ba1cd792c', N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:11:36.2197513' AS DateTime2), CAST(N'2022-12-22T11:07:01.8202857' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f0319901-9871-475f-be4b-23e37bae42d6', N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4058583' AS DateTime2), CAST(N'2022-12-22T10:54:17.4058558' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f07329bb-4f0f-4fb9-a952-0e3e136aaaf6', N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1046432' AS DateTime2), CAST(N'2022-12-22T10:55:12.1046415' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f099e611-2a7a-4a15-987e-e7b124e6f213', N'1357c211-7e66-41f9-a8a9-7097a8dbd03b', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.8465433' AS DateTime2), CAST(N'2023-01-14T11:33:07.8465384' AS DateTime2), NULL)
GO
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f0c6818a-589e-4488-acd2-16d5f1f5fc3b', N'f3c2d4c4-abd4-4e6d-ab1f-bddd7007e271', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:53:45.4401900' AS DateTime2), CAST(N'2023-01-14T11:53:45.4401877' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f29016f5-48ec-4593-9d5c-39b903da9747', N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:55:12.1101035' AS DateTime2), CAST(N'2022-12-22T10:55:12.1101025' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f3d29146-dfa9-4535-8218-9bfd99211445', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.7098153' AS DateTime2), CAST(N'2023-01-14T11:47:24.7098124' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f60fdbab-838b-40c2-81ba-5d447ba13bfb', N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:58:12.6733445' AS DateTime2), CAST(N'2023-01-14T11:58:12.6733419' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f6983336-d6dc-410c-9141-b72e2bd95592', N'20f3880d-2b85-47b7-b878-260f81e34734', N'dfe8e644-e625-4f46-81b2-8867cd581855', N'Pending', NULL, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4181625' AS DateTime2), CAST(N'2022-11-25T08:41:46.4181613' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f6b4f794-e5df-4d42-b091-bd39b85b15ed', N'e6d30271-bf1a-498c-9e14-d0cb456392fc', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', N'fsdf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T14:37:28.9597269' AS DateTime2), CAST(N'2022-11-16T14:37:28.9597254' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f7159ba1-315a-46f8-a0a2-d7e9b0c76ef7', N'802c1e38-e111-4b8b-a8ec-f24db90af3f1', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Query', N'asdfadf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T12:14:59.3740679' AS DateTime2), CAST(N'2022-11-22T12:14:59.3740558' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f89b76e0-c07c-401f-96d8-8322ecf0979d', N'80619020-e618-426a-8775-1a1714cdc151', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Query', N'asdfsadf', N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-06T14:48:07.5305951' AS DateTime2), CAST(N'2022-12-06T14:48:07.5303732' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'f95b5b3f-fea4-4081-af7e-45866b0002aa', N'346a7407-0e68-43ce-b92e-b8f5bbd92d75', N'887c2b52-b782-4137-a7a2-dd0ffc8f2503', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:56:27.2545452' AS DateTime2), CAST(N'2023-01-14T11:56:27.2545420' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'faf1b320-e6e5-40d8-b705-a8b130202760', N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'74d39e77-7d4a-4003-8744-decb007fdd46', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:47:24.7026990' AS DateTime2), CAST(N'2023-01-14T11:47:24.7026959' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'fdd951f8-8c0e-46a8-892c-a33398e585ba', N'9d808f07-d470-4a36-8dc6-13510463879f', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:11.5274666' AS DateTime2), CAST(N'2022-12-27T05:17:11.5274626' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'fe18bc9b-cbe0-4927-aeac-0e6d370b82e0', N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'40214c14-369b-405f-9f51-3d98dc9be1b9', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:14.1557841' AS DateTime2), CAST(N'2022-12-21T10:44:34.2336118' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'fe688991-2460-4ca9-b9b7-4f5cccc29a20', N'8b043893-bb09-4950-80ca-96471d16f3d4', N'128bf355-4e77-4e64-bc04-c1afa68731c2', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T12:02:22.3915594' AS DateTime2), CAST(N'2023-01-14T12:02:22.3915564' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'fecfe572-b571-4b0e-b23a-433c17dfe22f', N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:14.1487525' AS DateTime2), CAST(N'2022-12-21T10:44:34.2242085' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'ff8deb77-fb34-4a93-a7fa-6c9a9f13b4a9', N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'0c07b0df-0e57-4e5d-ae00-1fea6c4c8850', N'Completed', NULL, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:13.9299088' AS DateTime2), CAST(N'2022-12-21T10:44:34.0635287' AS DateTime2), NULL)
INSERT [dbo].[HblActivity] ([Id], [HblId], [ActivityId], [CurrentStatus], [Comment], [EnterBy], [EnterDate], [EndTime], [StartTime]) VALUES (N'ffbbcc88-2427-4945-be1f-29d0e4f71260', N'c7becde5-81b6-49f7-84a0-5a41803fd38a', N'c6e053a5-0188-4747-879d-80a923d12676', N'Completed', NULL, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-27T05:17:03.0442991' AS DateTime2), CAST(N'2022-12-27T05:17:03.0442965' AS DateTime2), NULL)
GO
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'0e17d1f0-b5ee-47d5-abab-3939c59b2f19', N'b01d35bd-3ddc-4e50-a67b-2c76b3ec1d23', N'123344', 0, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:16:44.4562022' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'0ff32e28-8664-4683-b1c9-be04deade276', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'abcd1234', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.3338235' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'12d91cb1-d44c-45d2-8d99-5e469335c504', N'efd138cc-62bd-4fba-b8f7-5b5613906652', N'86886', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T16:46:42.1335956' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'1357c211-7e66-41f9-a8a9-7097a8dbd03b', N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'23423545453', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.8407714' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'1467b3a6-60ca-4eaa-a3e1-87dae6c13986', N'a6cf97f5-6f50-4fd5-a33c-f567263a29fb', N'245524325', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T11:01:32.7464293' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'1705a9a3-c679-4baa-b26e-e86ad3d5d072', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'1232313', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4253360' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'18d04747-0318-4a8c-b8b0-eff501c0df3a', N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'1243', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:13.9014456' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'20f3880d-2b85-47b7-b878-260f81e34734', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'13213', 0, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4163897' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'28fb3152-fa74-4bc7-9a63-a9343b4f9bc7', N'efd138cc-62bd-4fba-b8f7-5b5613906652', N'5466', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T16:46:42.0890313' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'2c4b52d7-9562-45a8-a1c6-57f93d40bb88', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'xyza1234', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4670718' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'2f7dfc5a-1ddc-43c3-bcca-e0a4ecf6d4cf', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'abcd2546', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4583431' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'31fe8c1d-f210-4a67-9bac-afa32d5a51c1', N'b01d35bd-3ddc-4e50-a67b-2c76b3ec1d23', N'1234', 1, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-28T11:16:44.4000684' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'346a7407-0e68-43ce-b92e-b8f5bbd92d75', N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'23423346436', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.5262016' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'38ec7849-c89b-4087-9ed0-00b32360507e', N'f230d0dd-6e7f-4104-a653-276e4c98eb42', N'4356', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:33:07.8650699' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'42e59015-cd98-423a-91dd-03377d956cf6', N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'12312312', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.6010871' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'489bb5c1-a84d-4162-8c7b-520e336257b2', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'23452', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:29:00.7365267' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'4f148ed3-0ba1-4ea1-93c2-ec43a1c17d76', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'1223321', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.2903525' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'5664bbb0-131b-433c-8f3d-0943ba0d3f9d', N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'13213123', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.5187162' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'5f1310a6-8562-4fcb-8c94-b71c99e67935', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'34523323r3', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:35:53.0473516' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'70349a6a-7c78-4f2c-9382-dd75bf9cb132', N'74192b11-c8f2-46c9-ba78-d9ea580313e5', N'PDIDD5446547', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:16.6682245' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'7e7a7a6e-7d46-49c9-a8b1-9846ca34a9c5', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'13223434', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.3995171' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'802c1e38-e111-4b8b-a8ec-f24db90af3f1', N'b8bdf58f-8fcf-496a-afd2-ba6e94074805', N'545', 1, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T14:37:28.9097005' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'80619020-e618-426a-8775-1a1714cdc151', N'5578de68-c0ae-4403-8ac9-13fe0bd8e7d7', N'643564', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-06T14:48:07.4641371' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'81c89042-e8de-4a23-8ddd-100576d54e1a', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'2132122', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4047208' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'8968b205-50de-435a-a807-b48f385afd55', N'74192b11-c8f2-46c9-ba78-d9ea580313e5', N'PDIDD5446548', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:17.6480782' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'8971d1fb-6a13-4096-b2b8-ad73e36a0ecb', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'133213', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:38.8315697' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'8b043893-bb09-4950-80ca-96471d16f3d4', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'3123123', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:39.6775147' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'8ea7685a-fab4-40bb-aeaa-51df6c214702', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'1332', 0, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4389747' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'916a58fc-39e0-4ebd-9472-f3368a2249f2', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'1233123', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:38.5477081' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'93fc0d56-c313-4f80-bce7-a4119f88c0cb', N'5578de68-c0ae-4403-8ac9-13fe0bd8e7d7', N'32453245', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-06T14:48:10.8896888' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'9a761303-8182-4f7d-94b0-c584d0c1115b', N'a6cf97f5-6f50-4fd5-a33c-f567263a29fb', N'235542354', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T11:01:32.5819622' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'9a9fe3b4-9364-4542-b740-1df415ada745', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'34523', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:27:45.7172280' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'9b4723e0-a875-44eb-be35-a5633f498617', N'3e08bd70-86c4-4353-8499-54509e3cdc56', N'xyad3454', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-20T13:01:27.4715111' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'9d808f07-d470-4a36-8dc6-13510463879f', N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'4568', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:14.3672472' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'a789013e-8d4a-4ab5-8c47-af35e8138fea', N'dfbe46bf-cd0f-442b-b01c-f0485d595309', N'34', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-12-21T10:44:14.1390614' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'abd181f8-ecf1-4f2b-84f9-329567ebc922', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'1323', 0, N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', CAST(N'2022-11-25T08:41:46.4749661' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'afe9760d-8442-43cc-9c0b-bab474787050', N'74192b11-c8f2-46c9-ba78-d9ea580313e5', N'PDIDD5446546', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-26T08:09:13.3608072' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'b77d539d-59ea-4197-b3d0-c42e03cf5f90', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'2345243', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:28:46.1920161' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'c63c7b6b-7906-4288-8099-f4b0ffa15aed', N'f910ca2f-120a-45e0-bb12-cd8b23d08f4a', N'21321312', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:02:18.5960918' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'c65fe4ea-d728-4e56-b531-08902bd8b54e', N'82a8cdd5-f2dd-4381-ad1f-e012840cf9cc', N'23213123', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T10:54:17.4114484' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'c7becde5-81b6-49f7-84a0-5a41803fd38a', N'd5b559d3-0c7e-4557-9152-fae7591e7d53', N'lkajdfsd', 0, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-12-20T13:05:39.4237146' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'de8f9a9a-3ae8-47b3-ae77-3821b1500d86', N'd61bcdbf-69c9-48ac-b3cc-e0f74b8c0350', N'34523', 1, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-22T11:28:21.5565026' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'e6d30271-bf1a-498c-9e14-d0cb456392fc', N'b8bdf58f-8fcf-496a-afd2-ba6e94074805', N'757', 1, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2022-11-16T14:37:28.9563107' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'e75b60fd-f623-40ff-8fac-125b16874fd7', N'8995b01c-708c-44cb-91ef-8c1238fb3a7f', N'2312313', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2023-01-10T03:06:37.8114228' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'f3c2d4c4-abd4-4e6d-ab1f-bddd7007e271', N'e3d52dff-e06f-41a4-a309-20f4344c8d74', N'2345243542534', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:22:57.3087581' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'f5210eaa-a400-48b4-aec8-12afad3ac891', N'e3d52dff-e06f-41a4-a309-20f4344c8d74', N'3254325', 0, N'1b8df810-80c0-414e-a91d-ebd4c1530639', CAST(N'2023-01-14T11:22:57.2248556' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'ffa03023-1d31-48ae-b2d1-4086d0826b01', N'd5b559d3-0c7e-4557-9152-fae7591e7d53', N'23123123', 0, N'b4a6b860-f986-47d5-8eea-02b0f6817daa', CAST(N'2022-12-22T11:04:09.5009285' AS DateTime2))
INSERT [dbo].[HblEntry] ([Id], [FileGuidId], [Hblno], [IsDap], [CreatedBy], [CreatedDate]) VALUES (N'ffdbca0e-896e-4db2-b57e-a847605c0a96', N'b9ee4b46-c971-411a-8bcb-493854a6a4c1', N'123', 0, N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', CAST(N'2022-11-25T08:28:37.2596163' AS DateTime2))
GO
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'00f5d995-2111-4630-9b3f-75e33355a994', N'MIL', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'07e49faf-c090-4983-858b-27d17ee091b0', N'BKK', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'248a473d-0005-42a5-8d34-f4e341ecde67', N'TAO', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'289e3543-84c8-4bf0-b0dc-3117983bfa33', N'XIC', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'3a36ce03-4c51-411f-892e-5191f16e5097', N'DLC', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'5b023634-6a2e-42a3-af7f-837818a29e34', N'LEH', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'85fb45e2-7269-4799-b164-18fa05982272', N'HKG', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'871e6c6b-7106-45ef-a99b-632512be28ad', N'GOT', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'87eabe44-1cbf-48f7-8a9f-2b9404bb6908', N'TYO', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'9349e4b9-a64e-47dc-898d-c6c280ae13e5', N'SYD', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'b35ab51b-51bb-4808-8d34-c5444e82f874', N'MEL', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'dd5f0263-fe3d-42b0-bf23-ee3d931304b3', N'ANR', 1)
INSERT [dbo].[LocationMaster] ([Id], [Name], [IsActive]) VALUES (N'e2088571-2e2d-4f5f-b9ed-8a708e7b47e6', N'BCN', 1)
GO
INSERT [dbo].[ThreadMaster] ([Id], [Name], [IsActive], [Sequance]) VALUES (N'21ce7d51-ff52-4243-88a2-292984b75fe7', N'Release', 1, 3)
INSERT [dbo].[ThreadMaster] ([Id], [Name], [IsActive], [Sequance]) VALUES (N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f', N'HBL User', 1, 1)
INSERT [dbo].[ThreadMaster] ([Id], [Name], [IsActive], [Sequance]) VALUES (N'dd8beae2-88f1-4366-8ebc-464b666014a8', N'Invocing User', 1, 2)
GO
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'0a2f81cb-1dd0-4d18-bd10-4b3818d160d3', N'6cec718c-0aa2-44e0-ae18-f0f46231624d', N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'370257bf-ab50-49b7-9f5a-321528631466', N'6cec718c-0aa2-44e0-ae18-f0f46231624d', N'21ce7d51-ff52-4243-88a2-292984b75fe7', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'3852edfe-d08e-49c2-bbe5-d3a40dac6605', N'07a75297-73be-46f5-945b-2f77c8d2624d', N'dd8beae2-88f1-4366-8ebc-464b666014a8', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'4764ee89-e034-4c91-86bc-cdcaa709eff1', N'11028791-8228-4a41-8926-0a918ace056c', N'dd8beae2-88f1-4366-8ebc-464b666014a8', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'4bb90fc4-5d51-4b42-80e1-442056d4a61c', N'6cec718c-0aa2-44e0-ae18-f0f46231624d', N'dd8beae2-88f1-4366-8ebc-464b666014a8', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'51245cba-2b12-4ba9-86cb-12c57c81cf24', N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'5ccc67c3-0cdb-4a34-a3b8-fbed1e93e918', N'1b8df810-80c0-414e-a91d-ebd4c1530639', N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'608e37ab-0444-4b1e-a2cf-ef52313ebe41', N'94cf07de-c563-422f-9e81-8aed349bcffb', N'dd8beae2-88f1-4366-8ebc-464b666014a8', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'64de5370-a019-4c64-af9f-11b166632ff3', N'7174a470-bd29-4ca8-9ecc-69d28e9c4125', N'dd8beae2-88f1-4366-8ebc-464b666014a8', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'74f54cfd-783b-4c4b-953c-db0fd4809f82', N'1b8df810-80c0-414e-a91d-ebd4c1530639', N'21ce7d51-ff52-4243-88a2-292984b75fe7', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'8a035f84-1b10-442d-9966-688f39b86aae', N'cdd22fab-5fbd-4dad-aa88-91221372ff0d', N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'93199b8e-5553-48c3-be57-085d8f8cc76a', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', N'dd8beae2-88f1-4366-8ebc-464b666014a8', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'988c5778-2d0b-4504-9928-143c5708a5c0', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', N'21ce7d51-ff52-4243-88a2-292984b75fe7', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'a48eae5d-3ad6-4cfa-a9fe-6abea4ce40b9', N'1b8df810-80c0-414e-a91d-ebd4c1530639', N'dd8beae2-88f1-4366-8ebc-464b666014a8', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'a723e76a-fc54-44fa-ae08-e2e8c17657ef', N'd5c4e5b3-1a81-4593-b0d1-240c4ee03bff', N'dd8beae2-88f1-4366-8ebc-464b666014a8', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'b910e9df-e624-41ca-9a64-f53e6d486b56', N'07a75297-73be-46f5-945b-2f77c8d2624d', N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'cc355c55-fecc-4382-829f-0cb12d7d18f5', N'94cf07de-c563-422f-9e81-8aed349bcffb', N'21ce7d51-ff52-4243-88a2-292984b75fe7', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'ced727b8-eb75-4181-816c-802574811b15', N'b4a6b860-f986-47d5-8eea-02b0f6817daa', N'b9a1b817-3fe1-4a3f-ba76-e0b9e9f71f7f', 1)
INSERT [dbo].[ThreadRelation] ([Id], [UserId], [ThreadId], [IsActive]) VALUES (N'cf7daf9b-3b05-4577-88d5-419b22abbe7e', N'11028791-8228-4a41-8926-0a918ace056c', N'21ce7d51-ff52-4243-88a2-292984b75fe7', 1)
GO
INSERT [dbo].[UserLocationRelation] ([Id], [UserId], [LocationId], [Sequance]) VALUES (N'1a3a1c8e-3ebc-4377-b936-7f9e7df66591', N'6cec718c-0aa2-44e0-ae18-f0f46231624d', N'3a36ce03-4c51-411f-892e-5191f16e5097', 999)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ActivityMapping_FileActivityId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_ActivityMapping_FileActivityId] ON [dbo].[ActivityMapping]
(
	[FileActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ActivityMapping_HBLActivityId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_ActivityMapping_HBLActivityId] ON [dbo].[ActivityMapping]
(
	[HBLActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ActivityMaster_ThreadId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_ActivityMaster_ThreadId] ON [dbo].[ActivityMaster]
(
	[ThreadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16-02-2023 13:20:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 16-02-2023 13:20:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileActivity_ActivityId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_FileActivity_ActivityId] ON [dbo].[FileActivity]
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileActivity_FileId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_FileActivity_FileId] ON [dbo].[FileActivity]
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileActivity_UserId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_FileActivity_UserId] ON [dbo].[FileActivity]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileEntry_CreatedBy]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_FileEntry_CreatedBy] ON [dbo].[FileEntry]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HblActivity_ActivityId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_HblActivity_ActivityId] ON [dbo].[HblActivity]
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HblActivity_EnterBy]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_HblActivity_EnterBy] ON [dbo].[HblActivity]
(
	[EnterBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HblActivity_HblId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_HblActivity_HblId] ON [dbo].[HblActivity]
(
	[HblId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HblEntry_CreatedBy]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_HblEntry_CreatedBy] ON [dbo].[HblEntry]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HblEntry_FileGuidId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_HblEntry_FileGuidId] ON [dbo].[HblEntry]
(
	[FileGuidId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ThreadRelation_ThreadId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_ThreadRelation_ThreadId] ON [dbo].[ThreadRelation]
(
	[ThreadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ThreadRelation_UserId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_ThreadRelation_UserId] ON [dbo].[ThreadRelation]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLocationRelation_LocationId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_UserLocationRelation_LocationId] ON [dbo].[UserLocationRelation]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLocationRelation_UserId]    Script Date: 16-02-2023 13:20:39 ******/
CREATE NONCLUSTERED INDEX [IX_UserLocationRelation_UserId] ON [dbo].[UserLocationRelation]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HblActivity] ADD  CONSTRAINT [DF__HblActivi__Activ__6E01572D]  DEFAULT (N'') FOR [ActivityId]
GO
ALTER TABLE [dbo].[ActivityMapping]  WITH CHECK ADD  CONSTRAINT [FK_ActivityMapping_ActivityMaster_FileActivityId] FOREIGN KEY([FileActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
GO
ALTER TABLE [dbo].[ActivityMapping] CHECK CONSTRAINT [FK_ActivityMapping_ActivityMaster_FileActivityId]
GO
ALTER TABLE [dbo].[ActivityMapping]  WITH CHECK ADD  CONSTRAINT [FK_ActivityMapping_ActivityMaster_HBLActivityId] FOREIGN KEY([HBLActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
GO
ALTER TABLE [dbo].[ActivityMapping] CHECK CONSTRAINT [FK_ActivityMapping_ActivityMaster_HBLActivityId]
GO
ALTER TABLE [dbo].[ActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_ActivityMaster_ThreadMaster_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[ThreadMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityMaster] CHECK CONSTRAINT [FK_ActivityMaster_ThreadMaster_ThreadId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FileActivity]  WITH CHECK ADD  CONSTRAINT [FK_FileActivity_ActivityMaster_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
GO
ALTER TABLE [dbo].[FileActivity] CHECK CONSTRAINT [FK_FileActivity_ActivityMaster_ActivityId]
GO
ALTER TABLE [dbo].[FileActivity]  WITH CHECK ADD  CONSTRAINT [FK_FileActivity_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileActivity] CHECK CONSTRAINT [FK_FileActivity_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[FileActivity]  WITH CHECK ADD  CONSTRAINT [FK_FileActivity_FileEntry_FileId] FOREIGN KEY([FileId])
REFERENCES [dbo].[FileEntry] ([Id])
GO
ALTER TABLE [dbo].[FileActivity] CHECK CONSTRAINT [FK_FileActivity_FileEntry_FileId]
GO
ALTER TABLE [dbo].[FileEntry]  WITH CHECK ADD  CONSTRAINT [FK_FileEntry_AspNetUsers_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[FileEntry] CHECK CONSTRAINT [FK_FileEntry_AspNetUsers_CreatedBy]
GO
ALTER TABLE [dbo].[HblActivity]  WITH CHECK ADD  CONSTRAINT [FK_HblActivity_ActivityMaster_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HblActivity] CHECK CONSTRAINT [FK_HblActivity_ActivityMaster_ActivityId]
GO
ALTER TABLE [dbo].[HblActivity]  WITH CHECK ADD  CONSTRAINT [FK_HblActivity_AspNetUsers_EnterBy] FOREIGN KEY([EnterBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HblActivity] CHECK CONSTRAINT [FK_HblActivity_AspNetUsers_EnterBy]
GO
ALTER TABLE [dbo].[HblActivity]  WITH CHECK ADD  CONSTRAINT [FK_HblActivity_HblEntry_HblId] FOREIGN KEY([HblId])
REFERENCES [dbo].[HblEntry] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HblActivity] CHECK CONSTRAINT [FK_HblActivity_HblEntry_HblId]
GO
ALTER TABLE [dbo].[HblEntry]  WITH CHECK ADD  CONSTRAINT [FK_HblEntry_AspNetUsers_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HblEntry] CHECK CONSTRAINT [FK_HblEntry_AspNetUsers_CreatedBy]
GO
ALTER TABLE [dbo].[HblEntry]  WITH CHECK ADD  CONSTRAINT [FK_HblEntry_FileEntry_FileGuidId] FOREIGN KEY([FileGuidId])
REFERENCES [dbo].[FileEntry] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HblEntry] CHECK CONSTRAINT [FK_HblEntry_FileEntry_FileGuidId]
GO
ALTER TABLE [dbo].[ThreadRelation]  WITH CHECK ADD  CONSTRAINT [FK_ThreadRelation_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThreadRelation] CHECK CONSTRAINT [FK_ThreadRelation_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ThreadRelation]  WITH CHECK ADD  CONSTRAINT [FK_ThreadRelation_ThreadMaster_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[ThreadMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThreadRelation] CHECK CONSTRAINT [FK_ThreadRelation_ThreadMaster_ThreadId]
GO
ALTER TABLE [dbo].[UserLocationRelation]  WITH CHECK ADD  CONSTRAINT [FK_UserLocationRelation_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLocationRelation] CHECK CONSTRAINT [FK_UserLocationRelation_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserLocationRelation]  WITH CHECK ADD  CONSTRAINT [FK_UserLocationRelation_LocationMaster_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[LocationMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLocationRelation] CHECK CONSTRAINT [FK_UserLocationRelation_LocationMaster_LocationId]
GO
USE [master]
GO
ALTER DATABASE [CanadaImportWebWorkflow_New] SET  READ_WRITE 
GO
