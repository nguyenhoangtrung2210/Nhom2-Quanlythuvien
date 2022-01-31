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
    public class StaffViewModel : BaseViewModel
    {
        private ObservableCollection<NhanVien> _List;
        public ObservableCollection<NhanVien> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private NhanVien _SelectedItem;
        public NhanVien SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaNV = SelectedItem.MaNV;
                    TenNV = SelectedItem.TenNV;
                    NamSinh = SelectedItem.NamSinh;
                    GioiTinh = SelectedItem.GioiTinh;
                    DiaChi = SelectedItem.DiaChi;
                    SDT = SelectedItem.SDT;
                }
            }
        }


        private string _MaNV;
        public string MaNV { get => _MaNV; set { _MaNV = value; OnPropertyChanged(); } }


        private string _TenNV;
        public string TenNV { get => _TenNV; set { _TenNV = value; OnPropertyChanged(); } }


        private DateTime? _NamSinh;
        public DateTime? NamSinh { get => _NamSinh; set { _NamSinh = value; OnPropertyChanged(); } }


        private string _GioiTinh;
        public string GioiTinh{ get => _GioiTinh; set { _GioiTinh = value; OnPropertyChanged(); }}

        private string _DiaChi;
        public string DiaChi { get => _DiaChi; set { _DiaChi = value; OnPropertyChanged(); } }



        private string _SDT;
        public string SDT { get => _SDT; set { _SDT = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public StaffViewModel()
        {
            List = new ObservableCollection<NhanVien>(DataProvider.Ins.DB.NhanViens);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var NhanVien = new NhanVien() { MaNV = MaNV, TenNV = TenNV, NamSinh = NamSinh, GioiTinh = GioiTinh, DiaChi = DiaChi, SDT = SDT};

                DataProvider.Ins.DB.NhanViens.Add(NhanVien);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(NhanVien);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.NhanViens.Where(x => x.MaNV == SelectedItem.MaNV);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var NhanVien = DataProvider.Ins.DB.NhanViens.Where(x => x.MaNV == SelectedItem.MaNV).SingleOrDefault();
                NhanVien.TenNV = TenNV;
                NhanVien.NamSinh = NamSinh;
                NhanVien.GioiTinh = GioiTinh;
                NhanVien.DiaChi = DiaChi;
                NhanVien.SDT = SDT;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TenNV = TenNV;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                var NhanVien = DataProvider.Ins.DB.NhanViens.Where(x => x.MaNV == SelectedItem.MaNV).SingleOrDefault();
                try
                {

                    DataProvider.Ins.DB.NhanViens.Remove(NhanVien);
                    DataProvider.Ins.DB.SaveChanges();
                }
                catch (Exception)
                {
                    throw new Exception("Phải xóa thông tin phiếu mượn trước");
                };

                List.Remove(NhanVien);


            });
        }
    }
}
