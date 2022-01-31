using QuanLyThuVien.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyThuVien.ViewModel
{
    public class OutputManagerViewModel : BaseViewModel
    {
        private ObservableCollection<PhieuTra> _List;
        public ObservableCollection<PhieuTra> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<PhieuMuon> _PhieuMuon;
        public ObservableCollection<PhieuMuon> PhieuMuon { get => _PhieuMuon; set { _PhieuMuon = value; OnPropertyChanged(); } }

        private ObservableCollection<Sach> _Sach;
        public ObservableCollection<Sach> Sach { get => _Sach; set { _Sach = value; OnPropertyChanged(); } }

        private ObservableCollection<NhanVien> _NhanVien;
        public ObservableCollection<NhanVien> NhanVien { get => _NhanVien; set { _NhanVien = value; OnPropertyChanged(); } }

        private PhieuTra _SelectedItem;
        public PhieuTra SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaPT = SelectedItem.MaPT;
                    SelectedPhieuMuon = SelectedItem.PhieuMuon;
                    SelectedSach = SelectedItem.Sach;
                    SelectedNhanVien = SelectedItem.NhanVien;
                    SelectedNgayMuon = SelectedItem.PhieuMuon;
                    NgayTra = SelectedItem.NgayTra;
                    PhatHuHong = SelectedItem.PhatHuHong;
                    PhatQuaHan = SelectedItem.PhatQuaHan;
                    ThanhToan = SelectedItem.ThanhToan;
                }
            }
        }

        private Sach _SelectedSach;
        public Sach SelectedSach
        {
            get => _SelectedSach;
            set
            {
                _SelectedSach = value;
                OnPropertyChanged();
            }
        }

        private NhanVien _SelectedNhanVien;
        public NhanVien SelectedNhanVien
        {
            get => _SelectedNhanVien;
            set
            {
                _SelectedNhanVien = value;
                OnPropertyChanged();
            }
        }

        private PhieuMuon _SelectedNgayMuon;
        public PhieuMuon SelectedNgayMuon
        {
            get => _SelectedNgayMuon;
            set
            {
                _SelectedNgayMuon = value;
                OnPropertyChanged();
            }
        }

        private PhieuMuon _SelectedPhieuMuon;
        public PhieuMuon SelectedPhieuMuon
        {
            get => _SelectedPhieuMuon;
            set
            {
                _SelectedPhieuMuon = value;
                OnPropertyChanged();
            }
        }

        private string _MaPT;
        public string MaPT { get => _MaPT; set { _MaPT = value; OnPropertyChanged(); } }


        private DateTime? _NgayTra;
        public DateTime? NgayTra { get => _NgayTra; set { _NgayTra = value; OnPropertyChanged(); } }


        private decimal? _PhatHuHong;
        public decimal? PhatHuHong { get => _PhatHuHong; set { _PhatHuHong = value; OnPropertyChanged(); } }


        private decimal? _PhatQuaHan;
        public decimal? PhatQuaHan { get => _PhatQuaHan; set { _PhatQuaHan = value; OnPropertyChanged(); } }


        private decimal? _ThanhToan;
        public decimal? ThanhToan { get => _ThanhToan; set { _ThanhToan = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public OutputManagerViewModel()
        {
            List = new ObservableCollection<PhieuTra>(DataProvider.Ins.DB.PhieuTras);
            PhieuMuon = new ObservableCollection<PhieuMuon>(DataProvider.Ins.DB.PhieuMuons);
            Sach = new ObservableCollection<Sach>(DataProvider.Ins.DB.Saches);
            NhanVien = new ObservableCollection<NhanVien>(DataProvider.Ins.DB.NhanViens);
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedNhanVien == null || SelectedSach == null || SelectedNgayMuon == null || SelectedPhieuMuon == null)
                    return false;
                return true;

            }, (p) =>
            {
                var PhieuTra = new PhieuTra() { MaPT = MaPT, MaPM = SelectedPhieuMuon.MaPM, MaSach = SelectedSach.MaSach, NgayMuon = SelectedNgayMuon.NgayMuon, NgayTra =(DateTime)NgayTra, MaNV = SelectedNhanVien.MaNV, PhatHuHong = PhatHuHong, PhatQuaHan = PhatQuaHan, ThanhToan = ThanhToan};

                DataProvider.Ins.DB.PhieuTras.Add(PhieuTra);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(PhieuTra);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedNhanVien == null || SelectedSach == null || SelectedPhieuMuon == null || SelectedNgayMuon == null)
                    return false;

                var displayList = DataProvider.Ins.DB.PhieuMuons.Where(x => x.MaPM == SelectedItem.MaPM);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var PhieuTra = DataProvider.Ins.DB.PhieuTras.Where(x => x.MaPT == SelectedItem.MaPT).SingleOrDefault();
                PhieuTra.MaPT = MaPT;
                PhieuTra.MaPM = SelectedPhieuMuon.MaPM;
                PhieuTra.MaSach = SelectedSach.MaSach;
                PhieuTra.MaNV = SelectedNhanVien.MaNV;
                PhieuTra.NgayMuon = SelectedNgayMuon.NgayMuon;
                PhieuTra.NgayTra = (DateTime)NgayTra;
                PhieuTra.PhatHuHong = PhatHuHong;
                PhieuTra.PhatQuaHan = PhatQuaHan;
                PhieuTra.ThanhToan = ThanhToan;
                
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.MaPT = MaPT;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                var PhieuTra = DataProvider.Ins.DB.PhieuTras.Where(x => x.MaPT == SelectedItem.MaPT).SingleOrDefault();
                DataProvider.Ins.DB.PhieuTras.Remove(PhieuTra);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(PhieuTra);

            });
        }
    }
}
