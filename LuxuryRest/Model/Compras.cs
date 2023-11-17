using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Compras
	{
		[Key]
		public int id_compra { get; set; }

		public int id_usuario { get; set; }
		public int id_materia_prima { get; set; }
		public int cantidad_comprada { get; set; }
		public DateTime fecha_compra { get; set; }
	}
}