USE [RoadToWest]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [varchar](max) NULL,
	[Phone] [varchar](11) NULL,
	[Email] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[ID] [nvarchar](50) NOT NULL,
	[UserId] [nvarchar](50) NULL,
	[Modified] [datetime] NULL,
	[Author] [nvarchar](50) NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderTool]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTool](
	[SceneId] [nvarchar](50) NOT NULL,
	[ToolId] [nvarchar](50) NULL,
	[TimeStart] [datetime] NULL,
	[TimeEnd] [datetime] NULL,
	[Amount] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Author] [nvarchar](50) NULL,
	[LastModified] [datetime] NULL,
	[ID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderTool] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scene]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scene](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Location] [nvarchar](50) NULL,
	[TimeStart] [datetime] NULL,
	[TimeEnd] [datetime] NULL,
	[SnapShot] [int] NULL,
	[Status] [nvarchar](10) NULL,
 CONSTRAINT [PK_Scene] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SceneCharacter]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SceneCharacter](
	[SceneId] [nvarchar](50) NULL,
	[ActorId] [nvarchar](50) NULL,
	[ID] [nvarchar](50) NOT NULL,
	[Character] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[ScriptLink] [varchar](max) NULL,
	[Status] [nvarchar](10) NULL,
 CONSTRAINT [PK_SceneCharacter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tool]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tool](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [varchar](max) NULL,
	[Amount] [int] NULL,
	[Status] [nvarchar](10) NULL,
 CONSTRAINT [PK_Tool] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[ID] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](10) NULL,
	[IsActor] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 7/19/2020 5:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserId] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
	[Id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Actor] ([ID], [Name], [Description], [Image], [Phone], [Email], [Status]) VALUES (N'187e9749-a902-4cbe-878f-32ac2ac2f254', N'Pham Minh Hai', N'awpEr', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/Avatar%2Fimage_picker1443790993809943811.jpg?alt=media&token=b8fde5da-a521-43b8-b911-0bf446447572', N'0123456789', N'haipm@fpt.edu.vn', 1)
INSERT [dbo].[Actor] ([ID], [Name], [Description], [Image], [Phone], [Email], [Status]) VALUES (N'489a8103-c283-4128-993b-172d5f09d59b', N'Do Luong Tai', N'Ngao Boy', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/Avatar%2Fimage_picker1745320547028434915.jpg?alt=media&token=8db46e44-1c2f-4785-be73-971f697775ba', N'0123456789', N'taidl@fpt.edu.vn', 1)
INSERT [dbo].[Actor] ([ID], [Name], [Description], [Image], [Phone], [Email], [Status]) VALUES (N'5014fee9-12de-45e6-a77b-b766a6f0931b', N'Tran Gia Huy', N'Luong Leo', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/Avatar%2Fimage_picker7575622258989205402.jpg?alt=media&token=e6bf4825-af3e-4b7b-a174-e1d961d1fae4', N'0123456789', N'huytg@fpt.edu.vn', 1)
INSERT [dbo].[Actor] ([ID], [Name], [Description], [Image], [Phone], [Email], [Status]) VALUES (N'5098d67d-d874-443b-965b-5b9d414ab248', N'Nhut Nguyen', N'Gia Boy', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/Avatar%2Fimage_picker7078394580313001895.jpg?alt=media&token=a55be1be-74ab-4321-9a79-bd93e081cad3', N'0123456789', N'nhutnhm@fpt.edu.vn', 1)
INSERT [dbo].[Actor] ([ID], [Name], [Description], [Image], [Phone], [Email], [Status]) VALUES (N'c80802f1-7d04-41b7-990f-db85ad5db52b', N'Bao Nguyen', N'Map', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/Avatar%2Fimage_picker8744421393469038556.jpg?alt=media&token=5c9d69a5-3919-44a0-a76f-a59222963f5c', N'012345', N'nguyenb@fpt.edu.vn', 1)
INSERT [dbo].[Actor] ([ID], [Name], [Description], [Image], [Phone], [Email], [Status]) VALUES (N'd2927b4c-bf26-4b4d-b37f-bc6243e51bfb', N'Tran Thien Phuc', N'K Boy', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/Avatar%2Fimage_picker386580206214587737.jpg?alt=media&token=8e6628e6-2b1e-4da3-a31b-e71cff28aa4f', N'0123456789', N'phuctt@fpt.edu.vn', 1)
INSERT [dbo].[Actor] ([ID], [Name], [Description], [Image], [Phone], [Email], [Status]) VALUES (N'db0c4aa6-d774-47b1-bd71-d35f7d19c253', N'Tu Minh Duy', N'Set up Boy', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/Avatar%2Fimage_picker7633872282551165254.jpg?alt=media&token=314b3650-1d82-4fbe-9965-145db9012897', N'0123456789', N'duytm@fpt.edu.vn', 1)
GO
INSERT [dbo].[OrderTool] ([SceneId], [ToolId], [TimeStart], [TimeEnd], [Amount], [Status], [Author], [LastModified], [ID]) VALUES (N'c1d7f4e4-ff1c-4d69-ad97-b3f51d6f172a', N'37e6a2e2-1787-4fd2-8732-328f11dba3f5', CAST(N'2020-07-19T14:01:47.750' AS DateTime), CAST(N'2020-11-19T00:00:00.000' AS DateTime), 2, N'New', N'Nhut Nguyen', CAST(N'2020-07-19T14:01:49.660' AS DateTime), N'49c11f95-030f-4949-8b2b-a55e43d31646')
INSERT [dbo].[OrderTool] ([SceneId], [ToolId], [TimeStart], [TimeEnd], [Amount], [Status], [Author], [LastModified], [ID]) VALUES (N'9f2186f4-3ec7-4184-a7e4-950665dbdc92', N'37e6a2e2-1787-4fd2-8732-328f11dba3f5', CAST(N'2020-07-16T16:53:48.220' AS DateTime), CAST(N'2020-07-16T16:53:43.227' AS DateTime), 10, N'Deleted', N'Nhut Nguyen', CAST(N'2020-07-16T16:53:48.580' AS DateTime), N'72adb6b8-afad-47cd-b12e-993398cf5088')
INSERT [dbo].[OrderTool] ([SceneId], [ToolId], [TimeStart], [TimeEnd], [Amount], [Status], [Author], [LastModified], [ID]) VALUES (N'c1d7f4e4-ff1c-4d69-ad97-b3f51d6f172a', N'829a55b0-777d-42db-946c-87fb01f3f27d', CAST(N'2020-07-19T14:02:02.120' AS DateTime), CAST(N'2020-12-19T00:00:00.000' AS DateTime), 5, N'New', N'Nhut Nguyen', CAST(N'2020-07-19T14:02:03.987' AS DateTime), N'ad5199cc-eb24-4765-b2aa-85af4d78b9e4')
INSERT [dbo].[OrderTool] ([SceneId], [ToolId], [TimeStart], [TimeEnd], [Amount], [Status], [Author], [LastModified], [ID]) VALUES (N'38656aab-b53f-454f-b49f-341530c1737a', N'0dbf385a-bb70-4c48-8f62-75c549dc2877', CAST(N'2020-07-16T16:49:38.863' AS DateTime), CAST(N'2020-09-16T00:00:00.000' AS DateTime), 2, N'New', N'Nhut Nguyen', CAST(N'2020-07-16T16:49:39.163' AS DateTime), N'c3b48049-18fc-44ea-8603-3bc5312379a1')
GO
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (N'1', N'User')
INSERT [dbo].[Roles] ([ID], [Name]) VALUES (N'2', N'Admin')
GO
INSERT [dbo].[Scene] ([ID], [Name], [Description], [Location], [TimeStart], [TimeEnd], [SnapShot], [Status]) VALUES (N'38656aab-b53f-454f-b49f-341530c1737a', N'kiep Nan 1', N'Hoa Quả Sơn cứu Hầu Vương', N'Trung Quốc', CAST(N'2020-07-17T09:52:24.573' AS DateTime), CAST(N'2019-06-07T00:00:00.000' AS DateTime), 1, N'Processing')
INSERT [dbo].[Scene] ([ID], [Name], [Description], [Location], [TimeStart], [TimeEnd], [SnapShot], [Status]) VALUES (N'92056686-0bbf-4767-88b6-67b5af9c0465', N'kiếp nạn 4', N'none', N'việt nam', CAST(N'2017-07-11T00:00:00.000' AS DateTime), CAST(N'2020-07-12T17:09:06.910' AS DateTime), 2, N'Processing')
INSERT [dbo].[Scene] ([ID], [Name], [Description], [Location], [TimeStart], [TimeEnd], [SnapShot], [Status]) VALUES (N'9f2186f4-3ec7-4184-a7e4-950665dbdc92', N'Kiếp Nạn 2', N'text', N'text', CAST(N'2017-07-05T00:00:00.000' AS DateTime), CAST(N'2020-07-16T17:46:50.270' AS DateTime), 10, N'Done')
INSERT [dbo].[Scene] ([ID], [Name], [Description], [Location], [TimeStart], [TimeEnd], [SnapShot], [Status]) VALUES (N'c1d7f4e4-ff1c-4d69-ad97-b3f51d6f172a', N'Kiep Nan 5', N'Giai Cuu Tru Bat Gioi', N'Trung Quoc', CAST(N'2015-01-01T00:00:00.000' AS DateTime), CAST(N'2020-07-19T14:15:21.460' AS DateTime), 1, N'Done')
INSERT [dbo].[Scene] ([ID], [Name], [Description], [Location], [TimeStart], [TimeEnd], [SnapShot], [Status]) VALUES (N'e1484624-b79d-42dd-978c-842931e39791', N'kiep nan 3', N'tks', N'hello', CAST(N'2017-05-06T00:00:00.000' AS DateTime), CAST(N'2020-07-19T13:57:50.267' AS DateTime), 1, N'Done')
GO
INSERT [dbo].[SceneCharacter] ([SceneId], [ActorId], [ID], [Character], [Description], [ScriptLink], [Status]) VALUES (N'c1d7f4e4-ff1c-4d69-ad97-b3f51d6f172a', N'489a8103-c283-4128-993b-172d5f09d59b', N'04304b8d-8d0c-4e75-905c-04d8f0ff085b', N'Ngo khong', N'nome', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/scripts%2Ffile-sample_100kB.doc?alt=media&token=c2ca4aed-2030-42ea-805a-5145f20c1c09', N'Enable')
INSERT [dbo].[SceneCharacter] ([SceneId], [ActorId], [ID], [Character], [Description], [ScriptLink], [Status]) VALUES (N'c1d7f4e4-ff1c-4d69-ad97-b3f51d6f172a', N'489a8103-c283-4128-993b-172d5f09d59b', N'109c47a3-90ec-438d-84fd-d04cfae3899c', N'Ngo khong', N'nome', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/scripts%2Ffile-sample_100kB.doc?alt=media&token=a861161c-3d82-4e18-b6ff-963c5cb9fffa', N'Disable')
INSERT [dbo].[SceneCharacter] ([SceneId], [ActorId], [ID], [Character], [Description], [ScriptLink], [Status]) VALUES (N'38656aab-b53f-454f-b49f-341530c1737a', N'187e9749-a902-4cbe-878f-32ac2ac2f254', N'1698631d-dc75-45fc-92d8-1194c43ef72d', N'Duong Tam Tam', N'1', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/scripts%2Ffile-sample_100kB.doc?alt=media&token=fbb505d8-31fb-40e6-a99f-299513b26b35', N'Enable')
INSERT [dbo].[SceneCharacter] ([SceneId], [ActorId], [ID], [Character], [Description], [ScriptLink], [Status]) VALUES (N'38656aab-b53f-454f-b49f-341530c1737a', N'489a8103-c283-4128-993b-172d5f09d59b', N'8818dd51-27f3-4f97-832d-38a35de656cb', N'Wu Kong', N'Dien Vien Chinh', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/scripts%2Ffile-sample_100kB.doc?alt=media&token=2cdbe6df-299a-4074-a729-8095d685890d', N'Enable')
INSERT [dbo].[SceneCharacter] ([SceneId], [ActorId], [ID], [Character], [Description], [ScriptLink], [Status]) VALUES (N'e1484624-b79d-42dd-978c-842931e39791', N'489a8103-c283-4128-993b-172d5f09d59b', N'ad27fc6d-9ecd-43e7-984d-7c36af544982', N'Bach Long', N'Ngua', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/scripts%2Fsample.txt?alt=media&token=e7b3852a-b911-40d3-9587-3f6066a84d24', N'Enable')
INSERT [dbo].[SceneCharacter] ([SceneId], [ActorId], [ID], [Character], [Description], [ScriptLink], [Status]) VALUES (N'e1484624-b79d-42dd-978c-842931e39791', N'c80802f1-7d04-41b7-990f-db85ad5db52b', N'ad3720cd-f00d-406d-8e5f-0773f4276f7f', N'Tru Bat Gioi', N'none', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/scripts%2Fsample.txt?alt=media&token=1e666d4c-ab7a-4ad2-b9d8-cd30341d2e34', N'Enable')
INSERT [dbo].[SceneCharacter] ([SceneId], [ActorId], [ID], [Character], [Description], [ScriptLink], [Status]) VALUES (N'38656aab-b53f-454f-b49f-341530c1737a', N'187e9749-a902-4cbe-878f-32ac2ac2f254', N'cc76ff0f-d5c8-4f78-967a-272d28eaff46', N'Ton Ngo Khong', N'1', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/scripts%2Fsample%20(1).txt?alt=media&token=982047d3-12cf-4090-9165-7f8e182fe146', N'Disable')
INSERT [dbo].[SceneCharacter] ([SceneId], [ActorId], [ID], [Character], [Description], [ScriptLink], [Status]) VALUES (N'38656aab-b53f-454f-b49f-341530c1737a', N'489a8103-c283-4128-993b-172d5f09d59b', N'f0c4cf3d-c928-4493-a959-400694ceddde', N'Quan chung', N'Dien Vien Dong phu', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/scripts%2Ffile-sample_100kB.doc?alt=media&token=367800aa-5923-43e1-b6ab-56cfdda66828', N'Enable')
GO
INSERT [dbo].[Tool] ([ID], [Name], [Description], [Image], [Amount], [Status]) VALUES (N'0dbf385a-bb70-4c48-8f62-75c549dc2877', N'camera 4', N'none', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/tools%2Fimage_picker707303774707489153.jpg?alt=media&token=fbbe2f40-cdb6-48a7-bdbf-6bc331b1b490', 8, N'Available')
INSERT [dbo].[Tool] ([ID], [Name], [Description], [Image], [Amount], [Status]) VALUES (N'37e6a2e2-1787-4fd2-8732-328f11dba3f5', N'camera 2', N'1', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/tools%2Fimage_picker4653971001750965500.jpg?alt=media&token=b08f9fc0-8701-4581-a87f-c86673fe55ac', 8, N'Available')
INSERT [dbo].[Tool] ([ID], [Name], [Description], [Image], [Amount], [Status]) VALUES (N'829a55b0-777d-42db-946c-87fb01f3f27d', N'camera 5', N'0', N'https://firebasestorage.googleapis.com/v0/b/roadtothewest-e8d8d.appspot.com/o/tools%2Fimage_picker1201555876959773023.jpg?alt=media&token=7ebcc2d2-3a25-4591-8d34-bcae5b8afebc', 10, N'Available')
GO
INSERT [dbo].[User] ([Username], [Password], [ID], [Status], [IsActor]) VALUES (N'hai', N'1', N'187e9749-a902-4cbe-878f-32ac2ac2f254', N'Enable', 1)
INSERT [dbo].[User] ([Username], [Password], [ID], [Status], [IsActor]) VALUES (N'tai', N'1', N'489a8103-c283-4128-993b-172d5f09d59b', N'Enable', 1)
INSERT [dbo].[User] ([Username], [Password], [ID], [Status], [IsActor]) VALUES (N'huy', N'1', N'5014fee9-12de-45e6-a77b-b766a6f0931b', N'Enable', 1)
INSERT [dbo].[User] ([Username], [Password], [ID], [Status], [IsActor]) VALUES (N'nhut', N'1', N'5098d67d-d874-443b-965b-5b9d414ab248', N'Enable', 1)
INSERT [dbo].[User] ([Username], [Password], [ID], [Status], [IsActor]) VALUES (N'nguyen', N'1', N'c80802f1-7d04-41b7-990f-db85ad5db52b', N'Enable', 1)
INSERT [dbo].[User] ([Username], [Password], [ID], [Status], [IsActor]) VALUES (N'phuc', N'1', N'd2927b4c-bf26-4b4d-b37f-bc6243e51bfb', N'Enable', 1)
INSERT [dbo].[User] ([Username], [Password], [ID], [Status], [IsActor]) VALUES (N'duy', N'1', N'db0c4aa6-d774-47b1-bd71-d35f7d19c253', N'Enable', 1)
GO
INSERT [dbo].[UserRole] ([UserId], [RoleId], [Id]) VALUES (N'5098d67d-d874-443b-965b-5b9d414ab248', N'2', N'2cfe4bbb-1c8b-42b6-9b41-12e4f2ac517e')
INSERT [dbo].[UserRole] ([UserId], [RoleId], [Id]) VALUES (N'5014fee9-12de-45e6-a77b-b766a6f0931b', N'1', N'3ddd480d-ccdb-45ef-b8fb-2a5a75e1564f')
INSERT [dbo].[UserRole] ([UserId], [RoleId], [Id]) VALUES (N'187e9749-a902-4cbe-878f-32ac2ac2f254', N'1', N'd0d60c0f-7ce5-4693-a609-519140adbed2')
INSERT [dbo].[UserRole] ([UserId], [RoleId], [Id]) VALUES (N'db0c4aa6-d774-47b1-bd71-d35f7d19c253', N'1', N'd931ecb7-8f45-4b31-af7a-3ef9f0a3fc14')
INSERT [dbo].[UserRole] ([UserId], [RoleId], [Id]) VALUES (N'489a8103-c283-4128-993b-172d5f09d59b', N'1', N'f7346b2d-5924-4eba-aa6e-1abb7b4f6952')
GO
ALTER TABLE [dbo].[Actor]  WITH CHECK ADD  CONSTRAINT [FK_Actor_User] FOREIGN KEY([ID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Actor] CHECK CONSTRAINT [FK_Actor_User]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_User]
GO
ALTER TABLE [dbo].[OrderTool]  WITH CHECK ADD  CONSTRAINT [FK_OrderTool_Scene] FOREIGN KEY([SceneId])
REFERENCES [dbo].[Scene] ([ID])
GO
ALTER TABLE [dbo].[OrderTool] CHECK CONSTRAINT [FK_OrderTool_Scene]
GO
ALTER TABLE [dbo].[OrderTool]  WITH CHECK ADD  CONSTRAINT [FK_OrderTool_Tool] FOREIGN KEY([ToolId])
REFERENCES [dbo].[Tool] ([ID])
GO
ALTER TABLE [dbo].[OrderTool] CHECK CONSTRAINT [FK_OrderTool_Tool]
GO
ALTER TABLE [dbo].[SceneCharacter]  WITH CHECK ADD  CONSTRAINT [FK_SceneCharacter_Actor] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actor] ([ID])
GO
ALTER TABLE [dbo].[SceneCharacter] CHECK CONSTRAINT [FK_SceneCharacter_Actor]
GO
ALTER TABLE [dbo].[SceneCharacter]  WITH CHECK ADD  CONSTRAINT [FK_SceneCharacter_Scene] FOREIGN KEY([SceneId])
REFERENCES [dbo].[Scene] ([ID])
GO
ALTER TABLE [dbo].[SceneCharacter] CHECK CONSTRAINT [FK_SceneCharacter_Scene]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
