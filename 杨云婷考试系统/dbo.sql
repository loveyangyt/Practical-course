/*
Navicat SQL Server Data Transfer

Source Server         : sql
Source Server Version : 105000
Source Host           : :1433
Source Database       : db_netExam
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2019-06-26 08:35:46
*/


-- ----------------------------
-- Table structure for dtproperties
-- ----------------------------
DROP TABLE [dbo].[dtproperties]
GO
CREATE TABLE [dbo].[dtproperties] (
[id] int NOT NULL IDENTITY(1,1) ,
[objectid] int NULL ,
[property] varchar(64) NOT NULL ,
[value] varchar(255) NULL ,
[uvalue] nvarchar(255) NULL ,
[lvalue] image NULL ,
[version] int NOT NULL DEFAULT (0) 
)


GO

-- ----------------------------
-- Records of dtproperties
-- ----------------------------
SET IDENTITY_INSERT [dbo].[dtproperties] ON
GO
SET IDENTITY_INSERT [dbo].[dtproperties] OFF
GO

-- ----------------------------
-- Table structure for tb_Lesson
-- ----------------------------
DROP TABLE [dbo].[tb_Lesson]
GO
CREATE TABLE [dbo].[tb_Lesson] (
[ID] bigint NOT NULL IDENTITY(1,1) ,
[Name] varchar(60) NOT NULL ,
[JoinTime] datetime NOT NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[tb_Lesson]', RESEED, 32)
GO

-- ----------------------------
-- Records of tb_Lesson
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_Lesson] ON
GO
INSERT INTO [dbo].[tb_Lesson] ([ID], [Name], [JoinTime]) VALUES (N'4', N'英语（二）', N'2007-01-21 06:26:06.000')
GO
GO
INSERT INTO [dbo].[tb_Lesson] ([ID], [Name], [JoinTime]) VALUES (N'5', N'计算机文化基础', N'2007-01-22 19:04:05.000')
GO
GO
INSERT INTO [dbo].[tb_Lesson] ([ID], [Name], [JoinTime]) VALUES (N'8', N'计算机专业英语', N'2007-01-24 08:12:45.000')
GO
GO
INSERT INTO [dbo].[tb_Lesson] ([ID], [Name], [JoinTime]) VALUES (N'29', N'电子商务', N'2007-04-07 10:19:45.000')
GO
GO
INSERT INTO [dbo].[tb_Lesson] ([ID], [Name], [JoinTime]) VALUES (N'31', N'数学', N'2007-12-29 14:03:46.183')
GO
GO
INSERT INTO [dbo].[tb_Lesson] ([ID], [Name], [JoinTime]) VALUES (N'32', N'编程', N'2019-06-25 19:10:08.880')
GO
GO
SET IDENTITY_INSERT [dbo].[tb_Lesson] OFF
GO

-- ----------------------------
-- Table structure for tb_manager
-- ----------------------------
DROP TABLE [dbo].[tb_manager]
GO
CREATE TABLE [dbo].[tb_manager] (
[ID] bigint NOT NULL IDENTITY(1,1) ,
[name] varchar(30) NOT NULL ,
[PWD] varchar(30) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tb_manager]', RESEED, 16)
GO

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_manager] ON
GO
INSERT INTO [dbo].[tb_manager] ([ID], [name], [PWD]) VALUES (N'4', N'123', N'111')
GO
GO
INSERT INTO [dbo].[tb_manager] ([ID], [name], [PWD]) VALUES (N'15', N'111', N'111')
GO
GO
SET IDENTITY_INSERT [dbo].[tb_manager] OFF
GO

-- ----------------------------
-- Table structure for tb_Questions
-- ----------------------------
DROP TABLE [dbo].[tb_Questions]
GO
CREATE TABLE [dbo].[tb_Questions] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[subject] varchar(50) NOT NULL ,
[type] char(6) NOT NULL ,
[joinTime] datetime NOT NULL DEFAULT (getdate()) ,
[lessonId] int NOT NULL ,
[taoTiId] bigint NOT NULL ,
[optionA] varchar(50) NOT NULL ,
[optionB] varchar(50) NOT NULL ,
[optionC] varchar(50) NOT NULL ,
[optionD] varchar(50) NOT NULL ,
[answer] varchar(10) NOT NULL ,
[note] varchar(50) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[tb_Questions]', RESEED, 53)
GO

