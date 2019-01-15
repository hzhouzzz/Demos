namespace LeieveTea.Data.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ReceiveOrder")]
    public partial class ReceiveOrder
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ReceiveOrder()
        {
            OrderDetails = new HashSet<OrderDetail>();
        }

        [Key]
        public int OrderID { get; set; }

        public int CustomerID { get; set; }

        public int EmployeeID { get; set; }

        public int CouponID { get; set; }

        [Required]
        [StringLength(50)]
        public string FirstName { get; set; }

        public DateTime OrderDate { get; set; }

        [Required]
        [StringLength(100)]
        public string Address { get; set; }

        [Required]
        [StringLength(50)]
        public string City { get; set; }

        [Required]
        [StringLength(2)]
        public string Province { get; set; }

        [Required]
        [StringLength(1)]
        public string Email { get; set; }

        [Required]
        [StringLength(7)]
        public string PostalCode { get; set; }

        [Required]
        [StringLength(14)]
        public string Phone { get; set; }

        [Required]
        [StringLength(20)]
        public string DeliveryType { get; set; }

        [Column(TypeName = "money")]
        public decimal GST { get; set; }

        [Column(TypeName = "money")]
        public decimal DeliveryFee { get; set; }

        [Column(TypeName = "money")]
        public decimal PaymentType { get; set; }

        public virtual Coupon Coupon { get; set; }

        public virtual Customer Customer { get; set; }

        public virtual Employee Employee { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
