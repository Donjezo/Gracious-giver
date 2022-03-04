using Microsoft.EntityFrameworkCore.Migrations;

namespace GraciousGiver_BackEnd.Migrations
{
    public partial class dslafjasd : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "hello",
                table: "Iniciative");

            migrationBuilder.DropColumn(
                name: "helloo",
                table: "Iniciative");

            migrationBuilder.DropColumn(
                name: "hellooo",
                table: "Iniciative");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "hello",
                table: "Iniciative",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "helloo",
                table: "Iniciative",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "hellooo",
                table: "Iniciative",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
