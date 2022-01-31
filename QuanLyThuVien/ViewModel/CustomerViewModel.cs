using QuanLyThuVien.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace QuanLyThuVien.ViewModel
{
    public class CustomerViewModel : BaseViewModel
    {
        private ObservableCollection<DocGia> _List;
        public ObservableCollection<DocGia> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private DocGia _SelectedItem;
        public DocGia SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaDG = SelectedItem.MaDG;
                    TenDG = SelectedItem.TenDG;
                    NamSinh = SelectedItem.NamSinh;
                    GioiTinh = SelectedItem.GioiTinh;
                    DiaChi = SelectedItem.DiaChi;
                    SDT = SelectedItem.SDT;
                }
            }
        }


        private string _MaDG;
        public string MaDG { get => _MaDG; set { _MaDG = value; OnPropertyChanged(); } }


        private string _TenDG;
        public string TenDG { get => _TenDG; set { _TenDG = value; OnPropertyChanged(); } }


        private DateTime? _NamSinh;
        public DateTime? NamSinh { get => _NamSinh; set { _NamSinh = value; OnPropertyChanged(); } }


        private string _GioiTinh;
        public string GioiTinh { get => _GioiTinh; set { _GioiTinh = value; OnPropertyChanged(); } }

        private string _DiaChi;
        public string DiaChi { get => _DiaChi; set { _DiaChi = value; OnPropertyChanged(); } }



        private string _SDT;
        public string SDT { get => _SDT; set { _SDT = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public CustomerViewModel()
        {
            List = new ObservableCollection<DocGia>(DataProvider.Ins.DB.DocGias);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var DocGia = new DocGia() { MaDG = MaDG, TenDG = TenDG, NamSinh = NamSinh, GioiTinh = GioiTinh, DiaChi = DiaChi, SDT = SDT };

                DataProvider.Ins.DB.DocGias.Add(DocGia);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(DocGia);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.DocGias.Where(x => x.MaDG == SelectedItem.MaDG);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var DocGia = DataProvider.Ins.DB.DocGias.Where(x => x.MaDG == SelectedItem.MaDG).SingleOrDefault();
                DocGia.MaDG = MaDG;
                DocGia.TenDG = TenDG;
                DocGia.NamSinh = NamSinh;
                DocGia.GioiTinh = GioiTinh;
                DocGia.DiaChi = DiaChi;
                DocGia.SDT = SDT;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TenDG = TenDG;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                var DocGia = DataProvider.Ins.DB.DocGias.Where(x => x.MaDG == SelectedItem.MaDG).SingleOrDefault();
                try {
                    
                    DataProvider.Ins.DB.DocGias.Remove(DocGia);
                    DataProvider.Ins.DB.SaveChanges();
                }
                catch (Exception)
                {
                    throw new Exception("Phải xóa thông tin phiếu mượn trước");
                };

                List.Remove(DocGia);

                
            });
        }
    }
}
