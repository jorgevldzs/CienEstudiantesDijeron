using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CienEstudiantesDijeron.Models
{
    [Table("Respuestas")]
    public class Respuesta
    {
        [Key]
        public int res_id { get; set; }

        public int pr_id { get; set; }
        
        public string res_respuesta { get; set; } = string.Empty;

        public int res_cantidad { get; set; }
    }
}
