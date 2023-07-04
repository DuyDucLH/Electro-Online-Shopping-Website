USE [master]
GO
/****** Object:  Database [StudentManagementDB]    Script Date: 6/23/2023 10:07:42 AM ******/
CREATE DATABASE [StudentManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DUYDUC_LAP\MSSQL\DATA\StudentManagementDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DUYDUC_LAP\MSSQL\DATA\StudentManagementDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StudentManagementDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagementDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentManagementDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentManagementDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StudentManagementDB] SET QUERY_STORE = OFF
GO
USE [StudentManagementDB]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/23/2023 10:07:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [varchar](8) NOT NULL,
	[name] [nvarchar](30) NULL,
	[gender] [varchar](1) NULL,
	[dob] [date] NULL,
	[mark] [float] NULL,
	[email] [varchar](100) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE150105', N'Bùi Lý Khôi', N'M', CAST(N'2000-02-25' AS Date), 5.2845057590326778, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE150386', N'Lương Trọng Khoa', N'M', CAST(N'2003-06-22' AS Date), NULL, N'name5HE150386@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE150582', N'Phạm Văn Nam', N'F', CAST(N'2003-01-24' AS Date), 3.1732533886904148, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE150606', N'Võ Hữu Bảo', N'M', CAST(N'2004-01-29' AS Date), 9.74833476345443, N'name7HE150606@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE150676', N'Nguyễn Minh Anh', N'F', CAST(N'2002-06-27' AS Date), 3.0254831272296063, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE150764', N'Lê Thị Anh', N'M', CAST(N'2004-12-29' AS Date), 4.1396685522700052, N'name6@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151070', N'Hồ Minh Phát', N'F', CAST(N'2003-02-27' AS Date), 4.3680665569231225, N'nameHE151070@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151217', N'Ngô Hữu Bảo', N'F', CAST(N'2002-02-26' AS Date), 5.1198942098393543, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151263', N'Đỗ Hữu Hiếu', N'M', CAST(N'2001-01-08' AS Date), 7.97248066308558, N'name4HE151263@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151313', N'Lê Minh Quân', N'F', CAST(N'2002-10-21' AS Date), 0.11976113082829915, N'name1HE151313@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151466', N'Phan Trọng Kiệt', N'M', CAST(N'2001-11-25' AS Date), 2.3882839653586432, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151474', N'Ngô Văn Đạt', N'M', CAST(N'2001-09-13' AS Date), 4.4719490895382821, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151496', N'Bùi Đức Hoàng', N'F', CAST(N'2001-08-17' AS Date), 8.133885030697046, N'name9HE151496@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151523', N'Hoàng Hữu Hiếu', N'M', CAST(N'2000-08-13' AS Date), 4.75344389432736, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151715', N'Bùi Minh Bảo', N'M', NULL, 2.3197515878452695, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151800', N'Lương Thị Hoàng', NULL, CAST(N'2001-11-28' AS Date), 4.9556560604626574, N'name9@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151974', N'Nguyễn Hữu Duy', N'F', CAST(N'2002-01-08' AS Date), 1.1518955189510693, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE151997', N'Võ Trọng Hưng', N'F', CAST(N'2003-10-29' AS Date), 8.4445476804136064, N'name1HE151997@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152034', N'Hoàng Thị Hưng', N'M', CAST(N'2000-12-28' AS Date), 6.8139750728448734, N'name6@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152092', N'Võ Đức Tuấn', N'F', CAST(N'2001-04-17' AS Date), 8.4572306128485266, N'name3HE152092@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152125', N'Lê Đức Khoa', N'M', CAST(N'2003-07-17' AS Date), 0.5680981001668135, N'name7@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152207', N'Hoàng Trọng Huy', N'M', NULL, 9.6717406295574, N'name9HE152207@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152212', N'Hoàng Trọng Tuấn', N'F', CAST(N'2000-05-09' AS Date), 9.958320888671242, N'name4@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152382', N'Võ Hữu Hiếu', NULL, CAST(N'2004-01-18' AS Date), 5.5053295546701788, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152403', N'Phạm Văn Hoàng', N'F', NULL, 5.7591299506645317, N'name7HE152403@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152424', N'Lê Minh Anh', N'M', CAST(N'2001-02-14' AS Date), 6.8861216199054018, N'name3HE152424@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152677', N'Trần Minh Kiệt', N'F', CAST(N'2001-09-14' AS Date), 6.6776500673394876, N'name4@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE152987', N'Bùi Thị Khôi', N'M', CAST(N'2003-06-23' AS Date), 7.8203871603218778, N'name1HE152987@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE153040', N'Trương Văn Anh', NULL, CAST(N'2000-12-28' AS Date), 4.1193291377831853, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE153091', N'Bùi Minh Phát', N'F', CAST(N'2000-12-24' AS Date), 8.7459326529623631, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE153116', N'Ngô Trọng Khang', N'M', CAST(N'2004-06-03' AS Date), 8.4921703340914885, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE153224', N'Phan Thị Kiệt', N'M', CAST(N'2003-05-05' AS Date), 4.009705075998653, N'name7@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE153876', N'Bùi Hữu Hưng', N'F', CAST(N'2004-11-21' AS Date), 0.087513788643997989, N'name6HE153876@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE153880', N'Trần Hữu Khôi', N'M', CAST(N'2002-06-30' AS Date), 4.3000871568452972, N'name9HE153880@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE153968', N'Đỗ Thị Kiệt', N'F', CAST(N'2002-09-11' AS Date), 6.9866776266073236, N'name9@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154050', N'Đặng Lý Khoa', N'M', CAST(N'2002-12-29' AS Date), NULL, N'name8HE154050@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154636', N'Bùi Văn Phát', N'F', CAST(N'2004-10-13' AS Date), 8.3819345749830525, N'name7@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154680', N'Phan Hữu Hiếu', N'M', CAST(N'2002-07-10' AS Date), 7.4999222380574428, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154792', N'Trương Trọng Đạt', N'M', CAST(N'2003-09-16' AS Date), 4.8500697477022507, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154819', N'Hồ Đức Hoàng', N'F', CAST(N'2004-02-25' AS Date), 5.5077286090272146, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154821', N'Lê Thị Nam', NULL, CAST(N'2001-10-16' AS Date), 9.365754280875322, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154866', N'Bùi Văn Anh', N'M', NULL, 9.9278933554552, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154919', N'Trần Lý Thịnh', N'F', CAST(N'2000-07-01' AS Date), NULL, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE154924', N'Ngô Thị Bảo', N'F', NULL, 5.8041553971376993, N'name5HE154924@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE155140', N'Hồ Thị Thịnh', N'F', CAST(N'2003-10-13' AS Date), 5.9020016276752587, N'name3HE155140@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE155265', N'Lương Văn Huy', N'F', CAST(N'2002-02-16' AS Date), 2.2866748004624036, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE155523', N'Đặng Lý Phát', N'F', CAST(N'2002-03-07' AS Date), 0.13523157226631025, N'name10HE155523@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE155629', N'Trần Minh Anh', N'F', CAST(N'2000-09-10' AS Date), 1.3996176893821068, N'nameHE155629@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE156209', N'Lê Văn Phúc', N'F', CAST(N'2002-07-08' AS Date), 0.88826273143676238, N'name1HE156209@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE156369', N'Lê Hữu Khôi', N'F', CAST(N'2002-08-12' AS Date), 1.0549271437595258, N'name8HE156369@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE156438', N'Trần Hữu Đạt', N'M', CAST(N'2004-09-26' AS Date), 4.489154845703931, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE156524', N'Hoàng Văn Long', N'F', NULL, 2.8749832757166511, N'name1HE156524@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE156562', N'Ngô Lý Tuấn', N'M', CAST(N'2003-03-20' AS Date), 7.2263148041564573, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE156581', N'Đỗ Đức Hoàng', N'M', CAST(N'2003-05-28' AS Date), 4.8999043111223282, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE156722', N'Võ Hữu Hoàng', N'M', CAST(N'2001-05-04' AS Date), 5.47269972761753, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE156890', N'Nguyễn Hữu Khoa', N'M', CAST(N'2004-04-04' AS Date), 2.9363703508565067, N'nameHE156890@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE157125', N'Nguyễn Lý Long', N'F', CAST(N'2004-06-06' AS Date), 9.0167519445609088, N'name4HE157125@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE157278', N'Đặng Trọng Khôi', N'F', CAST(N'2001-10-22' AS Date), 3.3634202896447012, N'name8HE157278@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE157343', N'Bùi Thị Hiếu', N'F', CAST(N'2004-11-13' AS Date), 7.1907861238302591, N'name8HE157343@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE157397', N'Ngô Văn Phát', N'M', CAST(N'2004-01-16' AS Date), 7.2610748639614675, N'name8HE157397@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158311', N'Trần Đức Huy', N'M', CAST(N'2004-01-25' AS Date), 0.0050986092561383775, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158372', N'Đặng Hữu Anh', N'F', CAST(N'2002-11-10' AS Date), 6.8450474957213956, N'name6HE158372@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158404', N'Võ Trọng Hiếu', N'M', CAST(N'2004-04-14' AS Date), 8.2726786277595341, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158500', N'Trần Văn Anh', N'M', CAST(N'2004-10-21' AS Date), 8.28191360378727, N'name9HE158500@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158534', N'Hồ Thị Khang', N'M', CAST(N'2001-10-06' AS Date), 6.2140723439930348, N'name2HE158534@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158695', N'Hồ Trọng Thịnh', N'M', CAST(N'2003-04-16' AS Date), 4.9110240232716427, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158730', N'Phạm Trọng Tuấn', N'M', CAST(N'2000-12-26' AS Date), NULL, N'name9HE158730@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158754', N'Trần Thị Khôi', N'M', NULL, 4.0440864181351319, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158773', N'Hồ Lý Khoa', N'M', CAST(N'2001-04-03' AS Date), 0.15377372976102574, N'name7@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158854', N'Trần Văn Huy', N'F', CAST(N'2000-06-28' AS Date), 9.800940756593338, N'name4@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158866', N'Trương Văn Hiếu', N'M', CAST(N'2001-10-18' AS Date), 0.095252418003628228, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE158868', N'Đỗ Lý Khoa', N'F', CAST(N'2003-02-02' AS Date), 5.2152864938673034, N'name8HE158868@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159076', N'Ngô Lý Huy', N'F', NULL, 5.2112219879455965, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159131', N'Hồ Thị Thịnh', N'M', CAST(N'2000-05-27' AS Date), 0.91964837672172506, N'name10HE159131@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159205', N'Vũ Đức Khoa', N'M', CAST(N'2003-11-05' AS Date), 2.0156433861775525, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159333', N'Hoàng Trọng Kiệt', N'M', CAST(N'2003-05-23' AS Date), 4.8817410994701742, N'name5HE159333@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159396', N'Ngô Lý Nam', N'F', CAST(N'2002-07-15' AS Date), 5.5049640431557609, N'name8HE159396@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159643', N'Phan Thị Phúc', N'F', CAST(N'2000-06-27' AS Date), 7.7463949880313105, N'name7HE159643@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159756', N'Ngô Trọng Anh', N'M', CAST(N'2002-12-03' AS Date), 6.6792221677858485, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159806', N'Phan Thị Hiếu', N'M', CAST(N'2001-01-28' AS Date), 8.29398573296796, N'name2HE159806@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159841', N'Nguyễn Lý Khang', N'F', CAST(N'2000-09-16' AS Date), 1.7278770598247075, N'name9@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159887', N'Phạm Đức Duy', N'M', CAST(N'2000-10-26' AS Date), 9.7006518345794888, N'name3HE159887@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE159911', N'Võ Văn Phát', N'F', CAST(N'2004-01-01' AS Date), 9.8654595342769564, N'name4@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE160314', N'Bùi Minh Hưng', N'M', CAST(N'2000-06-30' AS Date), 1.3396593562046342, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE160415', N'Hồ Trọng Long', NULL, CAST(N'2001-07-06' AS Date), 6.7847370807010385, N'name4@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE160603', N'Trần Minh Hoàng', NULL, CAST(N'2001-07-25' AS Date), 9.0374949104327218, N'name6HE160603@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE160694', N'Hồ Thị Anh', N'F', CAST(N'2004-04-22' AS Date), 2.3248501971014077, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE160790', N'Lương Hữu Phúc', N'M', CAST(N'2004-05-22' AS Date), NULL, N'name1HE160790@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE160904', N'Nguyễn Văn Tuấn', NULL, CAST(N'2000-06-21' AS Date), 0.877725757135882, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE160913', N'Phan Đức Quân', N'M', CAST(N'2000-01-13' AS Date), 9.4256641619958277, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE160988', N'Đỗ Minh Hiếu', N'F', CAST(N'2004-01-27' AS Date), 2.0064285080909858, N'name4HE160988@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE161777', N'Hồ Văn Long', NULL, CAST(N'2004-12-20' AS Date), 0.99016184499029158, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE161847', N'Hồ Đức Kiệt', N'F', NULL, 0.2814948047890769, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE161999', N'Trần Văn Đạt', N'F', NULL, 5.0695447367939837, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE162086', N'Hoàng Đức Quân', N'F', CAST(N'2002-11-10' AS Date), 4.0350966779678572, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE162274', N'Lương Văn Hưng', NULL, CAST(N'2003-06-15' AS Date), 9.36315654747335, N'nameHE162274@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE162575', N'Hoàng Minh Hưng', N'M', CAST(N'2000-07-11' AS Date), 5.7521608172693108, N'name5HE162575@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE162596', N'Trần Minh Long', N'F', CAST(N'2004-04-11' AS Date), 7.8546269460835614, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE162611', N'Đặng Lý Khôi', N'M', CAST(N'2003-06-28' AS Date), 9.90999829951208, N'name6@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE162877', N'Trần Minh Long', N'F', CAST(N'2003-05-04' AS Date), 0.848733075358315, N'name6@gmail.com')
