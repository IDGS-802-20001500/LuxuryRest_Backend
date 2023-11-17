using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Materias_Primas
	{
		[Key]
		public int id_materia_prima { get; set; }

		public int id_proveedor { get; set; }
		public string nombre { get; set; }
		public string unidad_medida { get; set; }
		public decimal cantidad_minima_requerida { get; set; }
		public decimal precio_compra { get; set; }
        public bool Activo { get; set; }
    }
}