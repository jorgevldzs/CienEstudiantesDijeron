using CienEstudiantesDijeron.Models;

namespace CienEstudiantesDijeron
{
    public class JuegoService
{
    // El estado que queremos compartir
    //public string PreguntaActual { get; set; } = "Presiona 'Siguiente' para empezar";

    public string PreguntaActual { get; private set; } = "";
    public int PreguntaActualId { get; private set; } = 0;

    public List<Respuesta> RespuestasActuales {get; private set; } = new List<Respuesta>();
    public List<string> RespuestasReveladas { get; set; } = new();

    // El evento que notificará a las pantallas que algo cambió
    public event Action? OnChange;

    public string Equipo1 { get; set; } = "Equipo 1";
    public string Equipo2 { get; set; } = "Equipo 2";



    public void ActualizarJuego(string pregunta, int preguntaId, List<Respuesta> respuestas)
    {
        PreguntaActual = pregunta;
        PreguntaActualId = preguntaId;
        RespuestasActuales = respuestas;
        RespuestasReveladas.Clear(); 
        NotifyStateChanged();
    }

    public void RevelarRespuesta(string respuesta)
    {
        if (!RespuestasReveladas.Contains(respuesta))
        {
            RespuestasReveladas.Add(respuesta);
            NotifyStateChanged();
        }
    }

    public void RevelarRespuestaPorTexto(string respuesta)
    {
        if (!RespuestasReveladas.Contains(respuesta))
        {
            RespuestasReveladas.Add(respuesta);
            NotifyStateChanged();
        }
    }

    private void NotifyStateChanged() => OnChange?.Invoke();

    public void ActualizarNombres(string nombre1, string nombre2)
    {
        Equipo1 = nombre1;
        Equipo2 = nombre2;
        NotifyStateChanged();
    }
}
}
