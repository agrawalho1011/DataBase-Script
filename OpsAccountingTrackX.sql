USE [master]
GO
/****** Object:  Database [OpsAccountingTrackX]    Script Date: 16-02-2023 13:22:38 ******/
CREATE DATABASE [OpsAccountingTrackX]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OpsAccountingTrackX', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OpsAccountingTrackX.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OpsAccountingTrackX_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OpsAccountingTrackX_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OpsAccountingTrackX] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OpsAccountingTrackX].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OpsAccountingTrackX] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET ARITHABORT OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OpsAccountingTrackX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OpsAccountingTrackX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OpsAccountingTrackX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OpsAccountingTrackX] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [OpsAccountingTrackX] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET RECOVERY FULL 
GO
ALTER DATABASE [OpsAccountingTrackX] SET  MULTI_USER 
GO
ALTER DATABASE [OpsAccountingTrackX] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OpsAccountingTrackX] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OpsAccountingTrackX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OpsAccountingTrackX] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OpsAccountingTrackX] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OpsAccountingTrackX] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'OpsAccountingTrackX', N'ON'
GO
ALTER DATABASE [OpsAccountingTrackX] SET QUERY_STORE = OFF
GO
USE [OpsAccountingTrackX]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16-02-2023 13:22:38 ******/
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
/****** Object:  Table [dbo].[ActivityCountryMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityCountryMaster](
	[Id] [nvarchar](450) NOT NULL,
	[CountryId] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ActivityCountryMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ActivityMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 16-02-2023 13:22:38 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 16-02-2023 13:22:38 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 16-02-2023 13:22:38 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 16-02-2023 13:22:38 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 16-02-2023 13:22:38 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Wnsid] [nvarchar](max) NOT NULL,
	[CitrixId] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 16-02-2023 13:22:38 ******/
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
/****** Object:  Table [dbo].[CategoryMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryMaster](
	[Id] [nvarchar](450) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CategoryMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[RegionId] [nvarchar](450) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailActivityMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailActivityMaster](
	[Id] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[EmailId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CountryId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_EmailActivityMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailCountryMasters]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailCountryMasters](
	[Id] [nvarchar](450) NOT NULL,
	[EmailId] [nvarchar](450) NOT NULL,
	[CountryId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_EmailCountryMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMaster](
	[Id] [nvarchar](450) NOT NULL,
	[EmailAddress] [nvarchar](max) NOT NULL,
	[EmailPassword] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[SyncState] [nvarchar](max) NULL,
	[LastSyncDateTime] [datetime2](7) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[AuthType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_EmailMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FolderActivityCountryMasters]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FolderActivityCountryMasters](
	[Id] [nvarchar](450) NOT NULL,
	[FolderId] [nvarchar](450) NOT NULL,
	[ActivityCountryId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_FolderActivityCountryMasters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FolderMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FolderMaster](
	[Id] [nvarchar](450) NOT NULL,
	[MailBoxId] [nvarchar](450) NOT NULL,
	[FolderName] [nvarchar](max) NOT NULL,
	[FolderId] [nvarchar](max) NOT NULL,
	[ParenFolderId] [nvarchar](max) NOT NULL,
	[SyncState] [nvarchar](max) NULL,
	[LastSyncDateTime] [datetime2](7) NULL,
	[ChangeKey] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_FolderMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegionMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegionMaster](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_RegionMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusActivityMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusActivityMaster](
	[Id] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[StatusId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StatusActivityMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusCategoryMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusCategoryMaster](
	[Id] [nvarchar](450) NOT NULL,
	[StatusActivityId] [nvarchar](450) NOT NULL,
	[CategoryId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StatusCategoryMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusMaster](
	[Id] [nvarchar](450) NOT NULL,
	[StatusName] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_StatusMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActivityMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivityMaster](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ActivityId] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserActivityMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCountryMaster]    Script Date: 16-02-2023 13:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCountryMaster](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[CountryId] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserMasterId] [nvarchar](450) NULL,
 CONSTRAINT [PK_UserCountryMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230208083238_InitialDatabaseDesignOfOpsAccounting', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230208124818_RemoveUnwantedrelation', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230208141058_EmailActivityMasterCreated', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230208144701_aadingEmailIdInEmailActivityMaster', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230208145838_aadingcountryIdInEmailActivityMaster', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230210102404_AuthtypeAddedinEmailMaster', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230211130716_newrelationsadded', N'6.0.8')
GO
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'00058567-a533-424c-acc3-22e0dad4a180', N'433a9eb1-29f8-453d-90c2-7b502468d96c', N'09fa8859-0edc-4563-9e71-6c82517028e1', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'0a96237d-ec53-46d0-962c-ac37e55e9ba9', N'63cd4fa7-e674-422e-b2eb-371d7b951337', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'1141e029-7ac1-4721-ad92-bb44a923a7eb', N'7790140e-dcd6-41fd-aa5a-c6ec018c452b', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'2126d266-6b53-42ee-8b36-a83e8f4740cf', N'b241d30b-80f7-4d3d-aa79-1f8735dc985c', N'09fa8859-0edc-4563-9e71-6c82517028e1', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'3063fe9f-51df-4eb1-b91b-6bd4d00ed165', N'67b2e755-a742-4f89-a4e8-084a270e611b', N'09fa8859-0edc-4563-9e71-6c82517028e1', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'577b68f2-8f7c-457a-a2ca-5336dba4185f', N'bc4657e9-acca-4ed0-a941-6bb8a7615136', N'95bd0b27-301b-4a0d-a898-983090f894b4', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'5b4507ca-e2cb-4270-9f0d-49ec2323c279', N'de088cdc-9c34-4c85-b643-bebeacd07946', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'6754de7b-f498-407a-a953-b23704f35e5e', N'b241d30b-80f7-4d3d-aa79-1f8735dc985c', N'95bd0b27-301b-4a0d-a898-983090f894b4', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'72f7f334-f662-406e-9444-8b68291005e2', N'698298b9-d344-4ca7-a857-db61629168fc', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'795499f6-7726-41ea-9388-e88c4facbb15', N'bc4657e9-acca-4ed0-a941-6bb8a7615136', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'854bc6d1-bafd-4c20-9160-c14ae1fa74d5', N'9e9dfae8-37c1-4401-8579-cf78e86f3938', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'97680bcc-e05c-4364-b026-08e7c8a2589b', N'67b2e755-a742-4f89-a4e8-084a270e611b', N'9e234482-71ee-4214-9e74-fe59bd906ac1', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'a31ed655-3694-4316-b424-f23bcaf96552', N'67b2e755-a742-4f89-a4e8-084a270e611b', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'aa62ca7c-4fae-4a7e-9bb1-9fadf1efdb28', N'7790140e-dcd6-41fd-aa5a-c6ec018c452b', N'09fa8859-0edc-4563-9e71-6c82517028e1', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'ae583ea5-22bb-4bbc-b6fb-0c9139a3cf21', N'5dbbdab1-b472-4fe5-99c2-6e269769472c', N'09fa8859-0edc-4563-9e71-6c82517028e1', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'c0ce1f29-fbf9-4034-83ef-12ed830f905c', N'59d9287c-cfbe-47a7-87a4-753db3397579', N'09fa8859-0edc-4563-9e71-6c82517028e1', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'c6db2a85-63d6-4064-8431-0f3a686f57e3', N'bc4657e9-acca-4ed0-a941-6bb8a7615136', N'09fa8859-0edc-4563-9e71-6c82517028e1', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'c78d5e71-598d-4f9e-ba9a-3fb3d62d2cee', N'5dbbdab1-b472-4fe5-99c2-6e269769472c', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'ce25b2e8-24ef-40da-ae88-3db8c23898d5', N'b241d30b-80f7-4d3d-aa79-1f8735dc985c', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[ActivityCountryMaster] ([Id], [CountryId], [ActivityId], [IsActive]) VALUES (N'e7639024-3dd3-43ec-9de8-6248a3e55736', N'433a9eb1-29f8-453d-90c2-7b502468d96c', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
GO
INSERT [dbo].[ActivityMaster] ([Id], [Name], [IsActive]) VALUES (N'09fa8859-0edc-4563-9e71-6c82517028e1', N'Add payable', 1)
INSERT [dbo].[ActivityMaster] ([Id], [Name], [IsActive]) VALUES (N'1e5829d2-d4e1-441a-abfc-30f1487d72df', N'gdfg', 1)
INSERT [dbo].[ActivityMaster] ([Id], [Name], [IsActive]) VALUES (N'42d9d676-5604-442f-855a-2280f0d12e15', N'Netting', 1)
INSERT [dbo].[ActivityMaster] ([Id], [Name], [IsActive]) VALUES (N'95bd0b27-301b-4a0d-a898-983090f894b4', N'Vendor Reconcilation', 1)
INSERT [dbo].[ActivityMaster] ([Id], [Name], [IsActive]) VALUES (N'9e234482-71ee-4214-9e74-fe59bd906ac1', N'Credit Control', 1)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6261695f-9cbf-4b98-916b-bf6f8e375dd0', N'Manager', NULL, N'c3445a17-6980-4421-a411-8882b4224b7b')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7bd989f1-7fae-4e60-817a-b7ab04f85f48', N'Supervisor', NULL, N'844a5fe3-a0b6-4590-9354-ca6c446c5933')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ab44f43b-ec92-4453-835b-e6c196b7c521', N'User', NULL, N'fdb9d854-0166-4707-b8f0-d4b7cd44bef4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'afc17bbd-0d0c-429a-b33b-e25d6fe918de', N'QC', NULL, N'b46a05dd-e17b-4e81-89f2-11c54a7b9cfe')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'73e31ddd-9f48-4f3d-8b9b-743b653182e2', N'7bd989f1-7fae-4e60-817a-b7ab04f85f48')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2288c86b-e458-4a03-aedc-f8542cd86e37', N'ab44f43b-ec92-4453-835b-e6c196b7c521')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2288c86b-e458-4a03-aedc-f8542cd86e37', N'vaibhava', N'310475', N'vaibhava', 1, 0, N'VAIBHAVA', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPwiF1MPY4lXe3Ebjjq0Ii8eQQmSp/QFj77JQh8UyId3kvMGcoGwbVzhuw5UFZGdKA==', N'TD3YWXFY7GIONDLSQK7F6K7767HQO7UB', N'4a6153cb-74dd-4c7c-a75c-665423d0480d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [Wnsid], [CitrixId], [IsActive], [IsDelete], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'73e31ddd-9f48-4f3d-8b9b-743b653182e2', N'tusharp', N'u139289', N'tusharp', 1, 0, N'TUSHARP', NULL, NULL, 0, NULL, N'DOW2ETCVDFFJKXOZ754HGKEZD3GVTQMX', N'5654b17c-5967-4e3e-b816-ebf15c39b72f', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'433a9eb1-29f8-453d-90c2-7b502468d96c', N'Italy', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'59d9287c-cfbe-47a7-87a4-753db3397579', N'Spain', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'5dbbdab1-b472-4fe5-99c2-6e269769472c', N'Germany', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'63cd4fa7-e674-422e-b2eb-371d7b951337', N'CZ', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'67b2e755-a742-4f89-a4e8-084a270e611b', N'UK', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'698298b9-d344-4ca7-a857-db61629168fc', N'Dubai', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'7790140e-dcd6-41fd-aa5a-c6ec018c452b', N'Netherlands', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'9e9dfae8-37c1-4401-8579-cf78e86f3938', N'Romania', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'b241d30b-80f7-4d3d-aa79-1f8735dc985c', N'Belgium', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'bc4657e9-acca-4ed0-a941-6bb8a7615136', N'France', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
INSERT [dbo].[CountryMaster] ([Id], [Name], [RegionId], [IsActive]) VALUES (N'de088cdc-9c34-4c85-b643-bebeacd07946', N'Saudi', N'948b83c8-662b-46ec-8ea4-d14c597f6c52', 1)
GO
INSERT [dbo].[EmailActivityMaster] ([Id], [ActivityId], [EmailId], [IsActive], [CountryId]) VALUES (N'a89582f6-caf1-42bd-b731-020d61c27798', N'42d9d676-5604-442f-855a-2280f0d12e15', N'f5791e16-4cde-4a9c-929c-53ceff4b159a', 1, N'b241d30b-80f7-4d3d-aa79-1f8735dc985c')
INSERT [dbo].[EmailActivityMaster] ([Id], [ActivityId], [EmailId], [IsActive], [CountryId]) VALUES (N'c1563f7e-fc39-4626-b82d-bbf4b8197a17', N'09fa8859-0edc-4563-9e71-6c82517028e1', N'86602acf-d1ef-4421-bb8b-131ae1aa75aa', 1, N'b241d30b-80f7-4d3d-aa79-1f8735dc985c')
GO
INSERT [dbo].[EmailCountryMasters] ([Id], [EmailId], [CountryId], [IsActive]) VALUES (N'190cd2cf-583f-4f99-8708-aece75625d0b', N'86602acf-d1ef-4421-bb8b-131ae1aa75aa', N'b241d30b-80f7-4d3d-aa79-1f8735dc985c', 1)
INSERT [dbo].[EmailCountryMasters] ([Id], [EmailId], [CountryId], [IsActive]) VALUES (N'3b1f4fe7-8866-4f40-af60-fb786b24a548', N'f5791e16-4cde-4a9c-929c-53ceff4b159a', N'b241d30b-80f7-4d3d-aa79-1f8735dc985c', 1)
INSERT [dbo].[EmailCountryMasters] ([Id], [EmailId], [CountryId], [IsActive]) VALUES (N'bb345297-0ece-400e-aa95-0345cf8f9fae', N'52bd4ae8-1f5f-4ad9-970e-1c01d6f6745a', N'b241d30b-80f7-4d3d-aa79-1f8735dc985c', 1)
GO
INSERT [dbo].[EmailMaster] ([Id], [EmailAddress], [EmailPassword], [Url], [SyncState], [LastSyncDateTime], [IsActive], [IsDelete], [AuthType]) VALUES (N'52bd4ae8-1f5f-4ad9-970e-1c01d6f6745a', N'LOGANT001@ecuworldwide.com', N'abcd@1234', N'https://outlook.office365.com/EWS/Exchange.asmx', NULL, NULL, 1, 0, N'ecuworldwide.com')
INSERT [dbo].[EmailMaster] ([Id], [EmailAddress], [EmailPassword], [Url], [SyncState], [LastSyncDateTime], [IsActive], [IsDelete], [AuthType]) VALUES (N'710ea7ac-4732-4cbd-b269-1156de29bac2', N'uknetting1@eu.eculine.net ', N'YWJjZEAxMjM0QA==', N'https://outlook.office365.com/EWS/Exchange.asmx', NULL, CAST(N'2023-02-10T10:44:22.6168370' AS DateTime2), 1, 0, N'eculine.net')
INSERT [dbo].[EmailMaster] ([Id], [EmailAddress], [EmailPassword], [Url], [SyncState], [LastSyncDateTime], [IsActive], [IsDelete], [AuthType]) VALUES (N'86602acf-d1ef-4421-bb8b-131ae1aa75aa', N'invoiceANR@ecuworldwide.com
', N'abcd@1234', N'https://outlook.office365.com/EWS/Exchange.asmx', NULL, NULL, 1, 0, N'ecuworldwide.com')
INSERT [dbo].[EmailMaster] ([Id], [EmailAddress], [EmailPassword], [Url], [SyncState], [LastSyncDateTime], [IsActive], [IsDelete], [AuthType]) VALUES (N'd14d6943-d989-4240-bd0d-9d6706a136a7', N'PayablesGermany@ecuworldwide.com', N'YWJjZEAxMjM0', N'https://outlook.office365.com/EWS/Exchange.asmx', NULL, CAST(N'2023-02-10T08:55:50.5931755' AS DateTime2), 1, 0, N'ecuworldwide.com')
INSERT [dbo].[EmailMaster] ([Id], [EmailAddress], [EmailPassword], [Url], [SyncState], [LastSyncDateTime], [IsActive], [IsDelete], [AuthType]) VALUES (N'f5791e16-4cde-4a9c-929c-53ceff4b159a', N'netting5@eu.eculine.net', N'abcd@1234', N'https://outlook.office365.com/EWS/Exchange.asmx', NULL, NULL, 1, 0, N'ecuworldwide.com')
GO
INSERT [dbo].[FolderMaster] ([Id], [MailBoxId], [FolderName], [FolderId], [ParenFolderId], [SyncState], [LastSyncDateTime], [ChangeKey], [IsActive], [IsDelete]) VALUES (N'181782e7-838d-4e32-8e35-50143bf85edf', N'f5791e16-4cde-4a9c-929c-53ceff4b159a', N'Agent', N'AAMkAGM5N2VkMjQ2LTNhZjMtNDQ2Yy1hNzY3LWYxMjEwN2EyYTM5NwAuAAAAAADG1LxlhvbSS71gk+GPO0v0AQDJRujc48TfTr7TspPX4Ka0AABmFcIgAAA=', N'AQMkAGM5N2VkMjQ2LTNhZjMtNDQANmMtYTc2Ny1mMTIxMDdhMmEzOTcALgAAA8bUvGWG9tJLvWCT4Y87S/QBAMlG6NzjxN9OvtOyk9fgprQAAAIBDAAAAA==', NULL, CAST(N'2023-02-06T13:42:34.0000000' AS DateTime2), NULL, 0, 0)
INSERT [dbo].[FolderMaster] ([Id], [MailBoxId], [FolderName], [FolderId], [ParenFolderId], [SyncState], [LastSyncDateTime], [ChangeKey], [IsActive], [IsDelete]) VALUES (N'45337c64-8a7f-4423-95b0-0e1780082c5d', N'f5791e16-4cde-4a9c-929c-53ceff4b159a', N'Inbox', N'AAMkAGM5N2VkMjQ2LTNhZjMtNDQ2Yy1hNzY3LWYxMjEwN2EyYTM5NwAuAAAAAADG1LxlhvbSS71gk+GPO0v0AQDJRujc48TfTr7TspPX4Ka0AABS3k7zAAA=', N'AAMkAGM5N2VkMjQ2LTNhZjMtNDQ2Yy1hNzY3LWYxMjEwN2EyYTM5NwAuAAAAAADG1LxlhvbSS71gk+GPO0v0AQDJRujc48TfTr7TspPX4Ka0AAA79fJ+AAA=', NULL, CAST(N'2022-09-12T15:04:33.0000000' AS DateTime2), NULL, 1, 0)
GO
INSERT [dbo].[RegionMaster] ([Id], [Name], [IsActive]) VALUES (N'948b83c8-662b-46ec-8ea4-d14c597f6c52', N'Europe', 1)
GO
INSERT [dbo].[UserActivityMaster] ([Id], [UserId], [ActivityId], [IsActive]) VALUES (N'385c4832-c7ce-4793-94b0-b0c3ff188cfc', N'2288c86b-e458-4a03-aedc-f8542cd86e37', N'09fa8859-0edc-4563-9e71-6c82517028e1', 1)
INSERT [dbo].[UserActivityMaster] ([Id], [UserId], [ActivityId], [IsActive]) VALUES (N'490736d3-0216-468f-8e39-1e3f4aedfa48', N'2288c86b-e458-4a03-aedc-f8542cd86e37', N'42d9d676-5604-442f-855a-2280f0d12e15', 1)
INSERT [dbo].[UserActivityMaster] ([Id], [UserId], [ActivityId], [IsActive]) VALUES (N'62e00dad-bd75-4592-b85e-7e7ada6c0cc1', N'2288c86b-e458-4a03-aedc-f8542cd86e37', N'95bd0b27-301b-4a0d-a898-983090f894b4', 1)
INSERT [dbo].[UserActivityMaster] ([Id], [UserId], [ActivityId], [IsActive]) VALUES (N'ea10dd0b-21e6-4f68-b80a-9205da2f472d', N'2288c86b-e458-4a03-aedc-f8542cd86e37', N'9e234482-71ee-4214-9e74-fe59bd906ac1', 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ActivityCountryMaster_ActivityId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_ActivityCountryMaster_ActivityId] ON [dbo].[ActivityCountryMaster]
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ActivityCountryMaster_CountryId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_ActivityCountryMaster_CountryId] ON [dbo].[ActivityCountryMaster]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 16-02-2023 13:22:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 16-02-2023 13:22:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CountryMaster_RegionId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_CountryMaster_RegionId] ON [dbo].[CountryMaster]
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EmailActivityMaster_ActivityId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_EmailActivityMaster_ActivityId] ON [dbo].[EmailActivityMaster]
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EmailActivityMaster_CountryId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_EmailActivityMaster_CountryId] ON [dbo].[EmailActivityMaster]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EmailActivityMaster_EmailId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_EmailActivityMaster_EmailId] ON [dbo].[EmailActivityMaster]
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EmailCountryMasters_CountryId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_EmailCountryMasters_CountryId] ON [dbo].[EmailCountryMasters]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EmailCountryMasters_EmailId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_EmailCountryMasters_EmailId] ON [dbo].[EmailCountryMasters]
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FolderActivityCountryMasters_ActivityCountryId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_FolderActivityCountryMasters_ActivityCountryId] ON [dbo].[FolderActivityCountryMasters]
(
	[ActivityCountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FolderActivityCountryMasters_FolderId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_FolderActivityCountryMasters_FolderId] ON [dbo].[FolderActivityCountryMasters]
(
	[FolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FolderMaster_MailBoxId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_FolderMaster_MailBoxId] ON [dbo].[FolderMaster]
(
	[MailBoxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StatusActivityMaster_ActivityId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_StatusActivityMaster_ActivityId] ON [dbo].[StatusActivityMaster]
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StatusActivityMaster_StatusId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_StatusActivityMaster_StatusId] ON [dbo].[StatusActivityMaster]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StatusCategoryMaster_CategoryId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_StatusCategoryMaster_CategoryId] ON [dbo].[StatusCategoryMaster]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StatusCategoryMaster_StatusActivityId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_StatusCategoryMaster_StatusActivityId] ON [dbo].[StatusCategoryMaster]
(
	[StatusActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserActivityMaster_ActivityId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_UserActivityMaster_ActivityId] ON [dbo].[UserActivityMaster]
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserActivityMaster_UserId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_UserActivityMaster_UserId] ON [dbo].[UserActivityMaster]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserCountryMaster_UserMasterId]    Script Date: 16-02-2023 13:22:38 ******/
CREATE NONCLUSTERED INDEX [IX_UserCountryMaster_UserMasterId] ON [dbo].[UserCountryMaster]
(
	[UserMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmailActivityMaster] ADD  DEFAULT (N'') FOR [CountryId]
GO
ALTER TABLE [dbo].[EmailMaster] ADD  DEFAULT (N'') FOR [AuthType]
GO
ALTER TABLE [dbo].[ActivityCountryMaster]  WITH CHECK ADD  CONSTRAINT [FK_ActivityCountryMaster_ActivityMaster_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityCountryMaster] CHECK CONSTRAINT [FK_ActivityCountryMaster_ActivityMaster_ActivityId]
GO
ALTER TABLE [dbo].[ActivityCountryMaster]  WITH CHECK ADD  CONSTRAINT [FK_ActivityCountryMaster_CountryMaster_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivityCountryMaster] CHECK CONSTRAINT [FK_ActivityCountryMaster_CountryMaster_CountryId]
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
ALTER TABLE [dbo].[CountryMaster]  WITH CHECK ADD  CONSTRAINT [FK_CountryMaster_RegionMaster_RegionId] FOREIGN KEY([RegionId])
REFERENCES [dbo].[RegionMaster] ([Id])
GO
ALTER TABLE [dbo].[CountryMaster] CHECK CONSTRAINT [FK_CountryMaster_RegionMaster_RegionId]
GO
ALTER TABLE [dbo].[EmailActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_EmailActivityMaster_ActivityMaster_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailActivityMaster] CHECK CONSTRAINT [FK_EmailActivityMaster_ActivityMaster_ActivityId]
GO
ALTER TABLE [dbo].[EmailActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_EmailActivityMaster_CountryMaster_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailActivityMaster] CHECK CONSTRAINT [FK_EmailActivityMaster_CountryMaster_CountryId]
GO
ALTER TABLE [dbo].[EmailActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_EmailActivityMaster_EmailMaster_EmailId] FOREIGN KEY([EmailId])
REFERENCES [dbo].[EmailMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailActivityMaster] CHECK CONSTRAINT [FK_EmailActivityMaster_EmailMaster_EmailId]
GO
ALTER TABLE [dbo].[EmailCountryMasters]  WITH CHECK ADD  CONSTRAINT [FK_EmailCountryMasters_CountryMaster_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailCountryMasters] CHECK CONSTRAINT [FK_EmailCountryMasters_CountryMaster_CountryId]
GO
ALTER TABLE [dbo].[EmailCountryMasters]  WITH CHECK ADD  CONSTRAINT [FK_EmailCountryMasters_EmailMaster_EmailId] FOREIGN KEY([EmailId])
REFERENCES [dbo].[EmailMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailCountryMasters] CHECK CONSTRAINT [FK_EmailCountryMasters_EmailMaster_EmailId]
GO
ALTER TABLE [dbo].[FolderActivityCountryMasters]  WITH CHECK ADD  CONSTRAINT [FK_FolderActivityCountryMasters_ActivityCountryMaster_ActivityCountryId] FOREIGN KEY([ActivityCountryId])
REFERENCES [dbo].[ActivityCountryMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FolderActivityCountryMasters] CHECK CONSTRAINT [FK_FolderActivityCountryMasters_ActivityCountryMaster_ActivityCountryId]
GO
ALTER TABLE [dbo].[FolderActivityCountryMasters]  WITH CHECK ADD  CONSTRAINT [FK_FolderActivityCountryMasters_FolderMaster_FolderId] FOREIGN KEY([FolderId])
REFERENCES [dbo].[FolderMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FolderActivityCountryMasters] CHECK CONSTRAINT [FK_FolderActivityCountryMasters_FolderMaster_FolderId]
GO
ALTER TABLE [dbo].[FolderMaster]  WITH CHECK ADD  CONSTRAINT [FK_FolderMaster_EmailMaster_MailBoxId] FOREIGN KEY([MailBoxId])
REFERENCES [dbo].[EmailMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FolderMaster] CHECK CONSTRAINT [FK_FolderMaster_EmailMaster_MailBoxId]
GO
ALTER TABLE [dbo].[StatusActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusActivityMaster_ActivityMaster_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StatusActivityMaster] CHECK CONSTRAINT [FK_StatusActivityMaster_ActivityMaster_ActivityId]
GO
ALTER TABLE [dbo].[StatusActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusActivityMaster_StatusMaster_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[StatusMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StatusActivityMaster] CHECK CONSTRAINT [FK_StatusActivityMaster_StatusMaster_StatusId]
GO
ALTER TABLE [dbo].[StatusCategoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusCategoryMaster_CategoryMaster_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[CategoryMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StatusCategoryMaster] CHECK CONSTRAINT [FK_StatusCategoryMaster_CategoryMaster_CategoryId]
GO
ALTER TABLE [dbo].[StatusCategoryMaster]  WITH CHECK ADD  CONSTRAINT [FK_StatusCategoryMaster_StatusActivityMaster_StatusActivityId] FOREIGN KEY([StatusActivityId])
REFERENCES [dbo].[StatusActivityMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StatusCategoryMaster] CHECK CONSTRAINT [FK_StatusCategoryMaster_StatusActivityMaster_StatusActivityId]
GO
ALTER TABLE [dbo].[UserActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserActivityMaster_ActivityMaster_ActivityId] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[ActivityMaster] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserActivityMaster] CHECK CONSTRAINT [FK_UserActivityMaster_ActivityMaster_ActivityId]
GO
ALTER TABLE [dbo].[UserActivityMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserActivityMaster_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserActivityMaster] CHECK CONSTRAINT [FK_UserActivityMaster_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[UserCountryMaster]  WITH CHECK ADD  CONSTRAINT [FK_UserCountryMaster_AspNetUsers_UserMasterId] FOREIGN KEY([UserMasterId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[UserCountryMaster] CHECK CONSTRAINT [FK_UserCountryMaster_AspNetUsers_UserMasterId]
GO
USE [master]
GO
ALTER DATABASE [OpsAccountingTrackX] SET  READ_WRITE 
GO
