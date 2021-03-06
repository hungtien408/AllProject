/****** Object:  ForeignKey [FK_LocalArticle_LocalArticleCategory]    Script Date: 01/28/2013 13:52:59 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LocalArticle_LocalArticleCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocalArticle]'))
ALTER TABLE [dbo].[LocalArticle] DROP CONSTRAINT [FK_LocalArticle_LocalArticleCategory]
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderLocalArticle_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderLocalArticle_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_OlderLocalArticle_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_Update]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticle_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerLocalArticle_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerLocalArticle_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_NewerLocalArticle_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_SameLocalArticle_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameLocalArticle_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SameLocalArticle_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleImage_Delete]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_Insert]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticle_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_QuickUpdate]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticle_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_Delete]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticle_Delete]
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildLocalArticleCategory_SelectAll]    Script Date: 01/28/2013 13:53:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildLocalArticleCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ufn_ChildLocalArticleCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_UpOrder]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_UpOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_UpOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategoryForEdit_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategoryForEdit_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_SelectOne]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_SelectOne]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_DownOrder]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_DownOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_DownOrder]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_Delete]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_QuickUpdate]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_QuickUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_QuickUpdate]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_Insert]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_Insert]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_Update]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_Update]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_Update]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_SelectAll]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategoryImage_Delete]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategoryImage_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategoryImage_Delete]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_IsChildrenExist]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticleCategory_IsChildrenExist]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_SelectOne]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_SelectOne]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticle_SelectOne]
GO
/****** Object:  Table [dbo].[LocalArticle]    Script Date: 01/28/2013 13:52:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocalArticle]') AND type in (N'U'))
DROP TABLE [dbo].[LocalArticle]
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_SelectAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_LocalArticle_SelectAll]
GO
/****** Object:  Table [dbo].[LocalArticleCategory]    Script Date: 01/28/2013 13:52:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocalArticleCategory]') AND type in (N'U'))
DROP TABLE [dbo].[LocalArticleCategory]
GO
/****** Object:  FullTextCatalog [FullTextCatalog]    Script Date: 01/28/2013 13:53:00 ******/
IF EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'FullTextCatalog')
DROP FULLTEXT CATALOG [FullTextCatalog]
GO
/****** Object:  FullTextCatalog [FullTextCatalog]    Script Date: 01/28/2013 13:53:00 ******/
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'FullTextCatalog')
CREATE FULLTEXT CATALOG [FullTextCatalog]
WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT
AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[LocalArticleCategory]    Script Date: 01/28/2013 13:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocalArticleCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LocalArticleCategory](
	[LocalArticleCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[LocalArticleCategoryName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LocalArticleCategoryNameEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ParentID] [int] NULL,
	[SortOrder] [tinyint] NULL,
	[IsShowOnMenu] [bit] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_LocalArticleCategory] PRIMARY KEY CLUSTERED 
(
	[LocalArticleCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[LocalArticleCategory]'))
CREATE FULLTEXT INDEX ON [dbo].[LocalArticleCategory](
[LocalArticleCategoryName] LANGUAGE [English], 
[LocalArticleCategoryNameEn] LANGUAGE [English])
KEY INDEX [PK_LocalArticleCategory] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
SET IDENTITY_INSERT [dbo].[LocalArticleCategory] ON
INSERT [dbo].[LocalArticleCategory] ([LocalArticleCategoryID], [LocalArticleCategoryName], [LocalArticleCategoryNameEn], [ImageName], [ParentID], [SortOrder], [IsShowOnMenu], [IsShowOnHomePage], [IsAvailable]) VALUES (1, N'Cưới Hỏi', NULL, NULL, NULL, 1, 1, 1, 1)
INSERT [dbo].[LocalArticleCategory] ([LocalArticleCategoryID], [LocalArticleCategoryName], [LocalArticleCategoryNameEn], [ImageName], [ParentID], [SortOrder], [IsShowOnMenu], [IsShowOnHomePage], [IsAvailable]) VALUES (2, N'Thời Trang', NULL, NULL, NULL, 2, 1, 1, 1)
INSERT [dbo].[LocalArticleCategory] ([LocalArticleCategoryID], [LocalArticleCategoryName], [LocalArticleCategoryNameEn], [ImageName], [ParentID], [SortOrder], [IsShowOnMenu], [IsShowOnHomePage], [IsAvailable]) VALUES (3, N'Sinh Vật Cảnh', NULL, NULL, NULL, 3, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[LocalArticleCategory] OFF
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE procedure [dbo].[usp_LocalArticle_SelectAll]
@StartRowIndex int = NULL,
@EndRowIndex int = NULL,
@Keyword nvarchar(1000) = NULL,
@LocalArticleTitle nvarchar(200) = NULL,
@Description nvarchar(1000) = NULL,
@LocalArticleCategoryID int = NULL,
@Tag nvarchar(200) = NULL,
@IsShowOnHomePage bit = NULL,
@FromDate datetime = NULL,
@ToDate datetime = NULL,
@IsAvailable bit = NULL,
@Priority bit = NULL,
@SortByPriority bit = NULL,
@ErrorCode int = NULL OUTPUT
as

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT *
FROM (
	SELECT 
		ROW_NUMBER() OVER (ORDER BY '' + case when @SortByPriority = 1 then ''-c.Priority desc, '' else '''' end + '' CreateDate DESC) AS row_number,
		[LocalArticleID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[LocalArticleTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[LocalArticleTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[LocalArticleCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[LocalArticleCategoryName],
		c.[Priority]
	FROM LocalArticle c
	left join LocalArticleCategory cc on cc.LocalArticleCategoryID = c.LocalArticleCategoryID
	where 1=1 ''

if @Keyword IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (FREETEXT(c.*, '''''' + @Keyword + '''''') or FREETEXT(cc.*, '''''' + @Keyword + '''''')) ''
if @LocalArticleTitle IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and (LocalArticleTitle like N''''%'' + @LocalArticleTitle + ''%'''' or LocalArticleTitle like N''''%'' + @LocalArticleTitle + ''%'''') ''

if @LocalArticleTitle IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((LocalArticleTitle, LocalArticleTitleEn), '''''' + @LocalArticleTitle + '''''') ''

if @Description IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Description, DescriptionEn), '''''' + @Description + '''''') ''

if @LocalArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.LocalArticleCategoryID in (select LocalArticleCategoryID from dbo.[ufn_ChildLocalArticleCategory_SelectAll]('' + str(@LocalArticleCategoryID) + '')) ''

if @Tag IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and FREETEXT((Tag, TagEn), '''''' + @Tag + '''''') ''

if @IsShowOnHomePage IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.IsShowOnHomePage = '' + str(@IsShowOnHomePage)

if @FromDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) >= '' + convert(varchar(8), @FromDate, 112)

if @ToDate IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and convert(varchar(8), CreateDate,112) <= '' + convert(varchar(8), @ToDate, 112)

if @IsAvailable IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.IsAvailable = '' + str(@IsAvailable)

if @Priority IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and '' + case when @Priority = 1 then '' c.Priority is not NULL '' else '' c.Priority is NULL '' end

set @SelectQuery = @SelectQuery + '' ) foo WHERE 1=1 ''

if @StartRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number >= '' + str(@StartRowIndex)

if @EndRowIndex IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and row_number <= '' + str(@EndRowIndex)

exec (@SelectQuery)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR



' 
END
GO
/****** Object:  Table [dbo].[LocalArticle]    Script Date: 01/28/2013 13:52:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocalArticle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LocalArticle](
	[LocalArticleID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittle] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescription] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LocalArticleTitle] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tag] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaTittleEn] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MetaDescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LocalArticleTitleEn] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEn] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEn] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TagEn] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LocalArticleCategoryID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Priority] [int] NULL,
	[IsShowOnHomePage] [bit] NULL,
	[IsAvailable] [bit] NULL,
 CONSTRAINT [PK_LocalArticle] PRIMARY KEY CLUSTERED 
(
	[LocalArticleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF not EXISTS (SELECT * FROM sys.fulltext_indexes fti WHERE fti.object_id = OBJECT_ID(N'[dbo].[LocalArticle]'))
CREATE FULLTEXT INDEX ON [dbo].[LocalArticle](
[Description] LANGUAGE [English], 
[DescriptionEn] LANGUAGE [English], 
[LocalArticleTitle] LANGUAGE [English], 
[LocalArticleTitleEn] LANGUAGE [English], 
[Tag] LANGUAGE [English], 
[TagEn] LANGUAGE [English])
KEY INDEX [PK_LocalArticle] ON [FullTextCatalog]
WITH CHANGE_TRACKING AUTO
GO
SET IDENTITY_INSERT [dbo].[LocalArticle] ON
INSERT [dbo].[LocalArticle] ([LocalArticleID], [ImageName], [MetaTittle], [MetaDescription], [LocalArticleTitle], [Description], [Content], [Tag], [MetaTittleEn], [MetaDescriptionEn], [LocalArticleTitleEn], [DescriptionEn], [ContentEn], [TagEn], [LocalArticleCategoryID], [CreateDate], [Priority], [IsShowOnHomePage], [IsAvailable]) VALUES (1, NULL, N'Web nhà hàng tiệc cưới', N'web-nha-hang-tiec-cuoi', N'Web nhà hàng tiệc cưới', N'<strong style="margin: 0px; padding: 0px; color: #555555; font-family: verdana, arial; font-size: 13px; line-height: 22px; background-color: #ffffff;">B&ecirc;n cạnh c&aacute;c kh&acirc;u chuẩn bị &aacute;o cưới, chụp ảnh cưới, chọn nhẫn cưới,&hellip; th&igrave; việc lựa chọn một nh&agrave; h&agrave;ng tiệc cưới&nbsp;ph&ugrave; hợp v&agrave; tiện lợi cho kh&aacute;ch mời lẫn họ h&agrave;ng về kh&ocirc;ng gian, địa điểm l&agrave; rất quan trọng.</strong>', N'<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">&Ocirc;ng Nguyễn Văn Minh, Ph&oacute; Gi&aacute;m đốc Sở VH-TT&amp;DL, cho biết điều n&agrave;y để tr&aacute;nh xảy ra t&igrave;nh trạng tổ chức đ&aacute;m cưới giả v&agrave; cũng nhằm bảo vệ quyền lợi hai b&ecirc;n nam nữ. C&aacute;c chủ nh&agrave; h&agrave;ng đều cho rằng đ&acirc;y l&agrave; việc n&ecirc;n l&agrave;m v&agrave; sẵn s&agrave;ng thực hiện.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Cũng theo &ocirc;ng Minh, một vấn đề được nhiều người quan t&acirc;m l&agrave; cần bỏ bớt c&aacute;c thủ tục rườm r&agrave;, kh&ocirc;ng ph&ugrave; hợp với văn h&oacute;a truyền thống như cắt b&aacute;nh cưới, khui rượu mừng&hellip; Điều n&agrave;y cũng được nhiều doanh nghiệp kinh doanh nh&agrave; h&agrave;ng tiệc cưới ủng hộ, song đề nghị cần phải c&oacute; phương &aacute;n thay thế những nghi thức đ&atilde; hủy bỏ, c&oacute; lộ tr&igrave;nh thực hiện v&agrave; l&agrave;m th&iacute; điểm trước khi &aacute;p dụng đại tr&agrave;.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Sau cuộc họp tr&ecirc;n, Ph&aacute;p Luật TP.HCM đ&atilde; lấy &yacute; kiến của người d&acirc;n v&agrave; c&aacute;c nh&agrave; h&agrave;ng. Phần lớn c&aacute;c &yacute; kiến được hỏi đều cho rằng nội dung n&agrave;y kh&ocirc;ng ph&ugrave; hợp với thực tế.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><strong>Đ&ograve;i giấy CNKH l&agrave; v&ocirc; l&yacute;</strong><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Anh Phạm Đức Hạnh (huyện H&oacute;c M&ocirc;n) rất ngạc nhi&ecirc;n với ti&ecirc;u ch&iacute; tr&ecirc;n. Anh ph&acirc;n t&iacute;ch, ph&aacute;p luật hiện h&agrave;nh kh&ocirc;ng c&oacute; quy định n&agrave;o l&agrave; phải c&oacute; giấy CNKH rồi mới được tổ chức đ&aacute;m cưới. Nếu c&ocirc;ng d&acirc;n tổ chức tiệc cưới kh&ocirc;ng vi phạm điều cấm th&igrave; kh&ocirc;ng hề vi phạm ph&aacute;p luật. Nghĩa l&agrave; người d&acirc;n c&oacute; quyền tổ chức đ&aacute;m cưới, sống chung với nhau, miễn l&agrave; kh&ocirc;ng vi phạm chế độ h&ocirc;n nh&acirc;n một vợ một chồng. Đ&aacute;m cưới chỉ l&agrave; một thủ tục mang t&iacute;nh truyền thống chứ kh&ocirc;ng phải l&agrave; một thủ tục ph&aacute;p l&yacute;. Nhiều người cưới nhau, sống chung nhưng v&igrave; nhiều l&yacute; do kh&ocirc;ng muốn đăng k&yacute; kết h&ocirc;n hoặc chờ khi c&oacute; con mới đăng k&yacute; kết h&ocirc;n&hellip; &ldquo;Ph&aacute;p luật kh&ocirc;ng cấm th&igrave; việc một đơn vị, tổ chức n&agrave;o y&ecirc;u cầu phải c&oacute; giấy CNKH rồi mới được tổ chức đ&aacute;m cưới l&agrave; rất v&ocirc; l&yacute;, kh&ocirc;ng chấp nhận được&rdquo; - anh Hạnh n&oacute;i.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="color: blue;"><img width="500" height="347" src="https://mail.google.com/mail/?ui=2&amp;ik=c8a029ef71&amp;view=att&amp;th=13ba6c02ef42ab2c&amp;attid=0.1&amp;disp=emb&amp;zw&amp;atsh=1" alt="Mở tiệc cưới ở nh&agrave; h&agrave;ng phải c&oacute; giấy kết h&ocirc;n?, Tin tức trong ng&agrave;y, tiec cuoi, mo tiec cuoi, giay ket hon, dang ky ket hon, cuoi o nha hang phai co giay chung nhan ket hon, chung nhan ket hon, dich vu dam cuoi, dich vu cuoi hoi, bao, tin hay, tin hot, tin tuc, vn" /></span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="color: blue;">Phần lớn c&aacute;c &yacute; kiến được hỏi đều cho rằng nội dung "nh&agrave; h&agrave;ng chỉ tổ chức tiệc cưới khi c&oacute; giấy đăng k&yacute; kết h&ocirc;n" kh&ocirc;ng ph&ugrave; hợp với thực tế<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">C&ograve;n anh Nguyễn Văn Hậu (quận 9) th&igrave; cho rằng việc nh&agrave; h&agrave;ng đ&ograve;i xuất tr&igrave;nh giấy CNKH sẽ khiến kh&aacute;ch h&agrave;ng c&oacute; cảm gi&aacute;c đang bị kiểm tra h&agrave;nh ch&iacute;nh, tạo t&acirc;m l&yacute; kh&ocirc;ng thoải m&aacute;i. Nh&agrave; h&agrave;ng l&agrave; một đơn vị kinh doanh chứ kh&ocirc;ng phải đơn vị quản l&yacute; nh&agrave; nước để c&oacute; quyền kiểm tra giấy tờ của kh&aacute;ch h&agrave;ng. Hơn nữa, kh&ocirc;ng phải kh&aacute;ch h&agrave;ng n&agrave;o cũng muốn c&ocirc;ng khai th&ocirc;ng tin c&aacute; nh&acirc;n khi tổ chức tiệc cưới. (V&iacute; dụ trường hợp hai vợ chồng qu&aacute; ch&ecirc;nh lệch tuổi t&aacute;c n&ecirc;n họ kh&ocirc;ng muốn nhiều người biết&hellip;). &ldquo;Để đỡ khoản thủ tục, giấy tờ rắc rối, t&ocirc;i nhất định sẽ chọn nh&agrave; h&agrave;ng n&agrave;o kh&ocirc;ng đ&ograve;i hỏi giấy CNKH để tổ chức tiệc cưới&rdquo; - anh Hậu cho biết.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><strong>Kh&oacute; cho doanh nghiệp</strong><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Tại buổi g&oacute;p &yacute; của đại diện c&aacute;c nh&agrave; h&agrave;ng kinh doanh tiệc cưới, nhiều doanh nghiệp đều cho rằng n&ecirc;n thực hiện. Tuy nhi&ecirc;n, khảo s&aacute;t tr&ecirc;n thực tế, phần lớn c&aacute;c doanh nghiệp đều phản ứng v&agrave; kh&ocirc;ng mấy thiện cảm đối với vấn đề tr&ecirc;n. B&agrave; Phạm Ngọc B&iacute;ch V&acirc;n (Trưởng ph&ograve;ng nhận tiệc nh&agrave; h&agrave;ng Đ&ocirc;ng Phương 2, quận T&acirc;n B&igrave;nh) cho biết nh&agrave; h&agrave;ng chỉ l&agrave; nơi để tổ chức tiệc cưới, kh&ocirc;ng phải l&agrave; cơ quan quản l&yacute; nh&agrave; nước n&ecirc;n kh&ocirc;ng c&oacute; quyền y&ecirc;u cầu kh&aacute;ch h&agrave;ng phải tr&igrave;nh giấy CNKH. &ldquo;Nếu đ&aacute;m cưới phải c&oacute; giấy CNKH th&igrave; tiệc sinh nhật cũng phải tr&igrave;nh giấy khai sinh?&rdquo; - b&agrave; V&acirc;n đặt vấn đề. B&agrave; V&acirc;n cho rằng nếu hỏi đến c&aacute;c giấy tờ n&agrave;y, chắc chắn kh&aacute;ch h&agrave;ng sẽ kh&oacute; chịu.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Về giả thuyết nhằm tr&aacute;nh đ&aacute;m cưới giả, b&agrave; V&acirc;n cho biết đ&aacute;m cưới thường c&oacute; h&agrave;ng chục b&agrave;n tiệc, c&ocirc; d&acirc;u, ch&uacute; rể phải tốn h&agrave;ng trăm triệu đồng n&ecirc;n kh&ocirc;ng ai dại g&igrave; tốn từng ấy tiền để l&agrave;m đ&aacute;m cưới giả. Trong khi đ&oacute;, nhiều cặp vợ chồng đ&atilde; lớn tuổi c&oacute; con c&aacute;i đề huề cũng muốn tổ chức lễ cưới để kỷ niệm (v&igrave; l&uacute;c trẻ gia đ&igrave;nh kinh tế kh&oacute; khăn n&ecirc;n chưa c&oacute; đ&aacute;m cưới). &ldquo;Một gia đ&igrave;nh hạnh ph&uacute;c như vậy đến tổ chức đ&aacute;m cưới th&igrave; việc đ&ograve;i hỏi phải c&oacute; giấy CNKH c&oacute; &yacute; nghĩa g&igrave;? V&agrave; thật v&ocirc; l&yacute; nếu phải hỏi họ về điều đ&oacute;&rdquo; - b&agrave; V&acirc;n nhận x&eacute;t.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Đồng quan điểm, chị Uy&ecirc;n (Trưởng ph&ograve;ng Kinh doanh kh&aacute;ch sạn Park Royal, quận 3) cho biết kh&aacute;ch sạn n&agrave;y tiếp nhận kh&aacute; nhiều cặp vợ chồng m&agrave; vợ hoặc chồng l&agrave; người nước ngo&agrave;i n&ecirc;n họ thường tổ chức lễ gặp mặt ở Việt Nam, sau đ&oacute; mới sang nước ngo&agrave;i tổ chức đ&aacute;m cưới. Theo chị Uy&ecirc;n, giấy CNKH chỉ l&agrave; căn cứ ph&aacute;p luật để x&aacute;c thực hai người l&agrave; vợ chồng trước ph&aacute;p luật để khi xảy ra tranh chấp th&igrave; c&oacute; thể căn cứ v&agrave;o tờ giấy đ&oacute; để xử l&yacute;. C&ograve;n kh&aacute;ch đến dự tiệc chẳng ai quan t&acirc;m c&ocirc; d&acirc;u v&agrave; ch&uacute; rể đ&atilde; đăng k&yacute; kết h&ocirc;n chưa. Nhiều kh&aacute;ch h&agrave;ng th&iacute;ch chọn ng&agrave;y tốt để cưới nhưng nhiều khi chọn được ng&agrave;y cưới sớm hơn ng&agrave;y lấy giấy CNKH. &ldquo;Chẳng c&oacute; ai v&igrave; những l&yacute; do đ&oacute; m&agrave; kh&ocirc;ng nhận tổ chức đ&aacute;m cưới cho họ cả&rdquo; - chị Uy&ecirc;n n&oacute;i.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A12300F29430 AS DateTime), NULL, 1, 1)
INSERT [dbo].[LocalArticle] ([LocalArticleID], [ImageName], [MetaTittle], [MetaDescription], [LocalArticleTitle], [Description], [Content], [Tag], [MetaTittleEn], [MetaDescriptionEn], [LocalArticleTitleEn], [DescriptionEn], [ContentEn], [TagEn], [LocalArticleCategoryID], [CreateDate], [Priority], [IsShowOnHomePage], [IsAvailable]) VALUES (2, NULL, N'Web giày nam cao cấp', N'web-giay-nam-cao-cap', N'Web giày nam cao cấp', N'<p style="margin: 0px; padding: 0px; color: #555555; font-family: verdana, arial; font-size: 13px; line-height: 22px; background-color: #ffffff;"><span id="ctl00_cphBody_FormView1_lblSummary" style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px;">Những thương hiệu gi&agrave;y nam&nbsp;nổi tiếng thế giới như: gi&agrave;y nam</strong><strong style="margin: 0px; padding: 0px;">&nbsp;Mauci, gi&agrave;y nam&nbsp;Giorgio Armani, gi&agrave;y nam</strong></span></p>', N'<p style="margin: 0px; color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><span style="font-size: 12pt; font-family: Arial, sans-serif; color: windowtext;">Ch&uacute;ng t&ocirc;i xin giới thiệu những mẫu gi&agrave;y hot nhất d&agrave;nh ri&ecirc;ng cho đấng m&agrave;y r&acirc;u trong m&ugrave;a thu đ&ocirc;ng năm nay.</span><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><strong><span style="font-family: Arial, sans-serif;">Gi&agrave;y thể thao</span></strong><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><span style="font-family: Arial, sans-serif;">Bộ sưu tập gi&agrave;y thể thao nam mới nhất với c&aacute;c thiết kế đơn giản nhưng đầy tinh tế mang lại cảm gi&aacute;c rất dễ chịu khi mang.</span><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><span style="font-family: Arial, sans-serif;"><img width="500" height="222" src="https://mail.google.com/mail/?ui=2&amp;ik=c8a029ef71&amp;view=att&amp;th=13ba6c02ef42ab2c&amp;attid=0.3&amp;disp=emb&amp;zw&amp;atsh=1" alt="Xu hướng gi&agrave;y nam m&ugrave;a thu đ&ocirc;ng 2012, Thị trường - Ti&ecirc;u d&ugrave;ng, " /></span><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;">Gi&agrave;y thể thao sneaker Boxfresh m&agrave;u ghi (BF-5345-GHI)</span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;"><img width="500" height="242" src="https://mail.google.com/mail/?ui=2&amp;ik=c8a029ef71&amp;view=att&amp;th=13ba6c02ef42ab2c&amp;attid=0.4&amp;disp=emb&amp;zw&amp;atsh=1" alt="Xu hướng gi&agrave;y nam m&ugrave;a thu đ&ocirc;ng 2012, Thị trường - Ti&ecirc;u d&ugrave;ng, " /></span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;">Gi&agrave;y sneaker Boxfresh m&agrave;u đen (BF-10683-DEN)</span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;"><img width="500" height="243" src="https://mail.google.com/mail/?ui=2&amp;ik=c8a029ef71&amp;view=att&amp;th=13ba6c02ef42ab2c&amp;attid=0.5&amp;disp=emb&amp;zw&amp;atsh=1" alt="Xu hướng gi&agrave;y nam m&ugrave;a thu đ&ocirc;ng 2012, Thị trường - Ti&ecirc;u d&ugrave;ng, " /></span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;">Gi&agrave;y Gi&agrave;y thể thao Lacoste m&agrave;u đen (LC-16024)</span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;"><img width="500" height="90" src="https://mail.google.com/mail/?ui=2&amp;ik=c8a029ef71&amp;view=att&amp;th=13ba6c02ef42ab2c&amp;attid=0.6&amp;disp=emb&amp;zw&amp;atsh=1" alt="Xu hướng gi&agrave;y nam m&ugrave;a thu đ&ocirc;ng 2012, Thị trường - Ti&ecirc;u d&ugrave;ng, " /></span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;">Gi&agrave;y lười da lộn m&agrave;u đen (p445)</span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;"><img width="500" height="375" src="https://mail.google.com/mail/?ui=2&amp;ik=c8a029ef71&amp;view=att&amp;th=13ba6c02ef42ab2c&amp;attid=0.7&amp;disp=emb&amp;zw&amp;atsh=1" alt="Xu hướng gi&agrave;y nam m&ugrave;a thu đ&ocirc;ng 2012, Thị trường - Ti&ecirc;u d&ugrave;ng, " /></span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff; text-align: center;"><em><span style="font-family: Arial, sans-serif; color: blue;">Gi&agrave;y da lộn cổ cao m&agrave;u da b&ograve; (LV-2203)</span><span style="color: blue;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></em></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><span style="font-family: Arial, sans-serif;">Gi&agrave;y nam sneaker Converse ch&iacute;nh h&atilde;ng được thiết kế khỏe khoắn. C&aacute;c chi tiết trang tr&iacute; khiến đ&ocirc;i gi&agrave;y tr&ocirc;ng thực sự nổi bật nếu bạn kh&eacute;o l&eacute;o kết hợp với một chiếc quần jeans m&agrave;u x&aacute;m, v&agrave; đừng qu&ecirc;n mặc &aacute;o thun m&agrave;u xanh ton-sur-ton.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, CAST(0x0000A12300F2D15E AS DateTime), NULL, 1, 1)
INSERT [dbo].[LocalArticle] ([LocalArticleID], [ImageName], [MetaTittle], [MetaDescription], [LocalArticleTitle], [Description], [Content], [Tag], [MetaTittleEn], [MetaDescriptionEn], [LocalArticleTitleEn], [DescriptionEn], [ContentEn], [TagEn], [LocalArticleCategoryID], [CreateDate], [Priority], [IsShowOnHomePage], [IsAvailable]) VALUES (3, NULL, N'Web đầm bầu', N'web-dam-bau', N'Web đầm bầu', N'<strong style="margin: 0px; padding: 0px; color: #555555; font-family: verdana, arial; font-size: 13px; line-height: 22px; background-color: #ffffff;">Bạn đang mang thai v&agrave; cơ thể bạn ng&agrave;y c&agrave;ng c&oacute; nhiều thay đổi? Bạn đ&atilde; kh&ocirc;ng c&ograve;n mặc vừa những bộ quần &aacute;o b&igrave;nh thường nữa v&agrave; bạn cần t&igrave;m đến những bộ quần &aacute;o bầu, đầm bầu&nbsp;để cảm thấy thoải m&aacute;i, tự tin hơn khi đi l&agrave;m, đi dự tiệc, đi t&aacute;n gẫu cuối tuần c&ugrave;ng bạn b&egrave; hay dạo chơi c&ugrave;ng &ocirc;ng x&atilde;. Để c&oacute; bầu m&agrave; vẫn đẹp trong mắt mọi người th&igrave; c&aacute;c mẹ bầu h&atilde;y biết chăm s&oacute;c bản th&acirc;n để bạ</strong>', N'<p style="margin: 0px; padding: 0px; color: #555555; font-family: verdana, arial; font-size: 13px; line-height: 22px; background-color: #ffffff;">
</p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">&ldquo;&Aacute;nh mắt s&acirc;u dịu d&agrave;ng đầy mạnh mẽ. M&aacute;i t&oacute;c bu&ocirc;ng lơi, nụ cười rạng rỡ.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Mẹ bầu Anna Nina gợi cảm m&agrave; b&iacute; ẩn, quyến rũ m&agrave; hiện đại. C&ocirc; ấy lu&ocirc;n tạo n&ecirc;n một sự l&ocirc;i cuốn bởi phong c&aacute;ch tự tin v&agrave; thần th&aacute;i chững chạc của người th&agrave;nh đạt.&rdquo;<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Trong bộ sưu tập Xu&acirc;n &ndash; H&egrave; 2012, đẳng cấp thương hiệu một lần nữa được khẳng định với những thiết kế rất thời trang, quyến rũ một c&aacute;ch rất hiện đại của người th&agrave;nh thị.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><img width="500" height="750" src="https://mail.google.com/mail/?ui=2&amp;ik=c8a029ef71&amp;view=att&amp;th=13ba6c02ef42ab2c&amp;attid=0.2&amp;disp=emb&amp;zw&amp;atsh=1" alt="http://img-hcm.24hstatic.com/upload/2-2012/images/2012-05-19/1337413807-dam-bau-anna-nina-su-quyen-ru-ky-dieu--2-.jpg" /><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></p>
<p style="color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;">Những chiếc đầm sọc kẻ thời thượng mang đến cho c&aacute;c mẹ Bầu trang phục theo phong c&aacute;ch Ch&acirc;u &Acirc;u thanh lịch v&agrave; trẻ trung. Văn ph&ograve;ng l&agrave;m việc sẽ th&ecirc;m phần năng động khi c&aacute;c Chị diện những chiếc đầm chất liệu thun cao cấp n&agrave;y.</p>
<p><br />
</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, CAST(0x0000A12300F318D3 AS DateTime), NULL, 1, 1)
INSERT [dbo].[LocalArticle] ([LocalArticleID], [ImageName], [MetaTittle], [MetaDescription], [LocalArticleTitle], [Description], [Content], [Tag], [MetaTittleEn], [MetaDescriptionEn], [LocalArticleTitleEn], [DescriptionEn], [ContentEn], [TagEn], [LocalArticleCategoryID], [CreateDate], [Priority], [IsShowOnHomePage], [IsAvailable]) VALUES (4, NULL, N'Web Bonsai', N'web-bonsai', N'Web Bonsai', N'Bonsai l&agrave; dạng c&acirc;y cảnh nhỏ d&aacute;ng cổ thụ được trồng trong c&aacute;c chậu cảnh. Mỗi t&aacute;c phẩm bonsai đem lại những gi&aacute; trị về mặt thẩm mỹ v&agrave; tinh thần ri&ecirc;ng cho người chơi', N'<p style="margin: 0px; padding: 0px; color: #555555; font-family: verdana, arial; font-size: 13px; line-height: 22px; background-color: #ffffff;"><span id="ctl00_cphBody_FormView1_lblSummary" style="margin: 0px; padding: 0px;"><strong style="margin: 0px; padding: 0px;"><a href="http://www.bonsai.net.vn/" target="_blank" style="margin: 0px; padding: 0px; text-decoration: underline; color: #0088cc;"></a></strong></span></p>
<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; background-color: #ffffff; color: #353535; font-family: arial, helvetica, sans-serif; line-height: 19.5px; text-align: justify;"></div>
<p style="margin: 0px; color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><span style="font-size: 12pt; color: windowtext;">Về cơ bản, c&oacute; hai c&aacute;ch kh&aacute;c nhau để tỉa c&acirc;y: tỉa để duy tr&igrave; sự sống của c&acirc;y; tỉa để trau chuốt v&agrave; tạo d&aacute;ng cho c&acirc;y. C&aacute;c c&aacute;ch tỉa y&ecirc;u cầu những kỹ thuật tỉa kh&aacute;c nhau, để tạo cho c&acirc;y những h&igrave;nh d&aacute;ng v&agrave; phong c&aacute;ch mang t&iacute;nh thẩm mỹ, nghệ thuật.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></p>
<p style="margin: 0px; color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><span style="font-size: 12pt; color: windowtext;"><img width="500" height="374" src="https://mail.google.com/mail/?ui=2&amp;ik=c8a029ef71&amp;view=att&amp;th=13ba6c02ef42ab2c&amp;attid=0.8&amp;disp=emb&amp;zw&amp;atsh=1" alt="Kỹ thuật tỉa cho c&acirc;y bonsai" /></span><span style="font-size: 12pt; color: windowtext;"><span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></p>
<p style="margin: 0px; color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><span style="font-size: 12pt; color: windowtext;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Trước khi n&oacute;i chi tiết về 2 phương ph&aacute;p tr&ecirc;n, ch&uacute;ng ta h&atilde;y t&igrave;m hiểu những kiến thức cơ bản xem c&acirc;y mọc như thế n&agrave;o để ch&uacute;ng ta c&oacute; thể hiểu c&aacute;ch tỉa c&acirc;y bonsai.<br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;C&acirc;y c&oacute; khuynh hướng tự nhi&ecirc;n l&agrave; mọc hướng l&ecirc;n tr&ecirc;n v&agrave; ra ngo&agrave;i r&igrave;a, được gọi l&agrave; &ldquo;trội hơn ở phần ngọn&rdquo;. Chức năng tự nhi&ecirc;n n&agrave;y gi&uacute;p cho c&acirc;y mọc cao hơn để tr&aacute;nh bị che b&oacute;ng bởi những c&acirc;y kh&aacute;c. Khi c&acirc;y ph&aacute;t triển ở phần ngọn v&agrave; phần r&igrave;a, phần b&ecirc;n trong v&agrave; những c&agrave;nh thấp hơn sẽ chết, trong khi những c&agrave;nh ở tr&ecirc;n cao mọc v&ocirc; trật tự, c&oacute; ảnh hưởng xấu cho c&acirc;y bonsai. Kiến thức cơ bản n&agrave;y cho thấy kh&ocirc;ng chỉ tầm quan trọng của việc tỉa c&acirc;y, m&agrave; c&ograve;n chỉ cho ta c&aacute;ch chống lại khuynh hướng mọc mạnh mẽ hơn ở phần ngọn, bằng c&aacute;ch tỉa phần ngọn v&agrave; những phần ngo&agrave;i r&igrave;a của c&acirc;y mỏng hơn v&agrave; xuy&ecirc;n thấu được.<br />
<br />
<strong>C&aacute;ch tỉa duy tr&igrave;:</strong><br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Điều quan trọng trong c&aacute;ch tỉa n&agrave;y l&agrave; để duy tr&igrave; v&agrave; trau chuốt h&igrave;nh d&aacute;ng c&acirc;y. Như đ&atilde; giải th&iacute;ch ở tr&ecirc;n, c&acirc;y sẽ tập trung mọc nhanh nhất ở phần ngọn v&agrave; phần ngo&agrave;i r&igrave;a, ch&uacute;ng ta phải tỉa những khu vực n&agrave;y thường xuy&ecirc;n để những phần ph&iacute;a b&ecirc;n trong ph&aacute;t triển tốt hơn.<span style="text-decoration: underline;"></span><span style="text-decoration: underline;"></span></span></p>
<p style="margin: 0px; color: #222222; font-family: arial, sans-serif; font-size: 13px; background-color: #ffffff;"><span style="font-size: 12pt; color: windowtext;">Một phương ph&aacute;p kh&aacute;c để tỉa c&acirc;y gi&uacute;p duy tr&igrave; h&igrave;nh d&aacute;ng của c&acirc;y l&agrave; ngắt l&aacute;, tức ngắt l&aacute; khỏi c&acirc;y để buộc c&acirc;y mọc l&aacute; mới. Kỹ thuật n&agrave;y l&agrave; để giảm k&iacute;ch thước l&aacute; v&agrave; gia tăng sự chia nh&aacute;nh.<br />
<strong>Cắt tỉa theo phong c&aacute;ch</strong><br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Th&ocirc;ng thường, muốn tạo d&aacute;ng cho c&acirc;y, những nh&aacute;nh lớn sẽ phải được cắt bỏ. Quyết định xem c&agrave;nh n&agrave;o giữ lại v&agrave; c&agrave;nh n&agrave;o cần được cắt bỏ. Việc n&agrave;y c&oacute; lẽ sẽ rất kh&oacute; khăn, kh&ocirc;ng chỉ v&igrave; n&oacute; l&agrave; một h&agrave;nh động kh&ocirc;ng thể n&agrave;o l&agrave;m kh&aacute;c được, m&agrave; c&ograve;n v&igrave; n&oacute; l&agrave; việc phải quyết định xem h&igrave;nh d&aacute;ng của c&acirc;y sẽ tr&ocirc;ng như thế n&agrave;o. Trước khi t&igrave;m hiểu nhiều hơn về kỹ thuật cắt tỉa tạo d&aacute;ng n&agrave;y, bạn phải xem qua phần nghi&ecirc;n cứu theo từng trường hợp trong website, nơi bạn sẽ t&igrave;m thấy những v&iacute; dụ về những kinh nghiệm cắt tỉa tạo d&aacute;ng của những người chăm s&oacute;c bonsai.<br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Khi n&agrave;o? N&oacute;i chung, thời gian th&iacute;ch hợp để tạo d&aacute;ng cho c&acirc;y l&agrave; đầu m&ugrave;a xu&acirc;n hay cuối m&ugrave;a thu (chỉ ngay trước v&agrave; sau m&ugrave;a c&acirc;y ph&aacute;t triển).</span></p>
<div><br />
</div>
<span style="line-height: 22px; background-color: #ffffff; font-family: verdana, arial; font-size: 13px; color: #555555;"></span>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, CAST(0x0000A12300F365CE AS DateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[LocalArticle] OFF
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_SelectOne]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticle_SelectOne]
@LocalArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[LocalArticleID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[LocalArticleTitle],
		[Content],
		[Description],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[LocalArticleTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[LocalArticleCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[LocalArticleCategoryName],
		[LocalArticleCategoryNameEn],
		c.[Priority]
FROM LocalArticle c
left join LocalArticleCategory ac on ac.LocalArticleCategoryID = c.LocalArticleCategoryID
where c.[LocalArticleID] = @LocalArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_IsChildrenExist]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_IsChildrenExist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_IsChildrenExist]
@LocalArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @exist bit
select @exist = 1 from LocalArticleCategory where ParentID = @LocalArticleCategoryID

if @exist is null
	select @exist = 1 from LocalArticle where LocalArticleCategoryID = @LocalArticleCategoryID

select cast(isnull(@exist,0) as bit)

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategoryImage_Delete]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategoryImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategoryImage_Delete]
@LocalArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update LocalArticleCategory set ImageName = NULL where [LocalArticleCategoryID] = @LocalArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_SelectAll] 
@ErrorCode int = NULL OUTPUT
as
select 
	[LocalArticleCategoryID],
	[LocalArticleCategoryName],
	[LocalArticleCategoryNameEn],
	[ImageName],
	isnull([ParentID], 0) ParentID,
	(select top 1 LocalArticleCategoryName from LocalArticleCategory b where b.LocalArticleCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
from LocalArticleCategory a
order by ParentID, SortOrder

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_Update]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_Update]
@LocalArticleCategoryID int = NULL,
@LocalArticleCategoryName nvarchar(100) = NULL,
@LocalArticleCategoryNameEn nvarchar(100) = NULL,
@ConvertedLocalArticleCategoryName nvarchar(100) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @OldParentID int
declare @SortOrder tinyint
declare @OldImageName nvarchar(100)

select @ParentID = isnull(@ParentID,0)
select @OldParentID = isnull(ParentID, 0), @OldImageName = ImageName from LocalArticleCategory where LocalArticleCategoryID = @LocalArticleCategoryID

if @OldParentID <> @ParentID
begin
	if @ParentID  <> 0
		select @SortOrder = MAX(SortOrder) from LocalArticleCategory where ParentID = @ParentID
	else
		select @SortOrder = MAX(SortOrder) from LocalArticleCategory where ParentID is null
	
	if @SortOrder is null
		set @SortOrder = 1
	else
		set @SortOrder = @SortOrder + 1
end
else
	select @SortOrder = SortOrder from LocalArticleCategory where LocalArticleCategoryID = @LocalArticleCategoryID

if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedLocalArticleCategoryName is null then '''' else @ConvertedLocalArticleCategoryName + ''-'' end + cast(@LocalArticleCategoryID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from LocalArticleCategory where LocalArticleCategoryID = @LocalArticleCategoryID

update LocalArticleCategory set 
	[LocalArticleCategoryName] = @LocalArticleCategoryName,
	[LocalArticleCategoryNameEn] = @LocalArticleCategoryNameEn,
	[ImageName] = @ImageName,
	[ParentID] = case when @ParentID = 0 then NULL else @ParentID end,
	[SortOrder] = @SortOrder,
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [LocalArticleCategoryID] = @LocalArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_Insert]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_Insert]
@LocalArticleCategoryName nvarchar(100) = NULL,
@LocalArticleCategoryNameEn nvarchar(100) = NULL,
@ConvertedLocalArticleCategoryName nvarchar(100) = NULL,
@ImageName nvarchar(100) = NULL,
@ParentID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
declare @SortOrder tinyint

if @ParentID is not null
	select @SortOrder = MAX(SortOrder) from LocalArticleCategory where ParentID = @ParentID
else
	select @SortOrder = MAX(SortOrder) from LocalArticleCategory where ParentID is null

if @SortOrder is null
	set @SortOrder = 1
else
	set @SortOrder = @SortOrder + 1

insert into LocalArticleCategory(
	[LocalArticleCategoryName],
	[LocalArticleCategoryNameEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
) values(
	@LocalArticleCategoryName,
	@LocalArticleCategoryNameEn,
	@ImageName,
	@ParentID,
	@SortOrder,
	@IsShowOnMenu,
	@IsShowOnHomePage,
	@IsAvailable
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedLocalArticleCategoryName is null then '''' else @ConvertedLocalArticleCategoryName + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update LocalArticleCategory set [ImageName] = @ImageName where LocalArticleCategoryID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_QuickUpdate]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_QuickUpdate]
@LocalArticleCategoryID int = NULL,
@IsShowOnMenu bit = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@ErrorCode int = NULL OUTPUT
as
update LocalArticleCategory set 
	[IsShowOnMenu] = @IsShowOnMenu,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable
where [LocalArticleCategoryID] = @LocalArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_Delete]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_Delete]
@LocalArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from LocalArticleCategory
where [LocalArticleCategoryID] = @LocalArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_DownOrder]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_DownOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_DownOrder]
@LocalArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @NextSortOrder tinyint
declare @MaxSortOrder tinyint
declare @NextLocalArticleCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from LocalArticleCategory where 
LocalArticleCategoryID = @LocalArticleCategoryID

if @ParentID is not null
begin
	select @MaxSortOrder = count(1)
	from LocalArticleCategory where 
	ParentID = @ParentID
	
	select @NextSortOrder = MIN(SortOrder) 
	from LocalArticleCategory 
	where SortOrder > @CurrentSortOrder and ParentID = @ParentID

	select @NextLocalArticleCategoryID = LocalArticleCategoryID
	from LocalArticleCategory 
	where SortOrder = @NextSortOrder and ParentID = @ParentID
end
else
begin
	select @MaxSortOrder = count(1)
	from LocalArticleCategory where 
	ParentID is null
	
	select @NextSortOrder = MIN(SortOrder) 
	from LocalArticleCategory 
	where SortOrder > @CurrentSortOrder and ParentID is null
	
	select @NextLocalArticleCategoryID = LocalArticleCategoryID
	from LocalArticleCategory 
	where SortOrder = @NextSortOrder and ParentID is null
end


if @CurrentSortOrder <> @MaxSortOrder
	set @CurrentSortOrder = @CurrentSortOrder + 1

set @NextSortOrder = @NextSortOrder - 1

update LocalArticleCategory 
set [SortOrder] = @CurrentSortOrder
where [LocalArticleCategoryID] = @LocalArticleCategoryID

update LocalArticleCategory 
set [SortOrder] = @NextSortOrder
where [LocalArticleCategoryID] = @NextLocalArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_SelectOne]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_SelectOne]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_SelectOne]
@LocalArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[LocalArticleCategoryID],
	[LocalArticleCategoryName],
	[LocalArticleCategoryNameEn],
	[ImageName],
	[ParentID],
	[SortOrder],
	[IsShowOnMenu],
	[IsShowOnHomePage],
	[IsAvailable]
from LocalArticleCategory
where [LocalArticleCategoryID] = @LocalArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategoryForEdit_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategoryForEdit_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategoryForEdit_SelectAll]
@LocalArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
select 
	[LocalArticleCategoryID],
	[LocalArticleCategoryName],
	[LocalArticleCategoryNameEn],
	isnull([ParentID], 0) ParentID,
	(select top 1 LocalArticleCategoryName from LocalArticleCategory b where b.LocalArticleCategoryID = a.ParentID) ParentCategoryName,
	[SortOrder],
	[IsAvailable]
from LocalArticleCategory a
where [LocalArticleCategoryID] <> @LocalArticleCategoryID
order by [SortOrder]

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleCategory_UpOrder]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleCategory_UpOrder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleCategory_UpOrder]
@LocalArticleCategoryID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @ParentID int
declare @CurrentSortOrder tinyint
declare @PrevSortOrder tinyint
declare @PrevLocalArticleCategoryID int

select @ParentID = ParentID, 
	@CurrentSortOrder = SortOrder
from LocalArticleCategory where 
LocalArticleCategoryID = @LocalArticleCategoryID

if @ParentID is not null
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from LocalArticleCategory 
	where SortOrder < @CurrentSortOrder and ParentID = @ParentID
	
	select @PrevLocalArticleCategoryID = LocalArticleCategoryID
	from LocalArticleCategory 
	where SortOrder = @PrevSortOrder and ParentID = @ParentID
end
else
begin
	select @PrevSortOrder = MAX(SortOrder) 
	from LocalArticleCategory 
	where SortOrder < @CurrentSortOrder and ParentID is null

	select @PrevLocalArticleCategoryID = LocalArticleCategoryID
	from LocalArticleCategory 
	where SortOrder = @PrevSortOrder and ParentID is null
end

if @CurrentSortOrder <> 1
	set @CurrentSortOrder = @CurrentSortOrder - 1

set @PrevSortOrder = @PrevSortOrder + 1

update LocalArticleCategory 
set [SortOrder] = @CurrentSortOrder
where [LocalArticleCategoryID] = @LocalArticleCategoryID

update LocalArticleCategory 
set [SortOrder] = @PrevSortOrder
where [LocalArticleCategoryID] = @PrevLocalArticleCategoryID

--print @ParentID
--print @CurrentSortOrder
--print @PrevSortOrder
--print @LocalArticleCategoryID
--print @PrevLocalArticleCategoryID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[ufn_ChildLocalArticleCategory_SelectAll]    Script Date: 01/28/2013 13:53:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ufn_ChildLocalArticleCategory_SelectAll]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create FUNCTION [dbo].[ufn_ChildLocalArticleCategory_SelectAll] (
@RootLocalArticleCategoryID int
)
RETURNS @Reached TABLE(LocalArticleCategoryID int)
AS
BEGIN
	insert into @Reached values (@RootLocalArticleCategoryID)
	while ( @@rowcount > 0 ) 
	begin
		insert into @Reached (LocalArticleCategoryID) 
		select distinct p.LocalArticleCategoryID
		from LocalArticleCategory p inner join @Reached r on r.LocalArticleCategoryID = p.ParentID
		where p.LocalArticleCategoryID not in (select LocalArticleCategoryID from @Reached)
	end
	return
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_Delete]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticle_Delete]
@LocalArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
delete from LocalArticle
where [LocalArticleID] = @LocalArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_QuickUpdate]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_QuickUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticle_QuickUpdate]
@LocalArticleID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as

update LocalArticle set 
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [LocalArticleID] = @LocalArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_Insert]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticle_Insert]
@ImageName nvarchar(100) = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@LocalArticleTitle nvarchar(100) = NULL,
@ConvertedLocalArticleTitle nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@LocalArticleTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@LocalArticleCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@OutImageName nvarchar(100) = NULL OUTPUT,
@ErrorCode int = NULL OUTPUT
as
insert into LocalArticle(
	[ImageName],
	[MetaTittle],
	[MetaDescription],
	[LocalArticleTitle],
	[Description],
	[Content],
	[Tag],
	[MetaTittleEn],
	[MetaDescriptionEn],
	[LocalArticleTitleEn],
	[DescriptionEn],
	[ContentEn],
	[TagEn],
	[LocalArticleCategoryID],
	[CreateDate],
	[IsShowOnHomePage],
	[IsAvailable],
	[Priority]
) values(
	@ImageName,
	@MetaTittle,
	@MetaDescription,
	@LocalArticleTitle,
	@Description,
	@Content,
	@Tag,
	@MetaTittleEn,
	@MetaDescriptionEn,
	@LocalArticleTitleEn,
	@DescriptionEn,
	@ContentEn,
	@TagEn,
	@LocalArticleCategoryID,
	getdate(),
	@IsShowOnHomePage,
	@IsAvailable,
	@Priority
)

DECLARE @ID int
SELECT @ID = SCOPE_IDENTITY();

if @ImageName IS NOT NULL
begin
	set @ImageName = case when @ConvertedLocalArticleTitle is null then '''' else @ConvertedLocalArticleTitle + ''-'' end + cast(@ID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
	update LocalArticle set [ImageName] = @ImageName where LocalArticleID = @ID
	select @OutImageName = @ImageName
end

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticleImage_Delete]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticleImage_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticleImage_Delete]
@LocalArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
update LocalArticle set ImageName = NULL where [LocalArticleID] = @LocalArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SameLocalArticle_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SameLocalArticle_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_SameLocalArticle_SelectAll]
@RerultCount int = NULL,
@LocalArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @LocalArticleCategoryID int
select  @LocalArticleCategoryID = LocalArticleCategoryID from LocalArticle where LocalArticleID = @LocalArticleID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [LocalArticleID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[LocalArticleTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[LocalArticleTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[LocalArticleCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[LocalArticleCategoryName],
		[LocalArticleCategoryNameEn],
		c.[Priority]
	FROM LocalArticle c
	left join LocalArticleCategory ac on ac.LocalArticleCategoryID = c.LocalArticleCategoryID
	WHERE c.IsAvailable = 1 ''

if @LocalArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.LocalArticleCategoryID = '' + str(@LocalArticleCategoryID)

if @LocalArticleID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.LocalArticleID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' LocalArticleID FROM LocalArticle WHERE LocalArticleID < '' + str(@LocalArticleID) + '' ''

	if @LocalArticleCategoryID IS NOT NULL
		set @SelectQuery = @SelectQuery + '' and LocalArticleCategoryID = '' + str(@LocalArticleCategoryID)

	set @SelectQuery = @SelectQuery + '' order by LocalArticleID desc) or
			c.LocalArticleID in (SELECT top '' + str(isnull(@RerultCount/2, 0)) + '' LocalArticleID 
				FROM LocalArticle 
				WHERE LocalArticleID > '' + str(@LocalArticleID)

	if @LocalArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and LocalArticleCategoryID = '' + str(@LocalArticleCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY c.Priority, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_NewerLocalArticle_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_NewerLocalArticle_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_NewerLocalArticle_SelectAll]
@RerultCount int = NULL,
@LocalArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @LocalArticleCategoryID int
select  @LocalArticleCategoryID = LocalArticleCategoryID from LocalArticle where LocalArticleID = @LocalArticleID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [LocalArticleID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[LocalArticleTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[LocalArticleTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[LocalArticleCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[LocalArticleCategoryName],
		[LocalArticleCategoryNameEn],
		c.[Priority]
	FROM LocalArticle c
	left join LocalArticleCategory ac on ac.LocalArticleCategoryID = c.LocalArticleCategoryID
	WHERE c.IsAvailable = 1 ''

if @LocalArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.LocalArticleCategoryID = '' + str(@LocalArticleCategoryID)

if @LocalArticleID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.LocalArticleID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' LocalArticleID 
			FROM LocalArticle 
			WHERE LocalArticleID > '' + str(@LocalArticleID)

if @LocalArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and LocalArticleCategoryID = '' + str(@LocalArticleCategoryID)

end

set @SelectQuery = @SelectQuery + '') ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LocalArticle_Update]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_LocalArticle_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[usp_LocalArticle_Update]
@LocalArticleID int = NULL,
@ImageName nvarchar(100) = NULL,
@MetaTittle nvarchar(500) = NULL,
@MetaDescription nvarchar(1000) = NULL,
@LocalArticleTitle nvarchar(100) = NULL,
@ConvertedLocalArticleTitle nvarchar(100) = NULL,
@Description nvarchar(1000) = NULL,
@Content nvarchar(MAX) = NULL,
@Tag nvarchar(200) = NULL,
@MetaTittleEn nvarchar(500) = NULL,
@MetaDescriptionEn nvarchar(1000) = NULL,
@LocalArticleTitleEn nvarchar(100) = NULL,
@DescriptionEn nvarchar(256) = NULL,
@ContentEn nvarchar(MAX) = NULL,
@TagEn nvarchar(200) = NULL,
@LocalArticleCategoryID int = NULL,
@IsShowOnHomePage bit = NULL,
@IsAvailable bit = NULL,
@Priority int = NULL,
@ErrorCode int = NULL OUTPUT
as
if @ImageName IS NOT NULL
	set @ImageName = case when @ConvertedLocalArticleTitle is null then '''' else @ConvertedLocalArticleTitle + ''-'' end + cast(@LocalArticleID as nvarchar(50)) + substring(@ImageName,len(@ImageName) - CHARINDEX(''.'',reverse(@ImageName)) + 1,len(@ImageName))
else
	select @ImageName = ImageName from LocalArticle where LocalArticleID = @LocalArticleID

update LocalArticle set 
	[ImageName] = @ImageName,
	[MetaTittle] = @MetaTittle,
	[MetaDescription] = @MetaDescription,
	[LocalArticleTitle] = @LocalArticleTitle,
	[Description] = @Description,
	[Content] = @Content,
	[Tag] = @Tag,
	[MetaTittleEn] = @MetaTittleEn,
	[MetaDescriptionEn] = @MetaDescriptionEn,
	[LocalArticleTitleEn] = @LocalArticleTitleEn,
	[DescriptionEn] = @DescriptionEn,
	[ContentEn] = @ContentEn,
	[TagEn] = @TagEn,
	[LocalArticleCategoryID] = @LocalArticleCategoryID,
	[IsShowOnHomePage] = @IsShowOnHomePage,
	[IsAvailable] = @IsAvailable,
	[Priority] = @Priority
where [LocalArticleID] = @LocalArticleID

-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OlderLocalArticle_SelectAll]    Script Date: 01/28/2013 13:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_OlderLocalArticle_SelectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[usp_OlderLocalArticle_SelectAll]
@RerultCount int = NULL,
@LocalArticleID int = NULL,
@ErrorCode int = NULL OUTPUT
as
declare @LocalArticleCategoryID int
select  @LocalArticleCategoryID = LocalArticleCategoryID from LocalArticle where LocalArticleID = @LocalArticleID

declare @SelectQuery nvarchar(max)
select @SelectQuery = ''SELECT top '' + str(isnull(@RerultCount, 0))
set @SelectQuery = @SelectQuery + '' [LocalArticleID],
		c.[ImageName],
		[MetaTittle],
		[MetaDescription],
		[LocalArticleTitle],
		[Description],
		[Content],
		[Tag],
		[MetaTittleEn],
		[MetaDescriptionEn],
		[LocalArticleTitleEn],
		[DescriptionEn],
		[ContentEn],
		[TagEn],
		c.[LocalArticleCategoryID],
		[CreateDate],
		c.[IsShowOnHomePage],
		c.[IsAvailable],
		[LocalArticleCategoryName],
		[LocalArticleCategoryNameEn],
		c.[Priority]
	FROM LocalArticle c
	left join LocalArticleCategory ac on ac.LocalArticleCategoryID = c.LocalArticleCategoryID
	WHERE c.IsAvailable = 1 ''

if @LocalArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and c.LocalArticleCategoryID = '' + str(@LocalArticleCategoryID)

if @LocalArticleID IS NOT NULL
begin
	set @SelectQuery = @SelectQuery + 
		'' and c.LocalArticleID in (SELECT top '' + str(isnull(@RerultCount, 0)) + '' LocalArticleID FROM LocalArticle WHERE LocalArticleID < '' + str(@LocalArticleID) + '' ''

if @LocalArticleCategoryID IS NOT NULL
	set @SelectQuery = @SelectQuery + '' and LocalArticleCategoryID = '' + str(@LocalArticleCategoryID)

end

set @SelectQuery = @SelectQuery + '' order by - Priority desc, LocalArticleID desc) ORDER BY - c.Priority desc, CreateDate desc''

exec(@SelectQuery)
-- Get the Error Code for the statement just executed.
SELECT @ErrorCode=@@ERROR
' 
END
GO
/****** Object:  ForeignKey [FK_LocalArticle_LocalArticleCategory]    Script Date: 01/28/2013 13:52:59 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LocalArticle_LocalArticleCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocalArticle]'))
ALTER TABLE [dbo].[LocalArticle]  WITH CHECK ADD  CONSTRAINT [FK_LocalArticle_LocalArticleCategory] FOREIGN KEY([LocalArticleCategoryID])
REFERENCES [dbo].[LocalArticleCategory] ([LocalArticleCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LocalArticle_LocalArticleCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[LocalArticle]'))
ALTER TABLE [dbo].[LocalArticle] CHECK CONSTRAINT [FK_LocalArticle_LocalArticleCategory]
GO
