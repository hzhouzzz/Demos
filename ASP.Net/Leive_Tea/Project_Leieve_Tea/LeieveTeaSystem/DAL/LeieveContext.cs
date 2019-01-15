
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
using LeieveTea.Data.Entities;

namespace LeieveTeaSystem.DAL
{
    public partial class LeieveContext : DbContext
    {
        public LeieveContext()
            : base("name=LeieveDB")
        {
        }

        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Coupon> Coupons { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<MenuItem> MenuItems { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<PaymentType> PaymentTypes { get; set; }
        public virtual DbSet<position> positions { get; set; }
        public virtual DbSet<ReceiveOrder> ReceiveOrders { get; set; }
        public virtual DbSet<Schedule> Schedules { get; set; }
        public virtual DbSet<ShoppingCart> ShoppingCarts { get; set; }
        public virtual DbSet<ShoppingCartItem> ShoppingCartItems { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .HasMany(e => e.MenuItems)
                .WithRequired(e => e.Category)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Coupon>()
                .Property(e => e.CouponName)
                .IsUnicode(false);

            modelBuilder.Entity<Coupon>()
                .HasMany(e => e.ReceiveOrders)
                .WithRequired(e => e.Coupon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.FirstName)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.LastName)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.Address)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.City)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.Province)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.PostalCode)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<Customer>()
                .HasMany(e => e.ReceiveOrders)
                .WithRequired(e => e.Customer)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Customer>()
                .HasMany(e => e.ShoppingCarts)
                .WithRequired(e => e.Customer)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Employee>()
                .Property(e => e.FirstName)
                .IsUnicode(false);

            modelBuilder.Entity<Employee>()
                .Property(e => e.LastName)
                .IsUnicode(false);

            modelBuilder.Entity<Employee>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<Employee>()
                .HasMany(e => e.ReceiveOrders)
                .WithRequired(e => e.Employee)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Employee>()
                .HasMany(e => e.Schedules)
                .WithRequired(e => e.Employee)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Employee>()
                .HasMany(e => e.ShoppingCarts)
                .WithRequired(e => e.Employee)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MenuItem>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<MenuItem>()
                .Property(e => e.SellingPrice)
                .HasPrecision(19, 4);

            modelBuilder.Entity<MenuItem>()
                .HasMany(e => e.OrderDetails)
                .WithRequired(e => e.MenuItem)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MenuItem>()
                .HasMany(e => e.ShoppingCartItems)
                .WithRequired(e => e.MenuItem)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<OrderDetail>()
                .Property(e => e.SellingPrice)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PaymentType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<position>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.FirstName)
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.Address)
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.City)
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.Province)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.PostalCode)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.DeliveryType)
                .IsUnicode(false);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.GST)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.DeliveryFee)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ReceiveOrder>()
                .Property(e => e.PaymentType)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ReceiveOrder>()
                .HasMany(e => e.OrderDetails)
                .WithRequired(e => e.ReceiveOrder)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ShoppingCart>()
                .HasMany(e => e.ShoppingCartItems)
                .WithRequired(e => e.ShoppingCart)
                .WillCascadeOnDelete(false);
        }
    }
}
