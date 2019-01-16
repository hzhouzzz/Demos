namespace LeieveTea.Data.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("position")]
    public partial class position
    {
        public int PositionID { get; set; }

        [Required]
        [StringLength(50)]
        public string Description { get; set; }

        public bool OpenOrNot { get; set; }
    }
}
