//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file May cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyThuVien.Model
{
    using QuanLyThuVien.ViewModel;
    using System;
    using System.Collections.Generic;

    public partial class NgonNgu : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NgonNgu()
        {
            this.Saches = new HashSet<Sach>();
        }

        private string _MaNN;
        public string MaNN { get => _MaNN; set { _MaNN = value; OnPropertyChanged(); } }


        private string _TenNN;
        public string TenNN { get => _TenNN; set { _TenNN = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sach> Saches { get; set; }
    }
}