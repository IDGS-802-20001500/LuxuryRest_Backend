using Microsoft.EntityFrameworkCore;
using LuxuryRest.Model;

namespace LuxuryRest.Context
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        public DbSet<User> User { get; set; }
        public DbSet<Productos> Productos { get; set; }
        public DbSet<Materias_Primas> Materias_Primas { get; set; }
        public DbSet<Proveedores> Proveedores { get; set; }
        public DbSet<Pedidos> Pedidos { get; set; }
        public DbSet<Pedidos_Productos> Pedidos_Productos { get; set; }
        public DbSet<Inventario> Inventario { get; set; }
        public DbSet<Compras> Compras { get; set; }
        public DbSet<Ventas> Ventas { get; set; }
        public DbSet<Merma> Merma { get; set; }
        public DbSet<Receta> Receta { get; set; }
        public DbSet<User_Roles> User_Roles { get; set; }
        public DbSet<Role> Role { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User_Roles>()
                .HasKey(ur => new { ur.userId, ur.roleId });

            // ... otras configuraciones ...

            base.OnModelCreating(modelBuilder);
        }
    }
}
