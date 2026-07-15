namespace TP04_Album_Sisro_Moguelevsky.Models;

public class Paquete
{
    private int idPaquete;
    private DateTime fechaApertura;
    private int usuarioId;
    private List<Jugador> figuritas= new List<Jugador>();
    private void AgregarFigurita(Jugador jugador)
    {
        Figuritas.Add(jugador);
    }
    public int CantidadFiguritas()
    {
        int cantidad = Figurita.Count;
        return cantidad;
    }
}