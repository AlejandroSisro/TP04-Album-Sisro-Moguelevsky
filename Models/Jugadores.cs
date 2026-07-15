namespace TP04_Album_Sisro_Moguelevsky.Models;

public class Jugador
{
    public int IdJugador { get; set; }
    public string Nombre { get; set; }
    public string Apellido { get; set; }
    public int NumeroCamiseta { get; set; }
    public string Posicion { get; set; }
    public int Edad { get; set; }
    public string Imagen { get; set; }
    public int IdSeleccion { get; set; }
    public Jugador()
    {
    }

    public string NombreCompleto()
    {
        return Nombre + " " + Apellido;
    }
}
