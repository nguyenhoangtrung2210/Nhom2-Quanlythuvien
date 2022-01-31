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
    public class LanguageViewModel : BaseViewModel
    {
        private ObservableCollection<NgonNgu> _List;
        public ObservableCollection<NgonNgu> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private NgonNgu _SelectedItem;
        public NgonNgu SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaNN = SelectedItem.MaNN;
                    TenNN = SelectedItem.TenNN;
                }
            }
        }


        private string _MaNN;
        public string MaNN { get => _MaNN; set { _MaNN = value; OnPropertyChanged(); } }


        private string _TenNN;
        public string TenNN { get => _TenNN; set { _TenNN = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public LanguageViewModel()
        {
            List = new ObservableCollection<NgonNgu>(DataProvider.Ins.DB.NgonNgus);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var NgonNgu = new NgonNgu() { MaNN = MaNN, TenNN = TenNN };

                DataProvider.Ins.DB.NgonNgus.Add(NgonNgu);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(NgonNgu);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.NgonNgus.Where(x => x.MaNN == SelectedItem.MaNN);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var NgonNgu = DataProvider.Ins.DB.NgonNgus.Where(x => x.MaNN == SelectedItem.MaNN).SingleOrDefault();
                NgonNgu.MaNN = MaNN;
                NgonNgu.TenNN = TenNN;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TenNN = TenNN;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                var NgonNgu = DataProvider.Ins.DB.NgonNgus.Where(x => x.MaNN == SelectedItem.MaNN).SingleOrDefault();
                DataProvider.Ins.DB.NgonNgus.Remove(NgonNgu);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(NgonNgu);

            });
        }
    }
}