-- ----------------------------
-- Records of tb_Questions
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_Questions] ON
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'37', N'Windows 2000是什么？', N'单选题', N'2007-02-25 12:46:40.000', N'5', N'10', N'应用软件', N'操作系统', N'应用程序', N'以上都不是', N'B', N'空')
GO
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'39', N'网络营销的发展经历几个阶段？', N'单选题', N'2007-04-07 10:28:51.000', N'29', N'17', N'2个', N'3个', N'5个', N'6个', N'C', N'空')
GO
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'40', N'Internet提供的基本服务有哪些？', N'多选题', N'2007-04-07 10:31:48.000', N'29', N'17', N'E-mail', N'FTP', N'Telnet', N'WWW', N'A,B,C,D', N'空')
GO
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'48', N'EPROM代表什么？', N'单选题', N'2007-12-24 10:20:03.060', N'8', N'19', N'可编程存储器', N'可擦可编程存储器', N'只读存储器', N'可擦可编程只读存储器', N'D', N'')
GO
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'49', N'对于WWW的正确解释有哪些？', N'多选题', N'2007-12-24 10:36:51.733', N'8', N'19', N'全球网', N'万维网', N'局域网', N'World Wide Web的缩写', N'A,B,D', N'')
GO
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'50', N'5*5', N'单选题', N'2007-12-29 14:06:09.123', N'31', N'20', N'20', N'30', N'25', N'50', N'C', N'无')
GO
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'51', N'下列数据属于整数的是？', N'多选题', N'2007-12-29 14:08:13.653', N'31', N'20', N'1', N'2', N'3', N'4', N'A,B,C,D', N'无')
GO
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'52', N'1+1=？', N'单选题', N'2019-06-25 19:11:31.037', N'31', N'20', N'1', N'2', N'3', N'4', N'B', N'')
GO
GO
INSERT INTO [dbo].[tb_Questions] ([id], [subject], [type], [joinTime], [lessonId], [taoTiId], [optionA], [optionB], [optionC], [optionD], [answer], [note]) VALUES (N'53', N'Apple是什么意思', N'单选题', N'2019-06-25 19:14:45.950', N'4', N'23', N'苹果', N'梨', N'香蕉', N'橘子', N'A', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[tb_Questions] OFF
GO

-- ----------------------------
-- Table structure for tb_Student
-- ----------------------------
DROP TABLE [dbo].[tb_Student]
GO
CREATE TABLE [dbo].[tb_Student] (
[ID] varchar(16) NOT NULL ,
[name] varchar(20) NOT NULL ,
[pwd] varchar(20) NOT NULL ,
[sex] varchar(2) NOT NULL ,
[joinTime] datetime NOT NULL DEFAULT (getdate()) ,
[question] varchar(50) NOT NULL ,
[answer] varchar(50) NOT NULL ,
[profession] varchar(30) NULL ,
[cardNo] varchar(18) NOT NULL 
)


GO

-- ----------------------------
-- Records of tb_Student
-- ----------------------------
INSERT INTO [dbo].[tb_Student] ([ID], [name], [pwd], [sex], [joinTime], [question], [answer], [profession], [cardNo]) VALUES (N'CN20071201000001', N'王*晶', N'111', N'男', N'2007-12-13 13:21:11.000', N'birthday', N'717', N'广告学', N'220198302********')
GO
GO
INSERT INTO [dbo].[tb_Student] ([ID], [name], [pwd], [sex], [joinTime], [question], [answer], [profession], [cardNo]) VALUES (N'CN20071201000002', N'无语', N'111', N'女', N'2007-12-01 17:01:08.000', N'birthday', N'1', N'计算机应用软件', N'220198007********')
GO
GO
INSERT INTO [dbo].[tb_Student] ([ID], [name], [pwd], [sex], [joinTime], [question], [answer], [profession], [cardNo]) VALUES (N'CN20071225000005', N'无语*', N'111', N'女', N'2007-12-25 14:50:49.373', N'我最喜欢的颜色', N'蓝灰色', N'计算机应用软件', N'220104************')
GO
GO
INSERT INTO [dbo].[tb_Student] ([ID], [name], [pwd], [sex], [joinTime], [question], [answer], [profession], [cardNo]) VALUES (N'CN20071229000006', N'明明', N'111', N'女', N'2007-12-29 14:09:09.233', N'你好', N'你好', N'公司管理', N'20020')
GO
GO
INSERT INTO [dbo].[tb_Student] ([ID], [name], [pwd], [sex], [joinTime], [question], [answer], [profession], [cardNo]) VALUES (N'CN20071229000007', N'丽丽', N'111', N'女', N'2007-12-29 14:17:37.310', N'你好', N'你好', N'编程', N'52200')
GO
GO
INSERT INTO [dbo].[tb_Student] ([ID], [name], [pwd], [sex], [joinTime], [question], [answer], [profession], [cardNo]) VALUES (N'CN20190609000008', N'羊羊羊', N'111', N'男', N'2019-06-09 13:38:35.870', N'我的生日', N'717', N'软件工程', N'')
GO
GO

-- ----------------------------
-- Table structure for tb_StuResult
-- ----------------------------
DROP TABLE [dbo].[tb_StuResult]
GO
CREATE TABLE [dbo].[tb_StuResult] (
[id] bigint NOT NULL IDENTITY(1,1) ,
[stuId] varchar(16) NOT NULL ,
[whichLesson] varchar(60) NOT NULL ,
[resSingle] int NOT NULL ,
[resMore] int NOT NULL ,
[resTotal] AS ([resSingle] + [resMore]) ,
[joinTime] datetime NOT NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[tb_StuResult]', RESEED, 63)
GO

-- ----------------------------
-- Records of tb_StuResult
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_StuResult] ON
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'1', N'CN20071201000002', N'计算机专业英语', N'50', N'30', N'80', N'2007-12-17 14:39:41.170')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'2', N'CN20071201000001', N'计算机文化基础', N'0', N'20', N'20', N'2007-12-22 12:50:13.373')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'4', N'CN20071201000001', N'电子商务', N'20', N'30', N'50', N'2007-12-22 20:58:38.793')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'12', N'CN20071201000001', N'计算机专业英语', N'40', N'60', N'100', N'2007-12-24 10:57:51.310')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'14', N'CN20071225000005', N'计算机文化基础', N'40', N'0', N'40', N'2007-12-26 16:42:32.513')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'29', N'CN20071201000002', N'计算机文化基础', N'40', N'60', N'100', N'2007-12-28 18:54:42.903')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'30', N'CN20071229000006', N'数学', N'40', N'60', N'100', N'2007-12-29 14:11:33.763')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'37', N'CN20071229000007', N'计算机专业英语', N'0', N'0', N'0', N'2007-12-30 09:06:06.933')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'38', N'CN20071229000007', N'数学', N'40', N'60', N'100', N'2007-12-30 09:07:28.217')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'39', N'CN20071229000006', N'电子商务', N'0', N'0', N'0', N'2008-01-11 13:18:55.733')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'40', N'CN20071201000001', N'数学', N'0', N'0', N'0', N'2019-06-05 14:33:13.830')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'41', N'CN20071201000001', N'数学', N'0', N'0', N'0', N'2019-06-05 14:33:38.573')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'42', N'CN20071225000005', N'计算机专业英语', N'0', N'0', N'0', N'2019-06-05 23:03:58.473')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'43', N'CN20071225000005', N'计算机专业英语', N'0', N'0', N'0', N'2019-06-05 23:04:43.683')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'44', N'CN20071225000005', N'计算机专业英语', N'0', N'0', N'0', N'2019-06-05 23:05:21.700')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'45', N'CN20071225000005', N'计算机专业英语', N'0', N'0', N'0', N'2019-06-05 23:05:28.857')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'46', N'CN20071201000002', N'电子商务', N'0', N'0', N'0', N'2019-06-06 13:20:13.167')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'47', N'CN20071201000002', N'电子商务', N'0', N'0', N'0', N'2019-06-06 13:21:37.500')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'48', N'CN20071201000002', N'电子商务', N'0', N'0', N'0', N'2019-06-06 13:24:04.083')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'49', N'CN20071201000002', N'电子商务', N'0', N'0', N'0', N'2019-06-06 13:24:41.700')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'50', N'CN20071201000002', N'电子商务', N'0', N'0', N'0', N'2019-06-06 13:25:05.100')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'51', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:15:44.073')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'52', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:17:53.933')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'53', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:18:06.823')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'54', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:24:51.217')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'55', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:26:27.237')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'56', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:27:34.560')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'57', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:28:15.740')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'58', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:28:58.500')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'59', N'CN20071201000002', N'数学', N'0', N'0', N'0', N'2019-06-06 15:29:13.820')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'60', N'CN20071225000005', N'电子商务', N'0', N'0', N'0', N'2019-06-09 13:35:58.003')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'61', N'CN20071225000005', N'数学', N'40', N'60', N'100', N'2019-06-25 19:02:21.957')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'62', N'CN20190609000008', N'数学', N'0', N'0', N'0', N'2019-06-25 19:17:32.267')
GO
GO
INSERT INTO [dbo].[tb_StuResult] ([id], [stuId], [whichLesson], [resSingle], [resMore], [resTotal], [joinTime]) VALUES (N'63', N'CN20190609000008', N'计算机专业英语', N'0', N'0', N'0', N'2019-06-26 08:21:15.490')
GO
GO
SET IDENTITY_INSERT [dbo].[tb_StuResult] OFF
GO

