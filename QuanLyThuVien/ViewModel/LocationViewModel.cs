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
    public class LocationViewModel : BaseViewModel
    {
        private ObservableCollection<ViTri> _List;
        public ObservableCollection<ViTri> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ViTri _SelectedItem;
        public ViTri SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaVT = SelectedItem.MaVT;
                    TenKhu = SelectedItem.TenKhu;
                    TenKe = SelectedItem.TenKe;
                    TenNgan = SelectedItem.TenNgan;
                }
            }
        }


        private string _MaVT;
        public string MaVT { get => _MaVT; set { _MaVT = value; OnPropertyChanged(); } }


        private string _TenKhu;
        public string TenKhu { get => _TenKhu; set { _TenKhu = value; OnPropertyChanged(); } }


        private string _TenKe;
        public string TenKe { get => _TenKe; set { _TenKe = value; OnPropertyChanged(); } }


        private string _TenNgan;
        public string TenNgan { get => _TenNgan; set { _TenNgan = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public LocationViewModel()
        {
            List = new ObservableCollection<ViTri>(DataProvider.Ins.DB.ViTris);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var ViTri = new ViTri() { MaVT = MaVT, TenKhu = TenKhu, TenKe = TenKe, TenNgan = TenNgan};

                DataProvider.Ins.DB.ViTris.Add(ViTri);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(ViTri);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.ViTris.Where(x => x.MaVT == SelectedItem.MaVT);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var ViTri = DataProvider.Ins.DB.ViTris.Where(x => x.MaVT == SelectedItem.MaVT).SingleOrDefault();
                ViTri.MaVT = MaVT;
                ViTri.TenKhu = TenKhu;
                ViTri.TenKe = TenKe;
                ViTri.TenNgan = TenNgan;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TenKhu = TenKhu;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                var ViTri = DataProvider.Ins.DB.ViTris.Where(x => x.MaVT == SelectedItem.MaVT).SingleOrDefault();
                DataProvider.Ins.DB.ViTris.Remove(ViTri);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(ViTri);

            });
        }
    }
}
