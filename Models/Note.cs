//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Asp.net_MVC_TP_9.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Note
    {
        public int Id_Mat { get; set; }
        public decimal Note1 { get; set; }
        public decimal Note2 { get; set; }
        public int Id_Eleve { get; set; }
    
        public virtual Eleve Eleve { get; set; }
    }
}
