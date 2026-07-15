namespace TP04_Album_Sisro_Moguelevsky.Models;

public class Paquete
{
    public int IdPaquete { get; set; }
    public DateTime FechaApertura { get; set; }
    public int UsuarioId { get; set; }
    public List<Jugador> Figuritas { get; set; } = new List<Jugador>();
    public void AgregarFigurita(Jugador jugador)
    {
        Figuritas.Add(jugador);
    }

    public int CantidadFiguritas()
    {
        int CantidadFiguritas=Figuritas.Count;
        return CantidadFiguritas;
    }
}
