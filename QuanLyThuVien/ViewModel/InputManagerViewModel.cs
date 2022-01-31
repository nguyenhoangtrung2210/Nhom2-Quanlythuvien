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
    public class InputManagerViewModel : BaseViewModel
    {
        private ObservableCollection<PhieuMuon> _List;
        public ObservableCollection<PhieuMuon> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<DocGia> _DocGia;
        public ObservableCollection<DocGia> DocGia { get => _DocGia; set { _DocGia = value; OnPropertyChanged(); } }

        private ObservableCollection<NhanVien> _NhanVien;
        public ObservableCollection<NhanVien> NhanVien { get => _NhanVien; set { _NhanVien = value; OnPropertyChanged(); } }

        private Model.PhieuMuon _SelectedItem;
        public Model.PhieuMuon SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaPM = SelectedItem.MaPM;
                    SelectedDocGia = SelectedItem.DocGia;
                    NgayMuon = SelectedItem.NgayMuon;
                    SelectedNhanVien = SelectedItem.NhanVien;
                }
            }
        }

        private Model.DocGia _SelectedDocGia;
        public Model.DocGia SelectedDocGia
        {
            get => _SelectedDocGia;
            set
            {
                _SelectedDocGia = value;
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

        private string _MaPM;
        public string MaPM { get => _MaPM; set { _MaPM = value; OnPropertyChanged(); } }


        private DateTime? _NgayMuon;
        public DateTime? NgayMuon { get => _NgayMuon; set { _NgayMuon = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public InputManagerViewModel()
        {
            List = new ObservableCollection<PhieuMuon>(DataProvider.Ins.DB.PhieuMuons);
            DocGia = new ObservableCollection<DocGia>(DataProvider.Ins.DB.DocGias);
            NhanVien = new ObservableCollection<NhanVien>(DataProvider.Ins.DB.NhanViens);
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedNhanVien == null || SelectedDocGia == null)
                    return false;
                return true;

            }, (p) =>
            {
                var PhieuMuon = new PhieuMuon() {MaPM = MaPM, MaDG = SelectedDocGia.MaDG, NgayMuon = (DateTime)NgayMuon, MaNV = SelectedNhanVien.MaNV /*MaPM = Guid.NewGuid().ToString()*/ };

                DataProvider.Ins.DB.PhieuMuons.Add(PhieuMuon);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(PhieuMuon);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedNhanVien == null || SelectedDocGia == null)
                    return false;

                var displayList = DataProvider.Ins.DB.NhanViens.Where(x => x.MaNV == SelectedItem.MaNV);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var PhieuMuon = DataProvider.Ins.DB.PhieuMuons.Where(x => x.MaPM == SelectedItem.MaPM).SingleOrDefault();
                PhieuMuon.MaPM = MaPM;
                PhieuMuon.MaDG = SelectedDocGia.MaDG;
                PhieuMuon.NgayMuon = (DateTime)NgayMuon;
                PhieuMuon.MaNV = SelectedNhanVien.MaNV;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.MaPM = MaPM;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                var PhieuMuon = DataProvider.Ins.DB.PhieuMuons.Where(x => x.MaPM == SelectedItem.MaPM).SingleOrDefault();
                DataProvider.Ins.DB.PhieuMuons.Remove(PhieuMuon);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(PhieuMuon);

            });
        }
    }
}
