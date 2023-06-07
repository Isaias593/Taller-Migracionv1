namespace CORONEL_ZAPA_V2.Models
{
    public class HistorialAcceso
    {
        public int Id { get; set; }
        public DateTime FechaHora{ get; set; }
        public string UsuarioId { get; set; }
        public Usuario Usuario { get;}
    }
}
