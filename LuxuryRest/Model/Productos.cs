using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Productos
	{
		[Key]
		public int id_producto { get; set; }

		public string nombre { get; set; }
		public string descripcion { get; set; }
		public string imagen { get; set; }
		public decimal precio_venta { get; set; }
		public int cantidad_disponible { get; set; }
		public int valoracionT { get; set; }
		public int valoracionC { get; set; }
		public int estatus { get; set; }
	}
}