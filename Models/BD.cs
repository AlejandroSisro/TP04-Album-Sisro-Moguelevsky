using Microsoft.Data.SqlClient;
using Dapper;
namespace TP04_Album_Sisro_Moguelevsky.Models;

public class BD
{
    private string _connectionString = @"Server=localhost;DataBase=AlbumVirtual; Integrated Security=True; TrustServerCertificate=True;";
    public List<Figurita> obtenerFiguritas()
    {
    List<Figurita> figuritas = new List<Figurita>();
    using(SqlConnection connection = new SqlConnection(_connectionString))
    {
    string query = "SELECT * FROM Figuritas";
    figuritas = connection.Query<Figurita>(query).ToList();
    }
    return figuritas ;
    }
}
