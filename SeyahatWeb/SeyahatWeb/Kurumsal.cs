//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SeyahatWeb
{
    using System;
    using System.Collections.Generic;
    
    public partial class Kurumsal
    {
        public int KurumsalID { get; set; }
        public string KBaslik { get; set; }
        public string KOzet { get; set; }
        public string KDetay { get; set; }
        public int TurPaketID { get; set; }
    
        public virtual TurPaket TurPaket { get; set; }
    }
}
