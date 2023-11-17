using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
    public class Merma
    {
        [Key]
        public int id_Merma { get; set; }

        public int id_producto { get; set; }
        public string descripcion { get; set; }
        public decimal cantidad_perdida { get; set; }
        public DateTime fecha_registro { get; set; }
    }
}