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

    public partial class PhieuMuon : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhieuMuon()
        {
            this.PhieuTras = new HashSet<PhieuTra>();
        }


        private string _MaPM;
        public string MaPM { get => _MaPM; set { _MaPM = value; OnPropertyChanged(); } }


        private string _MaDG;
        public string MaDG { get => _MaDG; set { _MaDG = value; OnPropertyChanged(); } }


        private System.DateTime _NgayMuon;
        public System.DateTime NgayMuon { get => _NgayMuon; set { _NgayMuon = value; OnPropertyChanged(); } }


        private string _MaNV;
        public string MaNV { get => _MaNV; set { _MaNV = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTPhieuMuon> CTPhieuMuons { get; set; }

        private NhanVien _NhanVien;
        public virtual NhanVien NhanVien { get => _NhanVien; set { _NhanVien = value; OnPropertyChanged(); } }

        private DocGia _DocGia;
        public virtual DocGia DocGia { get => _DocGia; set { _DocGia = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuTra> PhieuTras { get; set; }
    }
}
