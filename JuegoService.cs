using CienEstudiantesDijeron.Models;

namespace CienEstudiantesDijeron
{
public class JuegoService
{
    // El estado que queremos compartir
    //public string PreguntaActual { get; set; } = "Presiona 'Siguiente' para empezar";

    public string PreguntaActual { get; private set; } = "";
    public int PreguntaActualId { get; private set; } = 0;

    public bool PreguntaRevelada { get; private set; } = false; // Nueva propiedad

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
        // Ordenamos por cantidad descendente desde que se cargan
        RespuestasActuales = respuestas.OrderByDescending(r => r.res_cantidad).ToList();
        RespuestasReveladas.Clear(); 
        PreguntaRevelada = false; // Siempre inicia oculta para el público
        NotifyStateChanged();
    }

    public void RevelarPregunta()
    {
        PreguntaRevelada = true;
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


    public void ActualizarNombres(string nombre1, string nombre2)
    {
        Equipo1 = nombre1;
        Equipo2 = nombre2;
        NotifyStateChanged();
    }

    public void LimpiarPregunta()
    {
        // Reseteamos el texto y el ID para que la UI sepa que no hay pregunta activa
        //PreguntaActual = "";
        PreguntaActual = "";
        PreguntaActualId = 0;
        PreguntaRevelada = false;

        // Vaciamos las listas de la ronda anterior
        RespuestasActuales.Clear();
        RespuestasReveladas.Clear();

        // ¡Muy importante! Notificar a los componentes (Control y Tablero) 
        // para que limpien sus pantallas automáticamente.
        NotifyStateChanged();
    }

    private void NotifyStateChanged() => OnChange?.Invoke();
}
}
