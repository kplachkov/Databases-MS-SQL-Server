USE [Minions]
GO
/****** Object:  Table [dbo].[Minions]    Script Date: 15-Jul-17 16:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Minions](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Age] [int] NULL,
	[TownId] [int] NULL,
 CONSTRAINT [PK_Minions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Towns]    Script Date: 15-Jul-17 16:32:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Towns](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Towns] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Minions] ([id], [Name], [Age], [TownId]) VALUES (1, N'Kevin', 26, 1)
INSERT [dbo].[Minions] ([id], [Name], [Age], [TownId]) VALUES (2, N'John', 14, 2)
INSERT [dbo].[Minions] ([id], [Name], [Age], [TownId]) VALUES (3, N'Bob', NULL, 3)
INSERT [dbo].[Minions] ([id], [Name], [Age], [TownId]) VALUES (4, N'Ivan', 19, 1)
INSERT [dbo].[Towns] ([id], [Name]) VALUES (1, N'Sofia')
INSERT [dbo].[Towns] ([id], [Name]) VALUES (2, N'Plovdiv')
INSERT [dbo].[Towns] ([id], [Name]) VALUES (3, N'Burgas')
