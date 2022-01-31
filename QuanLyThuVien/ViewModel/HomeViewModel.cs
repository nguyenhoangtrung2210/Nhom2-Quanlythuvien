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
    public class HomeViewModel : BaseViewModel
    {
        private ObservableCollection<Sach> _List;
        public ObservableCollection<Sach> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<TheLoai> _TheLoai;
        public ObservableCollection<TheLoai> TheLoai { get => _TheLoai; set { _TheLoai = value; OnPropertyChanged(); } }

        private ObservableCollection<ViTri> _ViTri;
        public ObservableCollection<ViTri> ViTri { get => _ViTri; set { _ViTri = value; OnPropertyChanged(); } }

        private ObservableCollection<TacGia> _TacGia;
        public ObservableCollection<TacGia> TacGia { get => _TacGia; set { _TacGia = value; OnPropertyChanged(); } }

        private ObservableCollection<NXB> _NXB;
        public ObservableCollection<NXB> NXB { get => _NXB; set { _NXB = value; OnPropertyChanged(); } }

        private ObservableCollection<NgonNgu> _NgonNgu;
        public ObservableCollection<NgonNgu> NgonNgu { get => _NgonNgu; set { _NgonNgu = value; OnPropertyChanged(); } }


        private Model.Sach _SelectedItem;
        public Model.Sach SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaSach = SelectedItem.MaSach;
                    TenSach = SelectedItem.TenSach;
                    NoiDung = SelectedItem.NoiDung;
                    SelectedTheLoai = SelectedItem.TheLoai;
                    SelectedViTri = SelectedItem.ViTri;
                    SelectedTacGia = SelectedItem.TacGia;
                    SelectedNXB = SelectedItem.NXB;
                    NamXB = (int)SelectedItem.NamXB;
                    SelectedNgonNgu = SelectedItem.NgonNgu;
                    SoTrang = (int)SelectedItem.SoTrang;
                    SoLuong = SelectedItem.SoLuong;
                }
            }
        }

        private Model.TheLoai _SelectedTheLoai;
        public Model.TheLoai SelectedTheLoai
        {
            get => _SelectedTheLoai;
            set
            {
                _SelectedTheLoai = value;
                OnPropertyChanged();
            }
        }

        private ViTri _SelectedViTri;
        public ViTri SelectedViTri
        {
            get => _SelectedViTri;
            set
            {
                _SelectedViTri = value;
                OnPropertyChanged();
            }
        }

        private TacGia _SelectedTacGia;
        public TacGia SelectedTacGia
        {
            get => _SelectedTacGia;
            set
            {
                _SelectedTacGia = value;
                OnPropertyChanged();
            }
        }

        private NXB _SelectedNXB;
        public NXB SelectedNXB
        {
            get => _SelectedNXB;
            set
            {
                _SelectedNXB = value;
                OnPropertyChanged();
            }
        }

        private NgonNgu _SelectedNgonNgu;
        public NgonNgu SelectedNgonNgu
        {
            get => _SelectedNgonNgu;
            set
            {
                _SelectedNgonNgu = value;
                OnPropertyChanged();
            }
        }

        private string _MaSach;
        public string MaSach { get => _MaSach; set { _MaSach = value; OnPropertyChanged(); } }


        private string _TenSach;
        public string TenSach { get => _TenSach; set { _TenSach = value; OnPropertyChanged(); } }


        private string _NoiDung;
        public string NoiDung { get => _NoiDung; set { _NoiDung = value; OnPropertyChanged(); } }


        private int _NamXB;
        public int NamXB { get => _NamXB; set { _NamXB = value; OnPropertyChanged(); } }


        private int _SoTrang;
        public int SoTrang { get => _SoTrang; set { _SoTrang = value; OnPropertyChanged(); } }


        private int _SoLuong;
        public int SoLuong { get => _SoLuong; set { _SoLuong = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public HomeViewModel()
        {
            List = new ObservableCollection<Sach>(DataProvider.Ins.DB.Saches);
            TheLoai = new ObservableCollection<TheLoai>(DataProvider.Ins.DB.TheLoais);
            ViTri = new ObservableCollection<ViTri>(DataProvider.Ins.DB.ViTris);
            TacGia = new ObservableCollection<TacGia>(DataProvider.Ins.DB.TacGias);
            NXB = new ObservableCollection<NXB>(DataProvider.Ins.DB.NXBs);
            NgonNgu = new ObservableCollection<NgonNgu>(DataProvider.Ins.DB.NgonNgus);

            //Thêm
            AddCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedViTri == null || SelectedTheLoai == null || SelectedTacGia == null || SelectedNXB == null || SelectedNgonNgu == null)
                    return false;
                return true;

            }, (p) =>
            {
                var Sach = new Sach()
                {
                    MaSach = MaSach,
                    TenSach = TenSach,
                    NoiDung = NoiDung,
                    MaTL = SelectedTheLoai.MaTL,
                    MaVT = SelectedViTri.MaVT,
                    MaTG = SelectedTacGia.MaTG,
                    MaNXB = SelectedNXB.MaNXB,
                    NamXB = (int)NamXB,
                    MaNN = SelectedNgonNgu.MaNN,
                    SoTrang = (int)SoTrang,
                    SoLuong = SoLuong
                };

                DataProvider.Ins.DB.Saches.Add(Sach);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(Sach);
            });

            // Sửa
            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedViTri == null || SelectedTheLoai == null || SelectedTacGia == null || SelectedNXB == null || SelectedNgonNgu == null)
                    return false;

                var displayList = DataProvider.Ins.DB.ViTris.Where(x => x.MaVT == SelectedItem.MaVT);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var Sach = DataProvider.Ins.DB.Saches.Where(x => x.MaSach == SelectedItem.MaSach).SingleOrDefault();
                Sach.MaSach = MaSach;
                Sach.TenSach = TenSach;
                Sach.NoiDung = NoiDung;
                Sach.MaTL = SelectedTheLoai.MaTL;
                Sach.MaVT = SelectedViTri.MaVT;
                Sach.MaTG = SelectedTacGia.MaTG;
                Sach.MaNXB = SelectedNXB.MaNXB;
                Sach.NamXB = (int)NamXB;
                Sach.MaNN = SelectedNgonNgu.MaNN;
                Sach.SoTrang = (int)SoTrang;
                Sach.SoLuong = SoLuong;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TenSach = TenSach;
            });

            //Xóa
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null || SelectedViTri == null || SelectedTheLoai == null || SelectedTacGia == null || SelectedNXB == null || SelectedNgonNgu == null)
                    return false;

                var displayList = DataProvider.Ins.DB.Saches.Where(x => x.MaSach == SelectedItem.MaSach);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;
            }, (p) =>
            {
                var Sach = DataProvider.Ins.DB.Saches.Where(x => x.MaSach == SelectedItem.MaSach).SingleOrDefault();
                DataProvider.Ins.DB.Saches.Remove(Sach);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(Sach);

            });
        }
    }
}
