using CienEstudiantesDijeron.Models;

namespace CienEstudiantesDijeron
{
    public class JuegoService
    {
        public string PreguntaActual { get; private set; } = "";
        public int PreguntaActualId { get; private set; } = 0;
        public List<Respuesta> RespuestasActuales { get; private set; } = new();
        public HashSet<int> RespuestasReveladas { get; private set; } = new();

        public string Equipo1 { get; set; } = "Equipo 1";
        public string Equipo2 { get; set; } = "Equipo 2";
        public int PuntosEquipo1 { get; private set; } = 0;
        public int PuntosEquipo2 { get; private set; } = 0;

        public event Action? OnChange;

        public void ActualizarJuego(string pregunta, int preguntaId, List<Respuesta> respuestas)
        {
            PreguntaActual = pregunta;
            PreguntaActualId = preguntaId;
            RespuestasActuales = respuestas.OrderByDescending(r => r.res_cantidad).ToList();
            RespuestasReveladas.Clear(); 
            NotifyStateChanged();
        }

        public void ActualizarNombres(string nombre1, string nombre2)
        {
            Equipo1 = string.IsNullOrWhiteSpace(nombre1) ? "Equipo 1" : nombre1;
            Equipo2 = string.IsNullOrWhiteSpace(nombre2) ? "Equipo 2" : nombre2;
            NotifyStateChanged();
        }

        public void RevelarRespuesta(int respuestaId)
        {
            RespuestasReveladas.Add(respuestaId);
            NotifyStateChanged();
        }

        public void OcultarRespuesta(int respuestaId)
        {
            RespuestasReveladas.Remove(respuestaId);
            NotifyStateChanged();
        }

        public void RevelarTodo()
        {
            foreach (var r in RespuestasActuales)
                RespuestasReveladas.Add(r.res_id);
            NotifyStateChanged();
        }

        public void OcultarTodo()
        {
            RespuestasReveladas.Clear();
            NotifyStateChanged();
        }
        public void SumarPuntosRevelados(int equipo)
        {
            int puntos = RespuestasActuales
                .Where(r => RespuestasReveladas.Contains(r.res_id))
                .Sum(r => r.res_cantidad);

            if (equipo == 1) PuntosEquipo1 += puntos;
            else if (equipo == 2) PuntosEquipo2 += puntos;
            NotifyStateChanged();
        }

        public void ResetearPuntos()
        {
            PuntosEquipo1 = 0;
            PuntosEquipo2 = 0;
            NotifyStateChanged();
        }

        private void NotifyStateChanged() => OnChange?.Invoke();
    }
}