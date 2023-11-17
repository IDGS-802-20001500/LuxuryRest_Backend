using System.ComponentModel.DataAnnotations;

namespace LuxuryRest.Model
{
    public class User
    {
        [Key]
        public int id { get; set; }

        public string name { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public bool active { get; set; }
        public DateTime confirmed_at { get; set; }
    }
}