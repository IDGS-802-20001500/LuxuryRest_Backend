using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Proveedores
	{
		[Key]
		public int id_proveedor { get; set; }

		public string nombre_empresa { get; set; }
		public string nombre_contacto { get; set; }
		public string correo_electronico { get; set; }
		public string telefono { get; set; }
		public string direccion { get; set; }
		public bool Activo { get; set; }
	}
}