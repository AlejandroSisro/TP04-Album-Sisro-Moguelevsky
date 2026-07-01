using Microsoft.Data.SqlClient;
using Dapper;
namespace TP04_Album_Sisro_Moguelevsky.Models;

public class BD
{
    private string _connectionString = @"Server=localhost;DataBase=AlbumVirtual; Integrated Security=True; TrustServerCertificate=True;";
    public List<Figuritas> obtenerFiguritas()
    {
    List<Patente> patentes = new List<Patente>();
    using(SqlConnection connection = new SqlConnection(_connectionString))
    {
    string query = "SELECT FROM Patentes";
    patentes connection.Query<Patente>(query).ToList();
    }
    return patentes;
    }
}