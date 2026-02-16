using CienEstudiantesDijeron.Data;
using CienEstudiantesDijeron.Models;
using CsvHelper;
using System.Globalization;
using System.Collections.Generic; // Asegúrate de tener este
using System.Linq;

namespace CienEstudiantesDijeron.Services
{
    public class ImportadorService
    {
        private readonly ApplicationDbContext _context;

        public ImportadorService(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task ImportarPreguntasCsv(Stream fileStream)
        {
            using var reader = new StreamReader(fileStream);
            using var csv = new CsvReader(reader, CultureInfo.InvariantCulture);

            // IMPORTANTE: Usar el método Async para evitar el error de Synchronous reads
            var registros = new List<dynamic>();
            await foreach (var registro in csv.GetRecordsAsync<dynamic>())
            {
                registros.Add(registro);
            }

            // Agrupamos por el texto de la pregunta
            var grupos = registros.GroupBy(f => f.Pregunta);

            foreach (var grupo in grupos)
            {
                // 1. Insertar la Pregunta
                var nuevaPregunta = new Pregunta { pr_pregunta = grupo.Key.ToString() };
                _context.Preguntas.Add(nuevaPregunta);
                
                // Guardamos para obtener el ID generado por SQLite
                await _context.SaveChangesAsync(); 

                // 2. Insertar sus Respuestas
                foreach (var fila in grupo)
                {
                    var nuevaRespuesta = new Respuesta
                    {
                        pr_id = nuevaPregunta.pr_id,
                        res_respuesta = fila.Respuesta.ToString(),
                        // Intentamos convertir a int, si falla ponemos 0
                        res_cantidad = int.TryParse(fila.Puntos.ToString(), out int p) ? p : 0
                    };
                    _context.Respuestas.Add(nuevaRespuesta);
                }
            }
            // Guardamos todas las respuestas
            await _context.SaveChangesAsync();
        }
    }
}