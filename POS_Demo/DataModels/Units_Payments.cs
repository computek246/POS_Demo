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
    
    public partial class Units_Payments : Common.AuditableEntity
    {
        public int Id { get; set; }
        public int FK_Units_DetailsId { get; set; }
        public System.DateTime PaymentDate { get; set; }
        public int PaymentAmount { get; set; }
        public int PaymentAmountPercentage { get; set; }
        public int CommissionDeduction { get; set; }
        public int SalesPersonCommision { get; set; }
        public int NetAmountDue { get; set; }
        public int UncollectedPercentage { get; set; }
    
        public virtual Units_Details Units_Details { get; set; }
    }
}
