﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlinePizza.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PizzaDbEntities : DbContext
    {
        public PizzaDbEntities()
            : base("name=PizzaDbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Cart_Table> Cart_Table { get; set; }
        public virtual DbSet<Pizza_Table> Pizza_Table { get; set; }
        public virtual DbSet<User_Table> User_Table { get; set; }
    }
}
