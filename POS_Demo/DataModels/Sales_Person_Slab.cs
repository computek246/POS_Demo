//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace POS_Demo.DataModels
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sales_Person_Slab : Common.AuditableEntity
    {
        public int Id { get; set; }
        public int FK_Sales_PersonId { get; set; }
        public int FK_Units_DetailsId { get; set; }
        public int Sales_Person_Slab1 { get; set; }
        public int Total_Amount { get; set; }
    
        public virtual Sales_Person Sales_Person { get; set; }
        public virtual Units_Details Units_Details { get; set; }
    }
}
