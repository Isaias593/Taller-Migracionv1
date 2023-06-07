using Microsoft.EntityFrameworkCore;

namespace CORONEL_ZAPA_V2.Models
{
    public class AplicationDbContext : DbContext
    {
        public AplicationDbContext(DbContextOptions<AplicationDbContext> options): base (options)
        {
        }
    public DbSet<Usuario> Usuarios { get; set; }


    }
}
