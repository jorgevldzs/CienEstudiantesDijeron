using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CienEstudiantesDijeron.Models
{
    [Table("Preguntas")]
    public class Pregunta
    {
        [Key]
        public int pr_id { get; set; }
        
        public string pr_pregunta { get; set; } = string.Empty;
    }
}
