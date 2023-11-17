using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Inventario
	{
		[Key]
		public int id_inventario { get; set; }
		public int id_materia_prima { get; set; }
		public decimal cantidad_almacenada { get; set; }
	}
}