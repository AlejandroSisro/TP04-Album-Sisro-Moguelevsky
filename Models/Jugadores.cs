namespace TP04_Album_Sisro_Moguelevsky.Models;
public class Jugador
{
    private int idJugador;
    private string nombre;
    private string apellido;
    private int numeroCamiseta;
    private string posicion;
    private int edad;
    private string imagen;
    private int idSeleccion;

    public Jugador()
    {
    }

    public string NombreCompleto()
    {
        string nombreCompleto = Nombre + " " + Apellido;
        return nombreCompleto;
    }
}