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

    public partial class Sach : BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sach()
        {
            this.CTPhieuMuons = new HashSet<CTPhieuMuon>();
            this.PhieuTras = new HashSet<PhieuTra>();
        }

        private string _MaSach;
        public string MaSach { get => _MaSach; set { _MaSach = value; OnPropertyChanged(); } }

        private string _TenSach;
        public string TenSach { get => _TenSach; set { _TenSach = value; OnPropertyChanged(); } }


        private string _NoiDung;
        public string NoiDung { get => _NoiDung; set { _NoiDung = value; OnPropertyChanged(); } }


        private string _MaTL;
        public string MaTL { get => _MaTL; set { _MaTL = value; OnPropertyChanged(); } }


        private string _MaVT;
        public string MaVT { get => _MaVT; set { _MaVT = value; OnPropertyChanged(); } }


        private string _MaTG;
        public string MaTG { get => _MaTG; set { _MaTG = value; OnPropertyChanged(); } }


        private string _MaNXB;
        public string MaNXB { get => _MaNXB; set { _MaNXB = value; OnPropertyChanged(); } }


        private Nullable<int> _NamXB;
        public Nullable<int> NamXB { get => _NamXB; set { _NamXB = value; OnPropertyChanged(); } }


        private string _MaNN;
        public string MaNN { get => _MaNN; set { _MaNN = value; OnPropertyChanged(); } }


        private Nullable<int> _SoTrang;
        public Nullable<int> SoTrang { get => _SoTrang; set { _SoTrang = value; OnPropertyChanged(); } }


        private int _SoLuong;
        public int SoLuong { get => _SoLuong; set { _SoLuong = value; OnPropertyChanged(); } }



        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTPhieuMuon> CTPhieuMuons { get; set; }

        private NgonNgu _NgonNgu;
        public virtual NgonNgu NgonNgu { get => _NgonNgu; set { _NgonNgu = value; OnPropertyChanged(); } }

        private NXB _NXB;
        public virtual NXB NXB { get => _NXB; set { _NXB = value; OnPropertyChanged(); } }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuTra> PhieuTras { get; set; }

        private TacGia _TacGia;
        public virtual TacGia TacGia { get => _TacGia; set { _TacGia = value; OnPropertyChanged(); } }

        private TheLoai _TheLoai;
        public virtual TheLoai TheLoai { get => _TheLoai; set { _TheLoai = value; OnPropertyChanged(); } }

        private ViTri _ViTri;
        public virtual ViTri ViTri { get => _ViTri; set { _ViTri = value; OnPropertyChanged(); } }
    }
}