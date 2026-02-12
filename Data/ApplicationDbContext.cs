using Microsoft.EntityFrameworkCore;
using CienEstudiantesDijeron.Models;

namespace CienEstudiantesDijeron.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Pregunta> Preguntas { get; set; }

        public DbSet<Respuesta> Respuestas { get; set;}
        
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Pregunta>().ToTable("Preguntas");
            modelBuilder.Entity<Respuesta>().ToTable("Respuestas");
        }
    }
}