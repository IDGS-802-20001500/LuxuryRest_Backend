using System.ComponentModel.DataAnnotations;
using System.Globalization;

namespace LuxuryRest.Model
{
	public class Pedidos
	{
		[Key]
		public int id_pedido { get; set; }

		public int id_usuario { get; set; }
		public int estado_pedido { get; set; }
		public DateTime fecha_hora_pedido { get; set; }
		public string domicilio { get; set; }
		public int empleado { get; set; }
		public DateTime fecha_hora_entrega { get; set; }
	}
}