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
    public class CategoryViewModel : BaseViewModel
    {
        private ObservableCollection<TheLoai> _List;
        public ObservableCollection<TheLoai> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private TheLoai _SelectedItem;
        public TheLoai SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaTL = SelectedItem.MaTL;
                    TenTL = SelectedItem.TenTL;
                }
            }
        }


        private string _MaTL;
        public string MaTL { get => _MaTL; set { _MaTL = value; OnPropertyChanged(); } }


        private string _TenTL;
        public string TenTL { get => _TenTL; set { _TenTL = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public CategoryViewModel()
        {
            List = new ObservableCollection<TheLoai>(DataProvider.Ins.DB.TheLoais);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var TheLoai = new TheLoai() { MaTL = MaTL, TenTL = TenTL };

                try
                {
                    DataProvider.Ins.DB.TheLoais.Add(TheLoai);
                    DataProvider.Ins.DB.SaveChanges();
                }
                catch (Exception)
                {

                    throw new Exception("Không được trùng mã");
                }
                List.Add(TheLoai);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.TheLoais.Where(x => x.MaTL == SelectedItem.MaTL);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var TheLoai = DataProvider.Ins.DB.TheLoais.Where(x => x.MaTL == SelectedItem.MaTL).SingleOrDefault();
                TheLoai.MaTL = MaTL;
                TheLoai.TenTL = TenTL;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TenTL = TenTL;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                var TheLoai = DataProvider.Ins.DB.TheLoais.Where(x => x.MaTL == SelectedItem.MaTL).SingleOrDefault();
                DataProvider.Ins.DB.TheLoais.Remove(TheLoai);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(TheLoai);

            });
        }
    }
}
