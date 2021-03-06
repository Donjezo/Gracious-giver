USE [master]
GO
/****** Object:  Database [GraciousGiverProject]    Script Date: 7/1/2021 2:43:09 PM ******/
CREATE DATABASE [GraciousGiverProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GraciousGiverProject', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\GraciousGiverProject.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GraciousGiverProject_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\GraciousGiverProject_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GraciousGiverProject] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GraciousGiverProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GraciousGiverProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GraciousGiverProject] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GraciousGiverProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GraciousGiverProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GraciousGiverProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GraciousGiverProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GraciousGiverProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GraciousGiverProject] SET  MULTI_USER 
GO
ALTER DATABASE [GraciousGiverProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GraciousGiverProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GraciousGiverProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GraciousGiverProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [GraciousGiverProject]
GO
/****** Object:  User [Server2]    Script Date: 7/1/2021 2:43:09 PM ******/
CREATE USER [Server2] FOR LOGIN [Server2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/1/2021 2:43:10 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bookmark]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookmark](
	[BookmarkId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Bookmark] PRIMARY KEY CLUSTERED 
(
	[BookmarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OfferedProductResponse]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferedProductResponse](
	[OfferedProductResponseId] [int] IDENTITY(1,1) NOT NULL,
	[OfferedProductResponseDate] [datetime2](7) NOT NULL,
	[OfferedProductId] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[ProductProviderId] [int] NOT NULL,
	[ReceiverId] [int] NOT NULL,
	[OfferedProductResponseName] [nvarchar](max) NULL,
	[OfferProductId] [int] NOT NULL,
 CONSTRAINT [PK_OfferedProductResponse] PRIMARY KEY CLUSTERED 
(
	[OfferedProductResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[OfferProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OfferProduct]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferProduct](
	[OfferProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductProviderId] [int] NOT NULL,
	[ReceiverId] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[Offerdate] [datetime2](7) NOT NULL,
	[CheckOffer] [bit] NOT NULL,
	[RequestId] [int] NOT NULL,
 CONSTRAINT [PK_OfferProduct] PRIMARY KEY CLUSTERED 
(
	[OfferProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Organization]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrganizationCategory]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationCategory](
	[OrganizationCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationCategoryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrganizationCategory] PRIMARY KEY CLUSTERED 
(
	[OrganizationCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PendingOrganizationsRequest]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PendingOrganizationsRequest](
	[OrganizationId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Checked] [bit] NOT NULL,
 CONSTRAINT [PK_PendingOrganizationsRequest] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductState] [nvarchar](max) NOT NULL,
	[ProductPhoto] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductLocation] [nvarchar](max) NOT NULL,
	[ProductComment] [nvarchar](max) NULL,
	[DonatorId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Request]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Request](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[Request_Date] [datetime2](7) NOT NULL,
	[checkedR] [bit] NOT NULL,
 CONSTRAINT [PK_Product_Request] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductPhotos]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhotos](
	[PhotoId] [int] IDENTITY(1,1) NOT NULL,
	[Product] [int] NOT NULL,
	[ProductPhotoPath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProductPhotos] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductRequestResponse]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductRequestResponse](
	[ProductRequestResponseId] [int] IDENTITY(1,1) NOT NULL,
	[Response] [nvarchar](max) NOT NULL,
	[ResponseDate] [datetime2](7) NOT NULL,
	[RequestId] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[DonatorId] [int] NOT NULL,
	[ReceiverId] [int] NOT NULL,
 CONSTRAINT [PK_ProductRequestResponse] PRIMARY KEY CLUSTERED 
(
	[ProductRequestResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Request]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequesttId] [int] IDENTITY(1,1) NOT NULL,
	[RequestDescription] [nvarchar](max) NULL,
	[RequestName] [nvarchar](max) NULL,
	[RequestCategory] [nvarchar](max) NULL,
	[RequestLocation] [nvarchar](max) NULL,
	[RequestComment] [nvarchar](max) NULL,
	[RequestPhoto] [nvarchar](max) NULL,
	[ReceiverId] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequesttId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RequestPhotos]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestPhotos](
	[PhotoId] [int] IDENTITY(1,1) NOT NULL,
	[Request] [int] NOT NULL,
	[RequestPhotoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_RequestPhotos] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shteti]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shteti](
	[ShtetiId] [int] IDENTITY(1,1) NOT NULL,
	[Emri] [nvarchar](max) NULL,
 CONSTRAINT [PK_Shteti] PRIMARY KEY CLUSTERED 
(
	[ShtetiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Street]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[StreetId] [int] IDENTITY(1,1) NOT NULL,
	[StreetName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[StreetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/1/2021 2:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](450) NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserState] [nvarchar](max) NOT NULL,
	[UserCity] [nvarchar](max) NOT NULL,
	[UserPostcode] [int] NOT NULL,
	[UserRole] [nvarchar](max) NOT NULL,
	[UserEmail] [nvarchar](max) NOT NULL,
	[UserGender] [nvarchar](max) NOT NULL,
	[UserDbo] [datetime2](7) NOT NULL,
	[Firstname] [nvarchar](max) NOT NULL,
	[Lastname] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Users_UserName]    Script Date: 7/1/2021 2:43:10 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_UserName] ON [dbo].[Users]
