using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
	public class Role
	{
		[Key]
		public int id { get; set; }

		public string name { get; set; }
		public string description { get; set; }
	}
}