GO
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE162964', N'Bùi Minh Phúc', N'M', CAST(N'2001-02-07' AS Date), 2.376762815926579, N'name5HE162964@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE163030', N'Đỗ Minh Khôi', N'F', CAST(N'2003-10-17' AS Date), 5.2686039802006466, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE163075', N'Phan Lý Hoàng', N'F', CAST(N'2002-04-08' AS Date), 6.8977822861158211, N'name6HE163075@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE163098', N'Bùi Thị Phát', N'M', CAST(N'2001-10-15' AS Date), 5.3759987723901856, N'name3HE163098@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE163265', N'Lương Lý Duy', N'M', CAST(N'2000-07-13' AS Date), 0.92994184276552028, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE163509', N'Phan Hữu Hưng', N'M', CAST(N'2002-02-19' AS Date), 7.90637135408184, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE163756', N'Đặng Văn Long', N'F', CAST(N'2002-10-15' AS Date), 1.4230689133624865, N'nameHE163756@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE163876', N'Phạm Đức Phát', N'M', CAST(N'2003-09-11' AS Date), 6.13238041574712, N'name10HE163876@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE163907', N'Lương Minh Nam', N'M', CAST(N'2004-02-14' AS Date), 8.2407449736449614, N'nameHE163907@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164110', N'Phan Thị Hiếu', N'M', NULL, NULL, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164204', N'Hoàng Trọng Tuấn', N'F', CAST(N'2000-02-06' AS Date), 1.3444692461492815, N'name7HE164204@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164221', N'Vũ Thị Bảo', N'F', CAST(N'2001-02-22' AS Date), 7.7159030538592033, N'nameHE164221@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164288', N'Đặng Hữu Bảo', N'F', CAST(N'2003-06-11' AS Date), 9.9656186578635211, N'name7@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164668', N'Nguyễn Lý Long', N'F', CAST(N'2004-08-22' AS Date), 3.5665547771223611, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164677', N'Bùi Minh Thịnh', N'F', CAST(N'2001-08-17' AS Date), 7.3534202004565952, N'name6@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164690', N'Phạm Hữu Duy', N'F', CAST(N'2002-06-12' AS Date), 6.9804567689916386, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164718', N'Phan Minh Tuấn', N'F', CAST(N'2001-11-09' AS Date), 0.67973150903346546, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164859', N'Phan Văn Nam', N'F', CAST(N'2004-05-10' AS Date), 5.904996891461777, N'name4HE164859@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE164874', N'Trương Trọng Bảo', N'F', CAST(N'2000-07-25' AS Date), 4.5825497454882367, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165020', N'Vũ Lý Huy', N'F', CAST(N'2004-03-23' AS Date), 0.10028892201384945, N'name1HE165020@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165028', N'Trần Trọng Hiếu', N'F', CAST(N'2000-07-25' AS Date), 5.9071103883474656, N'name4@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165077', N'Hồ Văn Hiếu', N'M', CAST(N'2003-06-28' AS Date), 7.4322840652578908, N'name3HE165077@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165176', N'Lương Đức Khoa', N'F', CAST(N'2002-03-05' AS Date), 7.2880522614754986, N'name7@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165218', N'Trần Lý Tuấn', N'F', CAST(N'2000-12-11' AS Date), 5.5679521456211578, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165432', N'Lương Đức Phúc', N'M', NULL, 8.6242089041621455, N'name9@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165537', N'Bùi Lý Hoàng', N'M', CAST(N'2004-09-25' AS Date), 1.0765997418559155, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165703', N'Phạm Đức Quân', N'M', NULL, 3.81262882790185, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165903', N'Đỗ Thị Phát', N'F', CAST(N'2000-10-03' AS Date), 2.41703125295091, N'name9@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165956', N'Hoàng Hữu Khoa', N'F', CAST(N'2003-07-07' AS Date), 5.4532857730301494, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE165978', N'Bùi Hữu Huy', N'F', CAST(N'2003-09-29' AS Date), 8.532061469057604, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE166423', N'Phạm Trọng Anh', N'F', CAST(N'2003-09-15' AS Date), NULL, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE166529', N'Bùi Minh Quân', N'M', CAST(N'2000-08-04' AS Date), 7.9279607478193759, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE166548', N'Phạm Đức Thịnh', N'M', CAST(N'2000-04-26' AS Date), 0.394119671729449, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE166664', N'Phan Văn Bảo', N'M', NULL, 6.0191278886139052, N'name4@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE166708', N'Phạm Đức Kiệt', N'M', CAST(N'2000-12-17' AS Date), 8.9557287185246732, N'name4HE166708@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE166722', N'Phan Lý Huy', N'M', CAST(N'2001-09-11' AS Date), 5.9741082722200591, N'name1HE166722@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE166762', N'Lương Lý Quân', N'M', CAST(N'2001-10-25' AS Date), 3.3200535705872132, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE167108', N'Hồ Thị Hiếu', N'M', CAST(N'2004-06-19' AS Date), 3.4379151758914417, N'name4HE167108@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE167198', N'Võ Trọng Khôi', N'F', CAST(N'2004-01-22' AS Date), 5.4894849776707053, N'name1HE167198@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE167263', N'Ngô Văn Phát', N'M', CAST(N'2002-03-14' AS Date), 8.7479074619467863, N'name1HE167263@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE167430', N'Phạm Lý Khoa', N'F', CAST(N'2003-06-29' AS Date), 9.4181473038243819, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE167462', N'Trần Văn Khoa', N'F', NULL, NULL, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE167975', N'Trần Minh Phúc', N'M', NULL, 6.2845224404169819, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168155', N'Lê Lý Thịnh', N'M', CAST(N'2001-09-04' AS Date), 2.0376579100441456, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168213', N'Hoàng Minh Huy', NULL, NULL, 3.2307761317262313, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168217', N'Ngô Văn Thịnh', N'F', CAST(N'2003-04-17' AS Date), 7.5177984719713207, N'name6HE168217@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168418', N'Võ Thị Nam', N'F', CAST(N'2001-03-20' AS Date), 9.0566773149448814, N'name5HE168418@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168471', N'Lương Đức Tuấn', N'M', CAST(N'2000-01-17' AS Date), 6.0279203094672038, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168795', N'Trần Văn Quân', NULL, CAST(N'2002-08-23' AS Date), 6.1828429420398745, N'name9HE168795@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168859', N'Phạm Văn Khôi', N'F', CAST(N'2001-06-20' AS Date), 8.159445267244914, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168870', N'Trương Hữu Long', N'M', CAST(N'2004-07-08' AS Date), 4.7718363184350707, N'name7@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168881', N'Lê Trọng Tuấn', N'M', NULL, 3.0287570054776767, N'name9HE168881@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168892', N'Hồ Đức Kiệt', NULL, CAST(N'2004-05-04' AS Date), 5.5923084288799707, N'name4@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE168927', N'Vũ Hữu Phúc', N'M', CAST(N'2000-07-08' AS Date), 1.2979891762593709, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169040', N'Đặng Hữu Tuấn', N'F', NULL, 4.7241655479763471, N'name1HE169040@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169285', N'Vũ Lý Đạt', N'M', CAST(N'2000-05-12' AS Date), 7.19999080393463, N'name7HE169285@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169395', N'Đỗ Minh Khoa', N'M', CAST(N'2001-04-24' AS Date), 9.47681750146524, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169454', N'Nguyễn Văn Đạt', N'F', CAST(N'2001-02-22' AS Date), 4.7470989007256454, N'name6@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169471', N'Vũ Lý Khoa', N'M', CAST(N'2004-12-02' AS Date), 5.6533316549162063, N'name2HE169471@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169498', N'Bùi Minh Hiếu', N'F', CAST(N'2004-02-18' AS Date), 9.8373659233736639, N'name9HE169498@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169532', N'Vũ Lý Kiệt', N'M', CAST(N'2001-02-07' AS Date), 5.8235855660511113, N'name7HE169532@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169574', N'Vũ Lý Bảo', N'F', CAST(N'2002-07-03' AS Date), 7.4584233981829247, N'name5HE169574@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169646', N'Trần Lý Quân', N'M', CAST(N'2004-03-06' AS Date), 0.1604186045752925, N'name7HE169646@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169795', N'Phạm Hữu Anh', N'M', CAST(N'2002-12-02' AS Date), 5.1542755519758332, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169806', N'Lê Thị Bảo', N'F', CAST(N'2000-07-10' AS Date), 1.698682420746741, N'name10HE169806@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE169897', N'Trần Thị Thịnh', N'F', CAST(N'2003-05-02' AS Date), 7.8820913740816021, N'name6@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE170004', N'Ngô Lý Hoàng', N'F', CAST(N'2003-07-21' AS Date), 2.9044662941733685, N'name6HE170004@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE170413', N'Võ Thị Duy', N'F', CAST(N'2004-10-12' AS Date), 6.7009331224024917, N'name4HE170413@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE170425', N'Trần Trọng Kiệt', N'M', CAST(N'2003-04-22' AS Date), 4.07544523667332, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE170469', N'Lê Văn Long', N'F', CAST(N'2003-03-28' AS Date), 7.4211067554639225, N'nameHE170469@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE170953', N'Lương Đức Kiệt', NULL, CAST(N'2001-06-06' AS Date), 4.0807182779911528, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE171010', N'Trần Lý Quân', N'F', CAST(N'2002-02-18' AS Date), 9.897734760259155, N'name5HE171010@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE171270', N'Đặng Minh Quân', N'F', CAST(N'2004-11-26' AS Date), 0.43711259981482875, N'name6HE171270@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE171318', N'Trương Lý Khôi', N'F', NULL, 6.0320013091117151, N'name4HE171318@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE171549', N'Võ Trọng Bảo', N'M', CAST(N'2000-07-09' AS Date), 6.3282058929690184, N'name1HE171549@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE171617', N'Trương Minh Bảo', N'F', CAST(N'2002-05-21' AS Date), 1.8417776803680592, N'name5HE171617@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE171664', N'Hồ Hữu Khang', NULL, CAST(N'2000-06-04' AS Date), 5.1112098829407291, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE171762', N'Võ Trọng Duy', N'F', CAST(N'2001-07-03' AS Date), 6.9190197377088571, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE171849', N'Phạm Minh Long', N'F', CAST(N'2002-11-14' AS Date), 5.3238809040393118, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE172020', N'Ngô Văn Hiếu', N'F', NULL, 3.805141357614259, N'name4HE172020@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE172225', N'Hoàng Thị Đạt', N'F', CAST(N'2002-07-26' AS Date), NULL, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE172331', N'Phạm Văn Khoa', N'F', CAST(N'2002-05-20' AS Date), 3.4839006157051311, N'name9HE172331@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE172430', N'Vũ Trọng Thịnh', N'M', NULL, 4.8982650157521785, N'name9@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE172835', N'Phạm Lý Nam', NULL, CAST(N'2002-12-27' AS Date), 0.81712718625419178, N'name2HE172835@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE172851', N'Nguyễn Lý Tuấn', N'F', CAST(N'2002-09-25' AS Date), 1.6605212128071678, N'name7@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173019', N'Nguyễn Minh Tuấn', N'M', NULL, 5.901724810666277, N'name8HE173019@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173191', N'Ngô Hữu Long', N'M', CAST(N'2002-06-22' AS Date), 2.4378706759018218, N'name3HE173191@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173211', N'Trần Hữu Đạt', N'M', CAST(N'2001-02-12' AS Date), 2.0982558196868077, N'name8HE173211@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173337', N'Trương Văn Bảo', N'M', CAST(N'2003-10-17' AS Date), 8.6341132263811833, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173430', N'Ngô Thị Thịnh', N'F', CAST(N'2002-08-22' AS Date), NULL, N'name1HE173430@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173459', N'Lê Minh Quân', N'M', CAST(N'2003-12-24' AS Date), 3.1996807610614604, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173608', N'Đặng Đức Hiếu', N'F', CAST(N'2000-08-24' AS Date), NULL, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173652', N'Vũ Trọng Khang', N'M', CAST(N'2000-10-25' AS Date), 4.5939179624402513, N'name6HE173652@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173653', N'Hoàng Lý Huy', N'F', CAST(N'2000-08-26' AS Date), 0.74333740432902107, N'nameHE173653@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173703', N'Hoàng Lý Bảo', N'F', CAST(N'2000-03-14' AS Date), 8.9962633880769189, N'name2HE173703@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE173733', N'Trần Thị Quân', N'F', CAST(N'2003-10-16' AS Date), 0.52866013745249252, N'name9HE173733@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174026', N'Phạm Trọng Phúc', N'M', CAST(N'2002-09-30' AS Date), NULL, N'name1HE174026@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174128', N'Phạm Thị Long', N'F', CAST(N'2000-05-29' AS Date), NULL, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174130', N'Lê Minh Hưng', N'F', CAST(N'2004-07-05' AS Date), 6.4977495309420625, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174330', N'Hoàng Thị Phát', N'M', CAST(N'2004-04-12' AS Date), 5.8741465797061787, N'name9HE174330@fpt.edu.vn')
GO
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174387', N'Đỗ Hữu Khôi', N'M', CAST(N'2003-07-09' AS Date), 7.3187392285646595, N'name9@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174436', N'Hồ Hữu Phát', N'M', CAST(N'2000-01-15' AS Date), 1.5129282751646489, N'name4HE174436@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174504', N'Hoàng Minh Nam', N'F', CAST(N'2004-12-20' AS Date), 2.8416793760106334, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174535', N'Trương Trọng Kiệt', N'M', CAST(N'2002-07-30' AS Date), 1.06999778704252, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174553', N'Hoàng Đức Thịnh', N'F', CAST(N'2001-03-25' AS Date), 3.0058055152212293, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174737', N'Hồ Đức Tuấn', N'F', CAST(N'2002-04-30' AS Date), 8.1279862896203934, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174743', N'Vũ Văn Kiệt', N'F', CAST(N'2003-10-31' AS Date), 3.8013730960904497, N'name5HE174743@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174796', N'Lương Lý Hoàng', N'F', CAST(N'2003-05-01' AS Date), NULL, N'name6HE174796@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE174948', N'Phan Hữu Khôi', N'F', CAST(N'2002-03-21' AS Date), 7.8703170259810591, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE175071', N'Ngô Thị Huy', N'M', CAST(N'2000-05-15' AS Date), 1.0382529865197152, N'name2HE175071@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE175159', N'Bùi Trọng Huy', N'F', CAST(N'2000-04-12' AS Date), 3.2564476752916569, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE175178', N'Trương Đức Anh', N'M', CAST(N'2003-08-28' AS Date), 0.30019796467395404, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE175528', N'Đặng Lý Hoàng', N'F', CAST(N'2003-03-06' AS Date), 9.7008086460180625, N'name3@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE175591', N'Trương Thị Kiệt', N'F', CAST(N'2002-03-16' AS Date), 7.5233719952047675, N'name4HE175591@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE175655', N'Đỗ Văn Hiếu', NULL, CAST(N'2000-07-20' AS Date), 4.588819353184113, N'name2HE175655@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE175764', N'Trần Đức Long', N'F', CAST(N'2003-10-06' AS Date), 6.4123417886031522, N'name4HE175764@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE175902', N'Trương Hữu Duy', N'M', CAST(N'2002-03-08' AS Date), 5.1987236715847276, N'name5@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176068', N'Ngô Minh Long', N'F', CAST(N'2001-02-24' AS Date), 4.3798409050236646, N'name3HE176068@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176200', N'Lương Thị Anh', NULL, CAST(N'2003-08-20' AS Date), NULL, N'name5HE176200@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176516', N'Vũ Lý Khang', N'M', CAST(N'2002-12-17' AS Date), 4.27757566528282, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176518', N'Bùi Lý Hiếu', N'M', CAST(N'2001-04-02' AS Date), 6.9825385636568713, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176527', N'Vũ Đức Nam', N'M', CAST(N'2003-07-20' AS Date), 9.1295992858380064, N'name2HE176527@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176696', N'Lê Đức Đạt', N'F', NULL, 2.9395836372578437, N'name6HE176696@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176775', NULL, N'M', CAST(N'2002-01-28' AS Date), 7.4232838337418086, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176848', N'Võ Trọng Nam', N'F', CAST(N'2000-09-10' AS Date), 4.7876954240667144, N'name6@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE176923', N'Lương Thị Kiệt', N'M', CAST(N'2004-07-09' AS Date), 5.4380643439656424, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE177092', N'Hoàng Lý Hiếu', N'F', CAST(N'2004-07-31' AS Date), 6.9226200445194817, NULL)
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE177221', N'Lê Văn Kiệt', N'F', CAST(N'2004-10-09' AS Date), 7.4175095499574715, N'name9HE177221@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE177249', N'Hoàng Đức Quân', N'F', CAST(N'2001-12-10' AS Date), 4.2185404962946382, N'name9HE177249@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE177386', N'Võ Trọng Duy', N'F', CAST(N'2002-08-16' AS Date), 0.49488950543798949, N'name9HE177386@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE177479', N'Lê Thị Kiệt', NULL, CAST(N'2003-12-03' AS Date), 5.3220173508497037, N'name3HE177479@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE177526', N'Đặng Văn Kiệt', N'M', CAST(N'2004-06-21' AS Date), 8.1582435258469737, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE177539', N'Lê Thị Khôi', N'M', CAST(N'2001-10-26' AS Date), 9.8360748774540028, N'name5HE177539@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE177691', N'Đặng Lý Nam', N'F', CAST(N'2000-04-20' AS Date), 5.6469190379823182, N'name6HE177691@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178048', N'Bùi Hữu Hưng', N'M', NULL, 9.60539941657586, N'name5HE178048@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178225', N'Đỗ Văn Tuấn', N'M', CAST(N'2003-09-24' AS Date), 5.5110787067148266, N'name5HE178225@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178229', N'Đỗ Trọng Khang', N'F', CAST(N'2001-11-16' AS Date), 6.5166741826183507, N'name3HE178229@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178312', N'Trương Trọng Đạt', N'M', CAST(N'2004-02-26' AS Date), 4.942980606548014, N'name1HE178312@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178397', N'Bùi Đức Khôi', N'F', CAST(N'2001-07-12' AS Date), 1.8465905831412368, N'name1@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178410', N'Phạm Đức Phúc', N'M', CAST(N'2002-10-26' AS Date), 1.4181890950622917, N'name10HE178410@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178525', N'Trương Hữu Duy', NULL, CAST(N'2000-11-25' AS Date), 0.54476021348720427, N'name4HE178525@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178596', N'Lương Văn Hiếu', N'F', NULL, 6.2695201003316416, N'nameHE178596@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE178623', N'Đỗ Văn Long', N'F', CAST(N'2002-07-06' AS Date), 3.824633082293269, N'name8@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE179066', N'Lê Trọng Hưng', N'M', CAST(N'2001-09-29' AS Date), 7.4870884825881054, N'name2HE179066@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE179237', N'Hoàng Minh Khang', N'M', CAST(N'2004-04-29' AS Date), 5.6397465130499311, N'name10@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE179276', N'Phạm Đức Anh', N'F', CAST(N'2003-06-18' AS Date), 6.3467680645858717, N'name8HE179276@fpt.edu.vn')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE179453', N'Nguyễn Văn Hưng', N'M', NULL, 6.91876815954166, N'name@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE179627', N'Lê Văn Khôi', N'F', CAST(N'2002-04-12' AS Date), 3.7307851406423302, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE179768', N'Ngô Đức Khoa', N'M', CAST(N'2001-06-22' AS Date), 6.63835540722979, N'name2@gmail.com')
INSERT [dbo].[Student] ([ID], [name], [gender], [dob], [mark], [email]) VALUES (N'HE179799', N'Trương Thị Quân', N'M', CAST(N'2004-01-10' AS Date), 0.80682331268062035, N'name8@gmail.com')
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([gender]='M' OR [gender]='F'))
GO
USE [master]
GO
ALTER DATABASE [StudentManagementDB] SET  READ_WRITE 
GO
