USE [master]
GO
/****** Object:  Database [DiagnosesCenterDB]    Script Date: 01-Dec-16 2:09:33 PM ******/
CREATE DATABASE [DiagnosesCenterDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DiagnosesCenterDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DiagnosesCenterDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DiagnosesCenterDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DiagnosesCenterDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DiagnosesCenterDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DiagnosesCenterDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DiagnosesCenterDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DiagnosesCenterDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DiagnosesCenterDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DiagnosesCenterDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DiagnosesCenterDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DiagnosesCenterDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DiagnosesCenterDB] SET  MULTI_USER 
GO
ALTER DATABASE [DiagnosesCenterDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DiagnosesCenterDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DiagnosesCenterDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DiagnosesCenterDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DiagnosesCenterDB]
GO
/****** Object:  Table [dbo].[CabinInfo]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CabinInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReleaseDate] [datetime] NULL,
	[AmountOfStay] [int] NULL,
	[PerDayCost] [decimal](18, 0) NULL,
	[TotalCost] [decimal](18, 0) NULL,
	[PatientId] [varchar](50) NULL,
 CONSTRAINT [PK_CabinInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clinical]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clinical](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cost] [float] NULL,
	[Description] [nvarchar](2000) NULL,
	[PatientId] [varchar](50) NULL,
 CONSTRAINT [PK_Clinical] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Diagnoses]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diagnoses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cost] [float] NULL,
	[Description] [varchar](1500) NULL,
	[PatientId] [varchar](50) NULL,
 CONSTRAINT [PK_Diagnoses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctors](
	[ID] [int] IDENTITY(2000,1) NOT NULL,
	[Name] [varchar](350) NULL,
	[Address] [varchar](500) NULL,
	[Age] [varchar](50) NULL,
	[Sex] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Education] [nvarchar](max) NULL,
	[Speciality] [varchar](2050) NULL,
	[Department] [varchar](2050) NULL,
	[Salary] [float] NULL,
	[DateOfJoining] [date] NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoctorsSchedule]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorsSchedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DoctorID] [int] NULL,
	[Shift] [varchar](500) NULL,
 CONSTRAINT [PK_DoctorsSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Drug]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Drug](
	[DrugId] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [varchar](500) NULL,
	[GroupName] [varchar](500) NULL,
	[Company] [varchar](500) NULL,
	[Cost] [float] NULL,
	[AmountOfDrug] [int] NULL,
 CONSTRAINT [PK_Drug] PRIMARY KEY CLUSTERED 
(
	[DrugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Instrument]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Instrument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [varchar](50) NULL,
	[Cost] [float] NULL,
	[Description] [varchar](2500) NULL,
 CONSTRAINT [PK_Instrument] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginInfo]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [varchar](50) NULL,
	[UserName] [varchar](250) NULL,
	[Password] [varchar](200) NULL,
	[Name] [varchar](350) NULL,
 CONSTRAINT [PK_LoginInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nurses]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nurses](
	[ID] [int] IDENTITY(5000,1) NOT NULL,
	[Name] [nvarchar](290) NULL,
	[Address] [nvarchar](1500) NULL,
	[Age] [nvarchar](500) NULL,
	[Sex] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](500) NULL,
	[Education] [nvarchar](2500) NULL,
	[Specialist] [nvarchar](2500) NULL,
	[Department] [nvarchar](500) NULL,
	[Salary] [float] NULL,
	[DateOfJoining] [date] NULL,
 CONSTRAINT [PK_Nurse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NurseSchedule]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NurseSchedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NurseID] [int] NULL,
	[Shift] [varchar](650) NULL,
 CONSTRAINT [PK_NurseSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patients](
	[PatientId] [varchar](50) NOT NULL,
	[Name] [varchar](200) NULL,
	[Age] [int] NULL,
	[Sex] [varchar](50) NULL,
	[AddressP] [varchar](500) NULL,
	[MobileNo] [varchar](50) NULL,
	[Admission] [datetime] NULL,
	[BedNo] [varchar](50) NULL,
	[CabinNo] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[CabinType] [varchar](50) NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](1050) NULL,
	[PatientId] [varchar](50) NULL,
	[CabinCost] [float] NULL,
	[ClinicalCost] [float] NULL,
	[DiagnosesCost] [float] NULL,
	[InstrumentCost] [float] NULL,
	[TreatmentCost] [float] NULL,
	[TotalCost] [float] NULL,
	[Discount] [float] NULL,
	[AdvancePaid] [float] NULL,
	[TotalDue] [float] NULL,
	[NetPayment] [float] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](550) NULL,
	[DiseaseName] [varchar](550) NULL,
	[Cost] [float] NULL,
	[Description] [nvarchar](max) NULL,
	[PatientId] [varchar](50) NULL,
 CONSTRAINT [PK_Treatment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[DoctorScheduleUserView]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[DoctorScheduleUserView]
AS
SELECT Doctors.Name,Doctors.Speciality,Doctors.Department,DoctorsSchedule.Shift from Doctors join DoctorsSchedule on Doctors.ID=DoctorsSchedule.DoctorID


GO
/****** Object:  View [dbo].[DoctorsScheduleView]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[DoctorsScheduleView]
AS
select Doctors.ID as DoctorID,Doctors.Name,Doctors.Department,Doctors.Education,DoctorsSchedule.Shift from Doctors 
Left Join DoctorsSchedule on Doctors.ID=DoctorsSchedule.DoctorID


GO
/****** Object:  View [dbo].[NurseScheduleUserView]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[NurseScheduleUserView]
AS
SELECT Nurses.Name,Nurses.MobileNo,Nurses.Specialist,Nurses.Department,NurseSchedule.Shift from Nurses join NurseSchedule on Nurses.ID=NurseSchedule.NurseID

GO
/****** Object:  View [dbo].[NurseScheduleView]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[NurseScheduleView]
AS
select Nurses.ID as NurseID,Nurses.Name,Nurses.Department,Nurses.Education,NurseSchedule.Shift from Nurses 
Left Join NurseSchedule on Nurses.ID=NurseSchedule.NurseID

GO
/****** Object:  View [dbo].[PaymentCost]    Script Date: 01-Dec-16 2:09:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[PaymentCost]
AS
SELECT
    Patients.Name,Patients.PatientId,ISNULL (Instrument.Cost , 0.0 ) as InstrumentCost,ISNULL(Treatment.Cost,0.0) as TreatmentCost,ISNULL(Diagnoses.Cost,0.0) as DiagnosesCost,ISNULL(Clinical.Cost,0.0) as ClinicalCost,ISNULL(CabinInfo.TotalCost ,0.0) as CabinCost FROM Patients

	  LEFT JOIN Instrument ON Patients.PatientId=Instrument.PatientId
	  LEFT JOIN Treatment ON Patients.PatientId=Treatment.PatientId
	  LEFT JOIN Diagnoses ON Patients.PatientId=Diagnoses.PatientId
	  LEFT JOIN CabinInfo ON Patients.PatientId=CabinInfo.PatientId
	  LEFT JOIN Clinical ON Patients.PatientId=Clinical.PatientId
GO
SET IDENTITY_INSERT [dbo].[CabinInfo] ON 

INSERT [dbo].[CabinInfo] ([ID], [ReleaseDate], [AmountOfStay], [PerDayCost], [TotalCost], [PatientId]) VALUES (11, CAST(0x0000A6CD00000000 AS DateTime), 2, CAST(30000 AS Decimal(18, 0)), CAST(60000 AS Decimal(18, 0)), N'F20161151')
INSERT [dbo].[CabinInfo] ([ID], [ReleaseDate], [AmountOfStay], [PerDayCost], [TotalCost], [PatientId]) VALUES (12, CAST(0x0000A6D700000000 AS DateTime), 38, CAST(200 AS Decimal(18, 0)), CAST(7600 AS Decimal(18, 0)), N'M2016111011')
INSERT [dbo].[CabinInfo] ([ID], [ReleaseDate], [AmountOfStay], [PerDayCost], [TotalCost], [PatientId]) VALUES (13, CAST(0x0000A6D000000000 AS DateTime), 1, CAST(1250 AS Decimal(18, 0)), CAST(1200 AS Decimal(18, 0)), N'M201612133')
SET IDENTITY_INSERT [dbo].[CabinInfo] OFF
SET IDENTITY_INSERT [dbo].[Clinical] ON 

INSERT [dbo].[Clinical] ([ID], [Cost], [Description], [PatientId]) VALUES (6, 15000, N'Clinical costing standards Healthcare Costing for Value Institute. Working out the cost of services in the NHS is subject to national guidance and can be done', N'F20161151')
INSERT [dbo].[Clinical] ([ID], [Cost], [Description], [PatientId]) VALUES (7, 1200, N'Nothing ......', N'M2016111011')
INSERT [dbo].[Clinical] ([ID], [Cost], [Description], [PatientId]) VALUES (8, 1232, N'Soooooooooo', N'M201612133')
SET IDENTITY_INSERT [dbo].[Clinical] OFF
SET IDENTITY_INSERT [dbo].[Diagnoses] ON 

INSERT [dbo].[Diagnoses] ([ID], [Cost], [Description], [PatientId]) VALUES (2, 10000, N'Noooooooooo Yep', N'F20161151')
INSERT [dbo].[Diagnoses] ([ID], [Cost], [Description], [PatientId]) VALUES (3, 120, N'Please Pay Shohag', N'M201611110')
INSERT [dbo].[Diagnoses] ([ID], [Cost], [Description], [PatientId]) VALUES (4, 1104, N'asdfghjerty  asdfgh', N'M2016111011')
INSERT [dbo].[Diagnoses] ([ID], [Cost], [Description], [PatientId]) VALUES (5, 2345, N'Diagnoses cost,,', N'M201612133')
SET IDENTITY_INSERT [dbo].[Diagnoses] OFF
SET IDENTITY_INSERT [dbo].[Doctors] ON 

INSERT [dbo].[Doctors] ([ID], [Name], [Address], [Age], [Sex], [MobileNo], [Education], [Speciality], [Department], [Salary], [DateOfJoining]) VALUES (2016, N'MD SHOHAG HASSAN', N'Gaibandha', N'24', N'Male', N'01926029000', N'MBBS,FCPS', N'Cardiothoracic Surgery', N'Neurology', 120000, CAST(0x0C3C0B00 AS Date))
INSERT [dbo].[Doctors] ([ID], [Name], [Address], [Age], [Sex], [MobileNo], [Education], [Speciality], [Department], [Salary], [DateOfJoining]) VALUES (2017, N'OSMAN GONI', N'Feni', N'23', N'Male', N'12345678', N'MBSS', N'Internal Medicine', N'Neurology', 60000, CAST(0x0C3C0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Doctors] OFF
SET IDENTITY_INSERT [dbo].[DoctorsSchedule] ON 

INSERT [dbo].[DoctorsSchedule] ([ID], [DoctorID], [Shift]) VALUES (6, 2016, N'Evening')
INSERT [dbo].[DoctorsSchedule] ([ID], [DoctorID], [Shift]) VALUES (8, 2017, N'Evening')
SET IDENTITY_INSERT [dbo].[DoctorsSchedule] OFF
SET IDENTITY_INSERT [dbo].[Drug] ON 

INSERT [dbo].[Drug] ([DrugId], [Name], [GroupName], [Company], [Cost], [AmountOfDrug]) VALUES (1018, N'Losectil', N'Omiprozole-20mg', N'SKF', 5, 100)
INSERT [dbo].[Drug] ([DrugId], [Name], [GroupName], [Company], [Cost], [AmountOfDrug]) VALUES (1019, N'Filmet', N'Metronadozole-400mg', N'Beximco Pharma', 11, 500)
SET IDENTITY_INSERT [dbo].[Drug] OFF
SET IDENTITY_INSERT [dbo].[Instrument] ON 

INSERT [dbo].[Instrument] ([ID], [PatientId], [Cost], [Description]) VALUES (4, N'F20161151', 12000, N'Nothing to')
INSERT [dbo].[Instrument] ([ID], [PatientId], [Cost], [Description]) VALUES (5, N'M2016111011', 2300, N'asjkl fghjkl')
INSERT [dbo].[Instrument] ([ID], [PatientId], [Cost], [Description]) VALUES (6, N'M201612133', 2345, N'Instrumental Cost......')
SET IDENTITY_INSERT [dbo].[Instrument] OFF
SET IDENTITY_INSERT [dbo].[LoginInfo] ON 

INSERT [dbo].[LoginInfo] ([Id], [UserType], [UserName], [Password], [Name]) VALUES (1, N'Administrator', N'shohag', N'1234', N'Shohag Hassan')
INSERT [dbo].[LoginInfo] ([Id], [UserType], [UserName], [Password], [Name]) VALUES (2, N'User', N'Arif', N'1234', N'MD Arifur Rahaman')
SET IDENTITY_INSERT [dbo].[LoginInfo] OFF
SET IDENTITY_INSERT [dbo].[Nurses] ON 

INSERT [dbo].[Nurses] ([ID], [Name], [Address], [Age], [Sex], [MobileNo], [Education], [Specialist], [Department], [Salary], [DateOfJoining]) VALUES (5007, N'Susmita Sen', N'Chittagong', N'27', N'Female', N'019287652', N'HSC', N'Hospitals', N'Neurology', 26050, CAST(0x253C0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Nurses] OFF
SET IDENTITY_INSERT [dbo].[NurseSchedule] ON 

INSERT [dbo].[NurseSchedule] ([ID], [NurseID], [Shift]) VALUES (1008, 5007, N'Morning ')
SET IDENTITY_INSERT [dbo].[NurseSchedule] OFF
INSERT [dbo].[Patients] ([PatientId], [Name], [Age], [Sex], [AddressP], [MobileNo], [Admission], [BedNo], [CabinNo], [Type], [CabinType]) VALUES (N'F20161151', N'Salina Gomes', 22, N'Female', N'UK', N'9876545678', CAST(0x0000A6CB00000000 AS DateTime), N'1', N'5', N'Indoor', N'V I P')
INSERT [dbo].[Patients] ([PatientId], [Name], [Age], [Sex], [AddressP], [MobileNo], [Admission], [BedNo], [CabinNo], [Type], [CabinType]) VALUES (N'M2016111011', N'Shuva', 24, N'Male', N'Chittagong', N'1234567', CAST(0x0000A6B100000000 AS DateTime), N'11', N'101', N'Indoor', N'V I P')
INSERT [dbo].[Patients] ([PatientId], [Name], [Age], [Sex], [AddressP], [MobileNo], [Admission], [BedNo], [CabinNo], [Type], [CabinType]) VALUES (N'M201611110', N'Shohag', 23, N'Male', N'IIUC-Hall-2', N'01926029000', CAST(0x0000A6C900000000 AS DateTime), N'10', N'2', N'Indoor', N'Single ')
INSERT [dbo].[Patients] ([PatientId], [Name], [Age], [Sex], [AddressP], [MobileNo], [Admission], [BedNo], [CabinNo], [Type], [CabinType]) VALUES (N'M201612133', N'Shohag', 24, N'Male', N'IIUC', N'01926029000', CAST(0x0000A6CF00000000 AS DateTime), N'33', N'11', N'Indoor', N'General')
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([ID], [Name], [PatientId], [CabinCost], [ClinicalCost], [DiagnosesCost], [InstrumentCost], [TreatmentCost], [TotalCost], [Discount], [AdvancePaid], [TotalDue], [NetPayment]) VALUES (4, N'Salina Gomes', N'F20161151', 60000, 15000, 10000, 12000, 2000, 99000, 10, 9100, 80000, 89100)
INSERT [dbo].[Payment] ([ID], [Name], [PatientId], [CabinCost], [ClinicalCost], [DiagnosesCost], [InstrumentCost], [TreatmentCost], [TotalCost], [Discount], [AdvancePaid], [TotalDue], [NetPayment]) VALUES (5, N'Shohag', N'M201611110', 0, 0, 120, 0, 0, 120, 10, 100, 8, 108)
INSERT [dbo].[Payment] ([ID], [Name], [PatientId], [CabinCost], [ClinicalCost], [DiagnosesCost], [InstrumentCost], [TreatmentCost], [TotalCost], [Discount], [AdvancePaid], [TotalDue], [NetPayment]) VALUES (6, N'Shuva', N'M2016111011', 7600, 1200, 1104, 2300, 2000, 14204, 10, 10000, 2783.6, 12783.6)
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[Treatment] ON 

INSERT [dbo].[Treatment] ([ID], [Name], [DiseaseName], [Cost], [Description], [PatientId]) VALUES (5, N'Gastrology', N'Belly', 2000, N'Nothing to Describe!!!', N'F20161151')
INSERT [dbo].[Treatment] ([ID], [Name], [DiseaseName], [Cost], [Description], [PatientId]) VALUES (6, N'Hair Fall Res.', N'Hair Fall Res.', 2000, N'Someting to do...', N'M2016111011')
INSERT [dbo].[Treatment] ([ID], [Name], [DiseaseName], [Cost], [Description], [PatientId]) VALUES (7, N'Dental ', N'Pain', 1300, N'So dangerous pain for us... to do', N'M201612133')
SET IDENTITY_INSERT [dbo].[Treatment] OFF
ALTER TABLE [dbo].[CabinInfo]  WITH CHECK ADD  CONSTRAINT [FK_CabinInfo_Patients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[CabinInfo] CHECK CONSTRAINT [FK_CabinInfo_Patients]
GO
ALTER TABLE [dbo].[Clinical]  WITH CHECK ADD  CONSTRAINT [FK_Clinical_Patients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Clinical] CHECK CONSTRAINT [FK_Clinical_Patients]
GO
ALTER TABLE [dbo].[Diagnoses]  WITH CHECK ADD  CONSTRAINT [FK_Diagnoses_Patients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Diagnoses] CHECK CONSTRAINT [FK_Diagnoses_Patients]
GO
ALTER TABLE [dbo].[DoctorsSchedule]  WITH CHECK ADD  CONSTRAINT [FK_DoctorsSchedule_DoctorsSchedule] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctors] ([ID])
GO
ALTER TABLE [dbo].[DoctorsSchedule] CHECK CONSTRAINT [FK_DoctorsSchedule_DoctorsSchedule]
GO
ALTER TABLE [dbo].[Instrument]  WITH CHECK ADD  CONSTRAINT [FK_Instrument_Patients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Instrument] CHECK CONSTRAINT [FK_Instrument_Patients]
GO
ALTER TABLE [dbo].[NurseSchedule]  WITH CHECK ADD  CONSTRAINT [FK_NurseSchedule_Nurses] FOREIGN KEY([NurseID])
REFERENCES [dbo].[Nurses] ([ID])
GO
ALTER TABLE [dbo].[NurseSchedule] CHECK CONSTRAINT [FK_NurseSchedule_Nurses]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Patients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Patients]
GO
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD  CONSTRAINT [FK_Treatment_Patients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patients] ([PatientId])
GO
ALTER TABLE [dbo].[Treatment] CHECK CONSTRAINT [FK_Treatment_Patients]
GO
USE [master]
GO
ALTER DATABASE [DiagnosesCenterDB] SET  READ_WRITE 
GO
