namespace TP04_Album_Sisro_Moguelevsky.Models;

public class Jugadores
{
    public int idJugador { get; set; }
    public string nombre { get; set; }
    public string foto { get; set; }
    public int idSeleccion { get; set; }

    public Jugadores()
    {
    }

    public string NombreCompleto()
    {
        return nombre;
    }
}
