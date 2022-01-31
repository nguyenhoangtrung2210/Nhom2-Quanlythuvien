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
    public class NXBViewModel : BaseViewModel
    {
        private ObservableCollection<NXB> _List;
        public ObservableCollection<NXB> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private NXB _SelectedItem;
        public NXB SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaNXB = SelectedItem.MaNXB;
                    TenNXB = SelectedItem.TenNXB;
                }
            }
        }


        private string _MaNXB;
        public string MaNXB { get => _MaNXB; set { _MaNXB = value; OnPropertyChanged(); } }


        private string _TenNXB;
        public string TenNXB { get => _TenNXB; set { _TenNXB = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public NXBViewModel()
        {
            List = new ObservableCollection<NXB>(DataProvider.Ins.DB.NXBs);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var NXB = new NXB() { MaNXB = MaNXB, TenNXB = TenNXB };

                DataProvider.Ins.DB.NXBs.Add(NXB);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(NXB);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.NXBs.Where(x => x.MaNXB == SelectedItem.MaNXB);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var NXB = DataProvider.Ins.DB.NXBs.Where(x => x.MaNXB == SelectedItem.MaNXB).SingleOrDefault();
                NXB.MaNXB = MaNXB;
                NXB.TenNXB = TenNXB;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TenNXB = TenNXB;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                var NXB = DataProvider.Ins.DB.NXBs.Where(x => x.MaNXB == SelectedItem.MaNXB).SingleOrDefault();
                DataProvider.Ins.DB.NXBs.Remove(NXB);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(NXB);

            });
        }
    }
}
