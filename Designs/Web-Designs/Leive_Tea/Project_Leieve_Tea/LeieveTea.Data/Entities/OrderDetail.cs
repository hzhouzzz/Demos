namespace LeieveTea.Data.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class OrderDetail
    {
        public int OrderDetailID { get; set; }

        public int OrderID { get; set; }

        public int MenuItemID { get; set; }

        [Column(TypeName = "money")]
        public decimal SellingPrice { get; set; }

        public int Qty { get; set; }

        public virtual MenuItem MenuItem { get; set; }

        public virtual ReceiveOrder ReceiveOrder { get; set; }
    }
}
