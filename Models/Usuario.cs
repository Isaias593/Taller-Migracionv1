using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace CORONEL_ZAPA_V2.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        [Required]
        [Column(TypeName = "varchar(15)")]
        public string NombreUser { get; set; }
        [Required]
        [Column(TypeName = "varchar(15)")]
        public string Clave { get; set; }
        [Required]
        public Boolean estado { get; set; }

        public int GeneroId { get; set; }
        public Genero Genero { get; set; }
    }
}