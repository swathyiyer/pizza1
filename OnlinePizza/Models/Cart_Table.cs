//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Cart_Table
    {
        public int CartId { get; set; }
        public string Username { get; set; }
        public int PizzaId { get; set; }
        public int Quantity { get; set; }
        public decimal Amount { get; set; }
        public int State { get; set; }
    
        public virtual Pizza_Table Pizza_Table { get; set; }
        public virtual User_Table User_Table { get; set; }
    }
}
