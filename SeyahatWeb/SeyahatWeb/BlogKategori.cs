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
    
    public partial class BlogKategori
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BlogKategori()
        {
            this.TurPaket = new HashSet<TurPaket>();
        }
    
        public int BlogKategoriID { get; set; }
        public string BKAd { get; set; }
        public int BlogID { get; set; }
    
        public virtual Blog Blog { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TurPaket> TurPaket { get; set; }
    }
}
