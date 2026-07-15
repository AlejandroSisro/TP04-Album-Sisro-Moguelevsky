using Microsoft.Data.SqlClient;
using Dapper;

namespace TP04_Album_Sisro_Moguelevsky.Models;

public class BD
{
    private string _connectionString = @"Server=localhost;Database=AlbumVirtual;Integrated Security=True;TrustServerCertificate=True;";

    public List<Jugador> ObtenerJugadores()
    {
        using(SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = "SELECT * FROM Jugadores";
            return connection.Query<Jugador>(query).ToList();
        }
    }

    public List<Seleccion> ObtenerSelecciones()
    {
        using(SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = "SELECT * FROM Selecciones";
            return connection.Query<Seleccion>(query).ToList();
        }
    }

    public List<FiguritaUsuario> ObtenerFiguritas(int idUsuario)
    {
        using(SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = @"SELECT *
                             FROM Figuritas
                             WHERE UsuarioId = @pId";

            return connection.Query<FiguritaUsuario>(query, new { pId = idUsuario }).ToList();
        }
    }

    public void AgregarFigurita(int idUsuario, int idJugador)
    {
        using(SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = @"INSERT INTO Figuritas
                             (UsuarioId, JugadorId)
                             VALUES
                             (@pUsuario,@pJugador)";

            connection.Execute(query, new
            {
                pUsuario = idUsuario,
                pJugador = idJugador
            });
        }
    }

    public Jugador ObtenerJugador(int id)
    {
        using(SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = @"SELECT *
                             FROM Jugadores
                             WHERE IdJugador = @pId";

            return connection.QueryFirstOrDefault<Jugador>(query, new { pId = id });
        }
    }
}
