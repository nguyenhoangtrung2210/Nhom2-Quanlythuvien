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

    public partial class NhanVien : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhanVien()
        {
            this.CTPhieuMuons = new HashSet<CTPhieuMuon>();
            this.PhieuMuons = new HashSet<PhieuMuon>();
            this.PhieuTras = new HashSet<PhieuTra>();
        }

        private string _MaNV;
        public string MaNV { get => _MaNV; set { _MaNV = value; OnPropertyChanged(); } }

        private string _TenNV;
        public string TenNV { get => _TenNV; set { _TenNV = value; OnPropertyChanged(); } }

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
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuTra> PhieuTras { get; set; }
    }
}
