//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyThuVien.Model
{
    using QuanLyThuVien.ViewModel;
    using System;
    using System.Collections.Generic;

    public partial class DocGia : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DocGia()
        {
            this.CTPhieuMuons = new HashSet<CTPhieuMuon>();
            this.PhieuMuons = new HashSet<PhieuMuon>();
        }

        private string _MaDG;
        public string MaDG { get => _MaDG; set { _MaDG = value; OnPropertyChanged(); } }

        private string _TenDG;
        public string TenDG { get => _TenDG; set { _TenDG = value; OnPropertyChanged(); } }

        private Nullable<System.DateTime> _NamSinh;
        public Nullable<System.DateTime> NamSinh { get => _NamSinh; set { _NamSinh = value; OnPropertyChanged(); } }

        private string _GioiTinh;
        public string GioiTinh { get => _GioiTinh; set { _GioiTinh = value; OnPropertyChanged(); } }

        private string _DiaChi;
        public string DiaChi { get => _DiaChi; set { _DiaChi = value; OnPropertyChanged(); } }

        private string _SDT;
        public string SDT { get => _SDT; set { _SDT = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTPhieuMuon> CTPhieuMuons { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuMuon> PhieuMuons { get; set; }
    }
}
