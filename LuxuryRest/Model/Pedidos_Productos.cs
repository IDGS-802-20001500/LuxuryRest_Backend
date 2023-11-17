using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Pedidos_Productos
	{
        [Key]
        public int Id { get; set; }

        public int id_pedido { get; set; }

		public int id_producto { get; set; }
		public int cantidad { get; set; }
	}
}