namespace LeieveTea.Data.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ShoppingCartItem")]
    public partial class ShoppingCartItem
    {
        [Key]
        public int ShoppongCartItemID { get; set; }

        public int ShoppingCartID { get; set; }

        public int MenuItemID { get; set; }

        public int Quantity { get; set; }

        public virtual MenuItem MenuItem { get; set; }

        public virtual ShoppingCart ShoppingCart { get; set; }
    }
}