-- ----------------------------
-- Table structure for tb_TaoTi
-- ----------------------------
DROP TABLE [dbo].[tb_TaoTi]
GO
CREATE TABLE [dbo].[tb_TaoTi] (
[ID] bigint NOT NULL IDENTITY(1,1) ,
[Name] varchar(50) NOT NULL ,
[LessonID] bigint NOT NULL ,
[JoinTime] datetime NOT NULL DEFAULT (getdate()) 
)


GO
DBCC CHECKIDENT(N'[dbo].[tb_TaoTi]', RESEED, 24)
GO

-- ----------------------------
-- Records of tb_TaoTi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tb_TaoTi] ON
GO
INSERT INTO [dbo].[tb_TaoTi] ([ID], [Name], [LessonID], [JoinTime]) VALUES (N'10', N'2007年期末考试', N'5', N'2007-02-01 14:46:27.000')
GO
GO
INSERT INTO [dbo].[tb_TaoTi] ([ID], [Name], [LessonID], [JoinTime]) VALUES (N'17', N'2007年上半年期中考试题', N'29', N'2007-04-07 10:23:13.000')
GO
GO
INSERT INTO [dbo].[tb_TaoTi] ([ID], [Name], [LessonID], [JoinTime]) VALUES (N'19', N'2007年期末考试题A', N'8', N'2007-12-24 10:17:10.687')
GO
GO
INSERT INTO [dbo].[tb_TaoTi] ([ID], [Name], [LessonID], [JoinTime]) VALUES (N'20', N'数学上', N'31', N'2007-12-29 14:04:36.467')
GO
GO
INSERT INTO [dbo].[tb_TaoTi] ([ID], [Name], [LessonID], [JoinTime]) VALUES (N'23', N'英语二考试', N'4', N'2019-06-25 19:13:39.537')
GO
GO
INSERT INTO [dbo].[tb_TaoTi] ([ID], [Name], [LessonID], [JoinTime]) VALUES (N'24', N'数学下', N'31', N'2019-06-25 19:19:31.783')
GO
GO
SET IDENTITY_INSERT [dbo].[tb_TaoTi] OFF
GO

