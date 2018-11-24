namespace ControlCLiente.Models.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Cliente")]
    public partial class Cliente
    {
        [Key]
        public int iClienteId { get; set; }

        [StringLength(50)]
        [Display(Name = "Nombre")]
        public string vNombre { get; set; }

        [StringLength(250)]
        [Display(Name = "Direcci�n")]
        public string vDireccion { get; set; }

        [StringLength(11)]
        [Display(Name = "Ruc")]
        public string vRUC { get; set; }

        [StringLength(12)]
        [Display(Name = "Tel�fono")]
        public string vTelefono { get; set; }
    }
}
