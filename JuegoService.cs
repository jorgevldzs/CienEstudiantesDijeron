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

    public int puntosEquipo1 {get; set; } = 0;

    public int puntosEquipo2 {get; set; } = 0;

    public int puntosPartida {get; set; } = 0;

    public bool puntosAsignadosEnRonda { get; private set; } = false;

    public int Multiplicador { get; private set; } = 1; // Por defecto x1

    public bool PartidaTerminada { get; private set; } = false;

    // Lista para guardar el historial
    public List<RegistroPuntos> HistorialPuntos { get; private set; } = new();


    public int ErroresEquipo1 { get; private set; } = 0;
    public int ErroresEquipo2 { get; private set; } = 0;
    public bool MostrarX { get; private set; } = false; // Para el efecto visual temporal
    



    public void ActualizarJuego(string pregunta, int preguntaId, List<Respuesta> respuestas)
    {
        PreguntaActual = pregunta;
        PreguntaActualId = preguntaId;
        // Ordenamos por cantidad descendente desde que se cargan
        RespuestasActuales = respuestas.OrderByDescending(r => r.res_cantidad).ToList();
        RespuestasReveladas.Clear(); 
        PreguntaRevelada = false; // Siempre inicia oculta para el público
        puntosPartida = 0;
        puntosAsignadosEnRonda = false;
        Multiplicador = 1;
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
            AumentarPuntosRonda(respuesta);
            NotifyStateChanged();
        }
    }

    public void AumentarPuntosRonda(string respuesta)
    {
        if (puntosAsignadosEnRonda) return;

        foreach (Respuesta r in RespuestasActuales)
        {
            if (r.res_respuesta.Equals(respuesta))
            {
                puntosPartida += (r.res_cantidad * Multiplicador);
                break;
            }
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

        puntosPartida = 0;
        puntosAsignadosEnRonda = false;
        Multiplicador = 1;

        ErroresEquipo1 = 0;
        ErroresEquipo2 = 0;
        MostrarX = false;
        NotifyStateChanged();


        // ¡Muy importante! Notificar a los componentes (Control y Tablero) 
        // para que limpien sus pantallas automáticamente.
        NotifyStateChanged();
    }

    public void AsignarPuntosEquipo(string equipo, int numRonda)
    {
        

        if (!puntosAsignadosEnRonda && puntosPartida > 0)
        {
            // Guardamos el valor actual antes de "vaciarlo"
            int puntosAEntregar = puntosPartida;

            if (equipo == Equipo1) puntosEquipo1 += puntosAEntregar;
            else if (equipo == Equipo2) puntosEquipo2 += puntosAEntregar;

            // GUARDAR EN EL HISTORIAL
            HistorialPuntos.Add(new RegistroPuntos 
            { 
                Ronda = numRonda, 
                Equipo = equipo, 
                Puntos = puntosAEntregar 
            });

            puntosAsignadosEnRonda = true;
            puntosPartida = 0; // Vaciamos los puntos de la ronda (desaparecen del centro)
            NotifyStateChanged();
        }

    }

    // Método para cambiar el multiplicador desde el panel de control
    public void SetMultiplicador(int factor)
    {
        if (!PreguntaRevelada)
        {
            Multiplicador = factor;
            NotifyStateChanged();
        }
    }

    public void ReiniciarTodo()
    {
        HistorialPuntos.Clear();
        PartidaTerminada = false;
        puntosEquipo1 = 0;
        puntosEquipo2 = 0;
        puntosPartida = 0;
        Equipo1 = "Equipo 1";
        Equipo2 = "Equipo 2";
        LimpiarPregunta(); // Esto ya hace el NotifyStateChanged
    }

    public int ObtenerPuntosMultiplicados(int cantidadOriginal)
    {
        return cantidadOriginal * Multiplicador;
    }

    public void FinalizarPartida()
    {
        PartidaTerminada = true;
        NotifyStateChanged();
    }

    private void NotifyStateChanged() => OnChange?.Invoke();


    public void AgregarError(string equipo)
    {
        if (equipo == Equipo1 && ErroresEquipo1 < 3) ErroresEquipo1++;
        else if (equipo == Equipo2 && ErroresEquipo2 < 3) ErroresEquipo2++;
        
        ActivarEfectoX();
    }


    private async void ActivarEfectoX()
    {
        MostrarX = true;
        NotifyStateChanged();
        await Task.Delay(2000); // La X se muestra por 2 segundos
        MostrarX = false;
        NotifyStateChanged();
    }

    public class RegistroPuntos 
    {
        public int Ronda { get; set; }
        public string Equipo { get; set; } = "";
        public int Puntos { get; set; }
    }
}
}
