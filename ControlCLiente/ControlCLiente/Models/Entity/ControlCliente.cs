namespace ControlCLiente.Models.Entity
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ControlCliente : DbContext
    {
        public ControlCliente()
            : base("name=ControlCliente")
        {
        }

        public virtual DbSet<Cliente> Cliente { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Cliente>()
                .Property(e => e.vNombre)
                .IsUnicode(false);

            modelBuilder.Entity<Cliente>()
                .Property(e => e.vDireccion)
                .IsUnicode(false);

            modelBuilder.Entity<Cliente>()
                .Property(e => e.vRUC)
                .IsUnicode(false);

            modelBuilder.Entity<Cliente>()
                .Property(e => e.vTelefono)
                .IsUnicode(false);
        }
    }
}
