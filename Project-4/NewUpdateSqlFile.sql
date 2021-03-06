USE [master]
GO
/****** Object:  Database [StudentAttendenceAndPerformanceDb]    Script Date: 14-Dec-16 11:00:09 PM ******/
CREATE DATABASE [StudentAttendenceAndPerformanceDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentAttendenceAndPerformanceDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\StudentAttendenceAndPerformanceDb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudentAttendenceAndPerformanceDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\StudentAttendenceAndPerformanceDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentAttendenceAndPerformanceDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET  MULTI_USER 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [StudentAttendenceAndPerformanceDb]
GO
/****** Object:  StoredProcedure [dbo].[sp_Accounts]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Accounts]
(
    @Name         varchar(50),
    @FatherName  varchar(50),
    @MotherName   varchar(50),
    @Village      varchar(50),
    @Post        varchar(50),
	@Thana varchar(50),
	@Distric varchar(50),
	@Country varchar(50),
	@Nationality varchar(50),
	@MobileNo int,
	@Email varchar(50),
	@SSCPoint decimal(18, 0),
	@HSCPoint decimal(18, 0),
	@HonrsPoint decimal(18, 0),
	@MastersPoint decimal(18, 0),
	@SSCSession varchar(50),
	@HSCSession varchar(50),
	@HonrsSession varchar(50),
	@MastersSession varchar(50),
	@SSCOn varchar(50),
	@HSCOn varchar(50),
	@HonrsOn varchar(50),
	@MastersOn	varchar(50),
	@DateOfJoining datetime,
	@CurrentSalary int 
   
)
AS
BEGIN
insert into Accounts (Name,FatherName,MotherName,Village,Post,Thana,Distric,Country,Nationality,MobileNo,Email,SSCPoint,HSCPoint,HonrsPoint,MastersPoint,SSCSession,HSCSession,HonrsSession,MastersSession,SSCOn,HSCOn,HonrsOn,MastersOn,DateOfJoining,CurrentSalary) 
values( @Name, @FatherName,@MotherName,@Village,@Post,@Thana,@Distric,@Country,@Nationality,@MobileNo,@Email ,@SSCPoint,@HSCPoint,@HonrsPoint,@MastersPoint,@SSCSession,@HSCSession,@HonrsSession,@MastersSession,@SSCOn,@HSCOn,@HonrsOn,@MastersOn,@DateOfJoining,@CurrentSalary )   
END

GO
/****** Object:  StoredProcedure [dbo].[sp_LabController]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LabController]
(
    @Name         varchar(50),
    @FatherName  varchar(50),
    @MotherName   varchar(50),
    @Village      varchar(50),
    @Post        varchar(50),
	@Thana varchar(50),
	@Distric varchar(50),
	@Country varchar(50),
	@Nationality varchar(50),
	@MobileNo int,
	@Email varchar(50),
	@SSCPoint decimal(18, 0),
	@HSCPoint decimal(18, 0),
	@HonrsPoint decimal(18, 0),
	@MastersPoint decimal(18, 0),
	@SSCSession varchar(50),
	@HSCSession varchar(50),
	@HonrsSession varchar(50),
	@MastersSession varchar(50),
	@SSCOn varchar(50),
	@HSCOn varchar(50),
	@HonrsOn varchar(50),
	@MastersOn	varchar(50),
	@Designation varchar(50),
	@DateOfJoining datetime,
	@CurrentSalary int 
	
   
)
AS
BEGIN
insert into LabController (Name,FatherName,MotherName,Village,Post,Thana,Distric,Country,Nationality,MobileNo,Email,SSCPoint,HSCPoint,HonrsPoint,MastersPoint,SSCSession,HSCSession,HonrsSession,MastersSession,SSCOn,HSCOn,HonrsOn,MastersOn,Designation,DateOfJoining,CurrentSalary) 
values( @Name, @FatherName,@MotherName,@Village,@Post,@Thana,@Distric,@Country,@Nationality,@MobileNo,@Email ,@SSCPoint,@HSCPoint,@HonrsPoint,@MastersPoint,@SSCSession,@HSCSession,@HonrsSession,@MastersSession,@SSCOn,@HSCOn,@HonrsOn,@MastersOn,@Designation,@DateOfJoining,@CurrentSalary )   
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Labrarian]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Labrarian]
(
    @Name         varchar(50),
    @FatherName  varchar(50),
    @MotherName   varchar(50),
    @Village      varchar(50),
    @Post        varchar(50),
	@Thana varchar(50),
	@Distric varchar(50),
	@Country varchar(50),
	@Nationality varchar(50),
	@MobileNo int,
	@Email varchar(50),
	@SSCPoint decimal(18, 0),
	@HSCPoint decimal(18, 0),
	@HonrsPoint decimal(18, 0),
	@MastersPoint decimal(18, 0),
	@SSCSession varchar(50),
	@HSCSession varchar(50),
	@HonrsSession varchar(50),
	@MastersSession varchar(50),
	@SSCOn varchar(50),
	@HSCOn varchar(50),
	@HonrsOn varchar(50),
	@MastersOn	varchar(50),
	@Designation varchar(50),
	@DateOfJoining datetime,
	@CurrentSalary int 
	
   
)
AS
BEGIN
insert into Librarian (Name,FatherName,MotherName,Village,Post,Thana,Distric,Country,Nationality,MobileNo,Email,SSCPoint,HSCPoint,HonrsPoint,MastersPoint,SSCSession,HSCSession,HonrsSession,MastersSession,SSCOn,HSCOn,HonrsOn,MastersOn,Designation,DateOfJoining,CurrentSalary) 
values( @Name, @FatherName,@MotherName,@Village,@Post,@Thana,@Distric,@Country,@Nationality,@MobileNo,@Email ,@SSCPoint,@HSCPoint,@HonrsPoint,@MastersPoint,@SSCSession,@HSCSession,@HonrsSession,@MastersSession,@SSCOn,@HSCOn,@HonrsOn,@MastersOn,@Designation,@DateOfJoining,@CurrentSalary )   
END

GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[Village] [varchar](50) NULL,
	[Post] [varchar](50) NULL,
	[Thana] [varchar](50) NULL,
	[Distric] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[MobileNo] [int] NULL,
	[Email] [varchar](50) NULL,
	[SSCPoint] [decimal](18, 0) NULL,
	[HSCPoint] [decimal](18, 0) NULL,
	[HonrsPoint] [decimal](18, 0) NULL,
	[MastersPoint] [decimal](18, 0) NULL,
	[SSCSession] [varchar](50) NULL,
	[HSCSession] [varchar](50) NULL,
	[HonrsSession] [varchar](50) NULL,
	[MastersSession] [varchar](50) NULL,
	[SSCOn] [varchar](50) NULL,
	[HSCOn] [varchar](50) NULL,
	[HonrsOn] [varchar](50) NULL,
	[MastersOn] [varchar](50) NULL,
	[DateOfJoining] [datetime] NULL,
	[CurrentSalary] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administrator](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[Village] [varchar](50) NULL,
	[Post] [varchar](50) NULL,
	[Thana] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[MobileNo] [int] NULL,
	[Email] [varchar](50) NULL,
	[SSCPoint] [decimal](18, 0) NULL,
	[HSCPoint] [decimal](18, 0) NULL,
	[HonrsPoint] [decimal](18, 0) NULL,
	[MastersPoint] [decimal](18, 0) NULL,
	[SSCSession] [varchar](50) NULL,
	[HSCSession] [varchar](50) NULL,
	[HonrsSession] [varchar](50) NULL,
	[MastersSession] [varchar](50) NULL,
	[SSCOn] [varchar](50) NULL,
	[HSCOn] [varchar](50) NULL,
	[HonrsOn] [varchar](50) NULL,
	[MastersOn] [varchar](50) NULL,
	[DateOfJoining] [datetime] NULL,
	[CurrentSalary] [int] NULL,
	[Nationality] [varchar](50) NULL,
 CONSTRAINT [PK_Administrator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LabController]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LabController](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[Village] [varchar](50) NULL,
	[Post] [varchar](50) NULL,
	[Thana] [varchar](50) NULL,
	[Distric] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[MobileNo] [int] NULL,
	[Email] [varchar](50) NULL,
	[SSCPoint] [decimal](18, 0) NULL,
	[HSCPoint] [decimal](18, 0) NULL,
	[HonrsPoint] [decimal](18, 0) NULL,
	[MastersPoint] [decimal](18, 0) NULL,
	[SSCSession] [varchar](50) NULL,
	[HSCSession] [varchar](50) NULL,
	[HonrsSession] [varchar](50) NULL,
	[MastersSession] [varchar](50) NULL,
	[SSCOn] [varchar](50) NULL,
	[HSCOn] [varchar](50) NULL,
	[HonrsOn] [varchar](50) NULL,
	[MastersOn] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[DateOfJoining] [datetime] NULL,
	[CurrentSalary] [int] NULL,
 CONSTRAINT [PK_LabController] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Librarian]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Librarian](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[Village] [varchar](50) NULL,
	[Post] [varchar](50) NULL,
	[Thana] [varchar](50) NULL,
	[Distric] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[MobileNo] [int] NULL,
	[Email] [varchar](50) NULL,
	[SSCPoint] [decimal](18, 0) NULL,
	[HSCPoint] [decimal](18, 0) NULL,
	[HonrsPoint] [decimal](18, 0) NULL,
	[MastersPoint] [decimal](18, 0) NULL,
	[SSCSession] [varchar](50) NULL,
	[HSCSession] [varchar](50) NULL,
	[HonrsSession] [varchar](50) NULL,
	[MastersSession] [varchar](50) NULL,
	[SSCOn] [varchar](50) NULL,
	[HSCOn] [varchar](50) NULL,
	[HonrsOn] [varchar](50) NULL,
	[MastersOn] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[DateOfJoining] [datetime] NULL,
	[CurrentSalary] [int] NULL,
 CONSTRAINT [PK_Librarian] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginInfo]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_LoginInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentsPerformance]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentsPerformance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](50) NULL,
	[Semester] [varchar](50) NULL,
	[Batch] [varchar](50) NULL,
	[StudentId] [int] NULL,
	[Exam] [decimal](18, 0) NULL,
	[ExtraCurriculum] [decimal](18, 0) NULL,
	[TotalPerformanceValue] [decimal](18, 0) NULL,
 CONSTRAINT [PK_StudentsPerformance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stuff]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stuff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[Village] [varchar](50) NULL,
	[Post] [varchar](50) NULL,
	[Thana] [varchar](50) NULL,
	[Distric] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[MobileNo] [int] NULL,
	[Email] [varchar](50) NULL,
	[JSCPoint] [decimal](18, 0) NULL,
	[SSCPoint] [decimal](18, 0) NULL,
	[HSCPoint] [decimal](18, 0) NULL,
	[JSCSession] [varchar](50) NULL,
	[SSCSession] [varchar](50) NULL,
	[HSCSession] [varchar](50) NULL,
	[SSCOn] [varchar](50) NULL,
	[HSCOn] [varchar](50) NULL,
	[DateOfJoining] [datetime] NULL,
	[CurrentSalary] [int] NULL,
 CONSTRAINT [PK_Stuff] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[MotherName] [varchar](50) NULL,
	[Village] [varchar](50) NULL,
	[Post] [varchar](50) NULL,
	[Thana] [varchar](50) NULL,
	[Distric] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[MobileNo] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[SSCPoint] [decimal](18, 0) NULL,
	[HSCPoint] [decimal](18, 0) NULL,
	[HonrsPoint] [decimal](18, 0) NULL,
	[MastersPoint] [decimal](18, 0) NULL,
	[SSCSession] [varchar](50) NULL,
	[HSCSession] [varchar](50) NULL,
	[HonrsSession] [varchar](50) NULL,
	[MastersSession] [varchar](50) NULL,
	[SSCOn] [varchar](50) NULL,
	[HSCOn] [varchar](50) NULL,
	[HonrsOn] [varchar](50) NULL,
	[MastersOn] [varchar](50) NULL,
	[PHDOn] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[DateOfJoining] [datetime] NULL,
	[CurrentSalary] [int] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[TotalPerformanceCSE]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[TotalPerformanceCSE] AS
SELECT MAX(TotalPerformanceValue) as TotalPerformance  
FROM StudentsPerformance where Department='CSE'

GO
/****** Object:  View [dbo].[CSE]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[CSE] AS
select Department,StudentId,TotalPerformanceValue from StudentsPerformance 
 JOIN TotalPerformanceCSE on StudentsPerformance.TotalPerformanceValue = TotalPerformanceCSE.TotalPerformance


GO
/****** Object:  View [dbo].[TotalPerformanceEEE]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[TotalPerformanceEEE] AS
SELECT MAX(TotalPerformanceValue) as TotalPerformance  
FROM StudentsPerformance where Department='EEE'

GO
/****** Object:  View [dbo].[EEE]    Script Date: 14-Dec-16 11:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[EEE] AS
select Department,StudentId,TotalPerformanceValue from StudentsPerformance 
 JOIN TotalPerformanceEEE on StudentsPerformance.TotalPerformanceValue = TotalPerformanceEEE.TotalPerformance


GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([Id], [Name], [FatherName], [MotherName], [Village], [Post], [Thana], [Distric], [Country], [Nationality], [MobileNo], [Email], [SSCPoint], [HSCPoint], [HonrsPoint], [MastersPoint], [SSCSession], [HSCSession], [HonrsSession], [MastersSession], [SSCOn], [HSCOn], [HonrsOn], [MastersOn], [DateOfJoining], [CurrentSalary]) VALUES (5, N'w', N'r', N't', N'y', N'i', N'o', N'p', N'l', N'k', 1, N'gmail@gmail.com', CAST(2 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), N'9', N'0', N'8', N'7', N'Science', N'Science', N'Science', N'Science', CAST(0x0000A6E400000000 AS DateTime), 150000)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Administrator] ON 

INSERT [dbo].[Administrator] ([Id], [Name], [FatherName], [MotherName], [Village], [Post], [Thana], [District], [Country], [MobileNo], [Email], [SSCPoint], [HSCPoint], [HonrsPoint], [MastersPoint], [SSCSession], [HSCSession], [HonrsSession], [MastersSession], [SSCOn], [HSCOn], [HonrsOn], [MastersOn], [DateOfJoining], [CurrentSalary], [Nationality]) VALUES (1, N'Faisal', N'Shahbuddin', N'Morjiya', N'Shatkania', N'Shatkania', N'SHatkania', N'Chittagong', N'Bangladesh', 1900000000, N'faisal@yahoo.com', CAST(5 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), N'2010', N'2012', N'2018', N'2020', N'Science', N'Science', N'Science', N'Science', CAST(0x0000A6EE00000000 AS DateTime), 300000, N'Bangladeshi')
SET IDENTITY_INSERT [dbo].[Administrator] OFF
SET IDENTITY_INSERT [dbo].[LabController] ON 

INSERT [dbo].[LabController] ([Id], [Name], [FatherName], [MotherName], [Village], [Post], [Thana], [Distric], [Country], [Nationality], [MobileNo], [Email], [SSCPoint], [HSCPoint], [HonrsPoint], [MastersPoint], [SSCSession], [HSCSession], [HonrsSession], [MastersSession], [SSCOn], [HSCOn], [HonrsOn], [MastersOn], [Designation], [DateOfJoining], [CurrentSalary]) VALUES (1, N'q', N'w', N'e', N'r', N't', N'y', N'y', N'u', N'u', 1, N'g@gmail.com', CAST(2 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), N'2', N'2', N'2', N'2', N's', N'g', N'd', N'g', N'Junior Assitant', CAST(0x0000A6EB00000000 AS DateTime), 10000)
SET IDENTITY_INSERT [dbo].[LabController] OFF
SET IDENTITY_INSERT [dbo].[Librarian] ON 

INSERT [dbo].[Librarian] ([Id], [Name], [FatherName], [MotherName], [Village], [Post], [Thana], [Distric], [Country], [Nationality], [MobileNo], [Email], [SSCPoint], [HSCPoint], [HonrsPoint], [MastersPoint], [SSCSession], [HSCSession], [HonrsSession], [MastersSession], [SSCOn], [HSCOn], [HonrsOn], [MastersOn], [Designation], [DateOfJoining], [CurrentSalary]) VALUES (1, N'w', N'e', N'r', N't', N'u', N'i', N'y', N'u', N'i', 0, N'r@gmail.com', CAST(5 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), N'6', N'7', N'8', N'8', N'S', N's', N's', N'h', N'Junior Assitant', CAST(0x0000A6E400000000 AS DateTime), 10000)
SET IDENTITY_INSERT [dbo].[Librarian] OFF
SET IDENTITY_INSERT [dbo].[LoginInfo] ON 

INSERT [dbo].[LoginInfo] ([Id], [UserName], [Password], [Name]) VALUES (1, N'Shuva', N'12345', N'Shuva')
SET IDENTITY_INSERT [dbo].[LoginInfo] OFF
SET IDENTITY_INSERT [dbo].[StudentsPerformance] ON 

INSERT [dbo].[StudentsPerformance] ([Id], [Department], [Semester], [Batch], [StudentId], [Exam], [ExtraCurriculum], [TotalPerformanceValue]) VALUES (1, N'CSE', N'1st  Semester', N'1st ', 1320001, CAST(20 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[StudentsPerformance] ([Id], [Department], [Semester], [Batch], [StudentId], [Exam], [ExtraCurriculum], [TotalPerformanceValue]) VALUES (2, N'CSE', N'2nd Semester ', N'1st ', 1320002, CAST(45 AS Decimal(18, 0)), CAST(48 AS Decimal(18, 0)), CAST(93 AS Decimal(18, 0)))
INSERT [dbo].[StudentsPerformance] ([Id], [Department], [Semester], [Batch], [StudentId], [Exam], [ExtraCurriculum], [TotalPerformanceValue]) VALUES (3, N'CSE', N'3rd Semester', N'1st ', 1320003, CAST(25 AS Decimal(18, 0)), CAST(21 AS Decimal(18, 0)), CAST(46 AS Decimal(18, 0)))
INSERT [dbo].[StudentsPerformance] ([Id], [Department], [Semester], [Batch], [StudentId], [Exam], [ExtraCurriculum], [TotalPerformanceValue]) VALUES (4, N'CSE', N'2nd Semester ', N'2nd ', 1320027, CAST(20 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), CAST(40 AS Decimal(18, 0)))
INSERT [dbo].[StudentsPerformance] ([Id], [Department], [Semester], [Batch], [StudentId], [Exam], [ExtraCurriculum], [TotalPerformanceValue]) VALUES (5, N'EEE', N'3rd Semester', N'3rd ', 165434523, CAST(48 AS Decimal(18, 0)), CAST(42 AS Decimal(18, 0)), CAST(90 AS Decimal(18, 0)))
INSERT [dbo].[StudentsPerformance] ([Id], [Department], [Semester], [Batch], [StudentId], [Exam], [ExtraCurriculum], [TotalPerformanceValue]) VALUES (6, N'CSE', N'4rd Semester', N'4th', 1234567890, CAST(45 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), CAST(75 AS Decimal(18, 0)))
INSERT [dbo].[StudentsPerformance] ([Id], [Department], [Semester], [Batch], [StudentId], [Exam], [ExtraCurriculum], [TotalPerformanceValue]) VALUES (7, N'EEE', N'5th Semester', N'5th', 95432, CAST(45 AS Decimal(18, 0)), CAST(35 AS Decimal(18, 0)), CAST(80 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[StudentsPerformance] OFF
SET IDENTITY_INSERT [dbo].[Stuff] ON 

INSERT [dbo].[Stuff] ([Id], [Name], [FatherName], [MotherName], [Village], [Post], [Thana], [Distric], [Country], [Nationality], [MobileNo], [Email], [JSCPoint], [SSCPoint], [HSCPoint], [JSCSession], [SSCSession], [HSCSession], [SSCOn], [HSCOn], [DateOfJoining], [CurrentSalary]) VALUES (1, N'q', N'w', N'e', N'r', N't', N'y', N'u', N'i', N'i', 1, N't@gmail.com', CAST(6 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), N'1', N'2', N'3', N'Science', N'Science', CAST(0x0000A6E400000000 AS DateTime), 10000)
SET IDENTITY_INSERT [dbo].[Stuff] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([Id], [Name], [FatherName], [MotherName], [Village], [Post], [Thana], [Distric], [Country], [Nationality], [MobileNo], [Email], [SSCPoint], [HSCPoint], [HonrsPoint], [MastersPoint], [SSCSession], [HSCSession], [HonrsSession], [MastersSession], [SSCOn], [HSCOn], [HonrsOn], [MastersOn], [PHDOn], [Designation], [DateOfJoining], [CurrentSalary]) VALUES (2, N'Masud', N'masum', N'Mahafuza', N'vola', N'vola', N'vola', N'chittagong', N'bangladesh', N'bangladesh', 1900000000, N'masud@gmail.com', CAST(5 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), N'1992', N'1994', N'1998', N'2000', N'Science', N'Science', N'Science', N'Science', N'Science', N'Assistant Professor', CAST(0x0000A6F200000000 AS DateTime), 30000)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
USE [master]
GO
ALTER DATABASE [StudentAttendenceAndPerformanceDb] SET  READ_WRITE 
GO