(
	[UserName] ASC
)
WHERE ([UserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OfferProduct] ADD  DEFAULT ((0)) FOR [RequestId]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [ProductName]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [ProductCategory]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [ProductState]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [ProductPhoto]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [ProductDescription]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [ProductLocation]
GO
ALTER TABLE [dbo].[Product_Request] ADD  DEFAULT (CONVERT([bit],(0),0)) FOR [checkedR]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT (N'') FOR [ProductCategoryName]
GO
ALTER TABLE [dbo].[ProductPhotos] ADD  DEFAULT (N'') FOR [ProductPhotoPath]
GO
ALTER TABLE [dbo].[ProductRequestResponse] ADD  DEFAULT ((0)) FOR [DonatorId]
GO
ALTER TABLE [dbo].[ProductRequestResponse] ADD  DEFAULT ((0)) FOR [ReceiverId]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__UserPassw__43A1090D]  DEFAULT (N'') FOR [UserPassword]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__UserState__41B8C09B]  DEFAULT (N'') FOR [UserState]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__UserCity__467D75B8]  DEFAULT (N'') FOR [UserCity]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__UserRole__42ACE4D4]  DEFAULT (N'') FOR [UserRole]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__UserEmail__4589517F]  DEFAULT (N'') FOR [UserEmail]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__UserGende__44952D46]  DEFAULT (N'') FOR [UserGender]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Firstname__477199F1]  DEFAULT (N'') FOR [Firstname]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Lastname__4865BE2A]  DEFAULT (N'') FOR [Lastname]
GO
ALTER TABLE [dbo].[Bookmark]  WITH CHECK ADD  CONSTRAINT [FK_Bookmark_ProdUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Bookmark] CHECK CONSTRAINT [FK_Bookmark_ProdUser]
GO
ALTER TABLE [dbo].[Bookmark]  WITH CHECK ADD  CONSTRAINT [FK_Bookmark_ProdUser2] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Bookmark] CHECK CONSTRAINT [FK_Bookmark_ProdUser2]
GO
ALTER TABLE [dbo].[OfferedProductResponse]  WITH CHECK ADD  CONSTRAINT [FK_OfferProductRes_OfferProduct] FOREIGN KEY([OfferProductId])
REFERENCES [dbo].[OfferProduct] ([OfferProductId])
GO
ALTER TABLE [dbo].[OfferedProductResponse] CHECK CONSTRAINT [FK_OfferProductRes_OfferProduct]
GO
ALTER TABLE [dbo].[OfferProduct]  WITH CHECK ADD  CONSTRAINT [FK_OfferProduct_RequestR] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Request] ([RequesttId])
GO
ALTER TABLE [dbo].[OfferProduct] CHECK CONSTRAINT [FK_OfferProduct_RequestR]
GO
ALTER TABLE [dbo].[OfferProduct]  WITH CHECK ADD  CONSTRAINT [FK_OfferProduct_Users] FOREIGN KEY([ProductProviderId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[OfferProduct] CHECK CONSTRAINT [FK_OfferProduct_Users]
GO
ALTER TABLE [dbo].[OfferProduct]  WITH CHECK ADD  CONSTRAINT [FK_OfferProduct_UsersR] FOREIGN KEY([ReceiverId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[OfferProduct] CHECK CONSTRAINT [FK_OfferProduct_UsersR]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_User_ProdR] FOREIGN KEY([DonatorId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_User_ProdR]
GO
ALTER TABLE [dbo].[Product_Request]  WITH CHECK ADD  CONSTRAINT [FK_Product_Request_DelP] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Request] CHECK CONSTRAINT [FK_Product_Request_DelP]
GO
ALTER TABLE [dbo].[Product_Request]  WITH CHECK ADD  CONSTRAINT [FK_Product_Request_ProdR] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Product_Request] CHECK CONSTRAINT [FK_Product_Request_ProdR]
GO
ALTER TABLE [dbo].[ProductPhotos]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductPhotos] CHECK CONSTRAINT [FK_ProductPhoto]
GO
ALTER TABLE [dbo].[ProductPhotos]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhotoDel] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductPhotos] CHECK CONSTRAINT [FK_ProductPhotoDel]
GO
ALTER TABLE [dbo].[ProductRequestResponse]  WITH CHECK ADD  CONSTRAINT [FK_Product_Request_P] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Product_Request] ([RequestId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductRequestResponse] CHECK CONSTRAINT [FK_Product_Request_P]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Users] FOREIGN KEY([ReceiverId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Users]
GO
ALTER TABLE [dbo].[RequestPhotos]  WITH CHECK ADD  CONSTRAINT [FK_Request_ReqPhotos] FOREIGN KEY([Request])
REFERENCES [dbo].[Request] ([RequesttId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RequestPhotos] CHECK CONSTRAINT [FK_Request_ReqPhotos]
GO
USE [master]
GO
ALTER DATABASE [GraciousGiverProject] SET  READ_WRITE 
GO
