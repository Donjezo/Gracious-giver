﻿// <auto-generated />
using System;
using GraciousGiver_BackEnd.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace GraciousGiver_BackEnd.Migrations
{
    [DbContext(typeof(GraciousDbContext))]
    [Migration("20210627222844_offerproduct")]
    partial class offerproduct
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.7")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.Bookmark", b =>
                {
                    b.Property<int>("BookmarkId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ProductId")
                        .HasColumnType("int");

                    b.Property<int>("UserId")
                        .HasColumnType("int");

                    b.HasKey("BookmarkId");

                    b.ToTable("Bookmark");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.City", b =>
                {
                    b.Property<int>("CityId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CityName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("CityId");

                    b.ToTable("City");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.GG_Admin", b =>
                {
                    b.Property<int>("AdminId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("AdminDbo")
                        .HasColumnType("datetime2");

                    b.Property<string>("AdminEmail")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AdminGender")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AdminName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<byte[]>("AdminPassword")
                        .HasColumnType("varbinary(max)");

                    b.HasKey("AdminId");

                    b.ToTable("GG_Admin");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.OfferProduct", b =>
                {
                    b.Property<int>("OfferProductId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<bool>("CheckOffer")
                        .HasColumnType("bit");

                    b.Property<string>("Message")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("Offerdate")
                        .HasColumnType("datetime2");

                    b.Property<int>("ProductProviderId")
                        .HasColumnType("int");

                    b.Property<int>("ReceiverId")
                        .HasColumnType("int");

                    b.HasKey("OfferProductId");

                    b.ToTable("OfferProduct");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.OfferedProductResponse", b =>
                {
                    b.Property<int>("OfferedProductResponseId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Message")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("OfferedProductId")
                        .HasColumnType("int");

                    b.Property<DateTime>("OfferedProductResponseDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("ProductProviderId")
                        .HasColumnType("int");

                    b.Property<int>("ReceiverId")
                        .HasColumnType("int");

                    b.Property<int>("Responseid")
                        .HasColumnType("int");

                    b.HasKey("OfferedProductResponseId");

                    b.ToTable("OfferedProductResponse");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.Organization", b =>
                {
                    b.Property<int>("OrganizationId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Category")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Location")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Password")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Username")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("OrganizationId");

                    b.ToTable("Organization");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.Product", b =>
                {
                    b.Property<int>("ProductId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("DonatorId")
                        .HasColumnType("int");

                    b.Property<string>("ProductCategory")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProductComment")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProductDescription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProductLocation")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProductName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProductPhoto")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProductState")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ProductId");

                    b.ToTable("Product");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.ProductCategory", b =>
                {
                    b.Property<int>("ProductCategoryId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ProductCategoryName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ProductCategoryId");

                    b.ToTable("ProductCategory");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.ProductPhotos", b =>
                {
                    b.Property<int>("PhotoId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Product")
                        .HasColumnType("int");

                    b.Property<string>("ProductPhotoPath")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("PhotoId");

                    b.ToTable("ProductPhotos");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.ProductRequestResponse", b =>
                {
                    b.Property<int>("ProductRequestResponseId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("DonatorId")
                        .HasColumnType("int");

                    b.Property<string>("Message")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("ReceiverId")
                        .HasColumnType("int");

                    b.Property<int>("RequestId")
                        .HasColumnType("int");

                    b.Property<string>("Response")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("ResponseDate")
                        .HasColumnType("datetime2");

                    b.HasKey("ProductRequestResponseId");

                    b.ToTable("ProductRequestResponse");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.Product_Request", b =>
                {
                    b.Property<int>("RequestId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Message")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("ProductId")
                        .HasColumnType("int");

                    b.Property<DateTime>("Request_Date")
                        .HasColumnType("datetime2");

                    b.Property<int>("UserId")
                        .HasColumnType("int");

                    b.Property<bool>("checkedR")
                        .HasColumnType("bit");

                    b.HasKey("RequestId");

                    b.ToTable("Product_Request");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.Request", b =>
                {
                    b.Property<int>("RequesttId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ReceiverId")
                        .HasColumnType("int");

                    b.Property<string>("RequestCategory")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RequestComment")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RequestDescription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RequestLocation")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RequestName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RequestPhoto")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("RequesttId");

                    b.ToTable("Request");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.Shteti", b =>
                {
                    b.Property<int>("ShtetiId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Emri")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ShtetiId");

                    b.ToTable("Shteti");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.Street", b =>
                {
                    b.Property<int>("StreetId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("StreetName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("StreetId");

                    b.ToTable("Street");
                });

            modelBuilder.Entity("GraciousGiver_BackEnd.Models.User", b =>
                {
                    b.Property<int>("UserId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("UserCity")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("UserDbo")
                        .HasColumnType("datetime2");

                    b.Property<string>("UserEmail")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserGender")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserName")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("UserPassword")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("UserPostcode")
                        .HasColumnType("int");

                    b.Property<string>("UserRole")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserState")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId");

                    b.HasIndex("UserName")
                        .IsUnique()
                        .HasFilter("[UserName] IS NOT NULL");

                    b.ToTable("Users");
                });
#pragma warning restore 612, 618
        }
    }
}
