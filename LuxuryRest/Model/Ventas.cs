using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Ventas
	{
		[Key]
		public int id_venta { get; set; }

		public int id_usuario { get; set; }
		public decimal precio_total { get; set; }
		public DateTime fecha_hora_venta { get; set; }
	}
}