-- ----------------------------
-- Indexes structure for table dtproperties
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table dtproperties
-- ----------------------------
ALTER TABLE [dbo].[dtproperties] ADD PRIMARY KEY ([id], [property])
GO

-- ----------------------------
-- Indexes structure for table tb_Lesson
-- ----------------------------
CREATE INDEX [IX_tb_Lesson] ON [dbo].[tb_Lesson]
([Name] ASC) 
GO
CREATE UNIQUE INDEX [IX_tb_Lesson_1] ON [dbo].[tb_Lesson]
([Name] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Primary Key structure for table tb_Lesson
-- ----------------------------
ALTER TABLE [dbo].[tb_Lesson] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table tb_manager
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_manager
-- ----------------------------
ALTER TABLE [dbo].[tb_manager] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table tb_Questions
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Questions
-- ----------------------------
ALTER TABLE [dbo].[tb_Questions] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table tb_Student
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_Student
-- ----------------------------
ALTER TABLE [dbo].[tb_Student] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table tb_StuResult
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_StuResult
-- ----------------------------
ALTER TABLE [dbo].[tb_StuResult] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table tb_TaoTi
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table tb_TaoTi
-- ----------------------------
ALTER TABLE [dbo].[tb_TaoTi] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tb_Questions]
-- ----------------------------
ALTER TABLE [dbo].[tb_Questions] ADD FOREIGN KEY ([taoTiId]) REFERENCES [dbo].[tb_TaoTi] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tb_StuResult]
-- ----------------------------
ALTER TABLE [dbo].[tb_StuResult] ADD FOREIGN KEY ([whichLesson]) REFERENCES [dbo].[tb_Lesson] ([Name]) ON DELETE NO ACTION ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tb_StuResult] ADD FOREIGN KEY ([stuId]) REFERENCES [dbo].[tb_Student] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[tb_TaoTi]
-- ----------------------------
ALTER TABLE [dbo].[tb_TaoTi] ADD FOREIGN KEY ([LessonID]) REFERENCES [dbo].[tb_Lesson] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
