using Microsoft.Data.SqlClient;
using Dapper;

namespace TP04_Album_Sisro_Moguelevsky.Models;

public class BD
{
    private string _connectionString = @"Server=localhost;Database=AlbumVirtual;Integrated Security=True;TrustServerCertificate=True;";

    public List<Jugadores> ObtenerJugadores()
    {
        using(SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = "SELECT * FROM Jugadores";
            return connection.Query<Jugadores>(query).ToList();
        }
    }

    public List<Selecciones> ObtenerSelecciones()
    {
        using(SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = "SELECT * FROM Selecciones";
            return connection.Query<Selecciones>(query).ToList();
        }
    }

   public List<Figuritas> ObtenerFiguritas()
{
    using (SqlConnection connection = new SqlConnection(_connectionString))
    {
        string query = "SELECT * FROM Figuritas";
        return connection.Query<Figuritas>(query).ToList();
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

    public Jugadores ObtenerJugador(int id)
    {
        using(SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = @"SELECT *
                             FROM Jugadores
                             WHERE IdJugador = @pId";

            return connection.QueryFirstOrDefault<Jugadores>(query, new { pId = id });
        }
    }
    public List<Jugadores> AbrirPaquete(int cantidad)
{
    using (SqlConnection connection = new SqlConnection(_connectionString))
    {
        string query = "SELECT * FROM Jugadores";

        List<Jugadores> jugadores = connection.Query<Jugadores>(query).ToList();

        Random random = new Random();
        List<Jugadores> paquete = new List<Jugadores>();

        while (paquete.Count < cantidad && jugadores.Count > 0)
        {
            int posicion = random.Next(jugadores.Count);

            paquete.Add(jugadores[posicion]);
            jugadores.RemoveAt(posicion);
        }

        return paquete;
    }
}
}
