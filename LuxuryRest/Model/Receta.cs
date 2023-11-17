using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Receta
	{
		[Key]
		public int id_receta { get; set; }
		public int id_materia_prima { get; set; }
		public int id_producto { get; set; }
		public decimal cantidad_requerida { get; set; }
	}
}