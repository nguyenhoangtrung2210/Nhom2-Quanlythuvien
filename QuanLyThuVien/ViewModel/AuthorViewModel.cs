using QuanLyThuVien.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyThuVien.ViewModel
{
    public class AuthorViewModel : BaseViewModel
    {
        private ObservableCollection<TacGia> _List;
        public ObservableCollection<TacGia> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<TimTacGia_Result> _TimTacGia_Result;
        public ObservableCollection<TimTacGia_Result> TimTacGia_Result { get => _TimTacGia_Result; set { _TimTacGia_Result = value; OnPropertyChanged(); } }

        private TacGia _SelectedItem;
        public TacGia SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    MaTG = SelectedItem.MaTG;
                    TenTG = SelectedItem.TenTG;
                }
            }
        }


        private string _MaTG;
        public string MaTG { get => _MaTG; set { _MaTG = value; OnPropertyChanged(); } }


        private string _TenTG;
        public string TenTG { get => _TenTG; set { _TenTG = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand SearchCommand { get; set; }


        public AuthorViewModel()
        {
            List = new ObservableCollection<TacGia>(DataProvider.Ins.DB.TacGias);
  

            //Kiểm tra khóa trùng
            

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var TacGia = new TacGia() { MaTG = MaTG, TenTG = TenTG};
                try
                {
                    DataProvider.Ins.DB.TacGias.Add(TacGia);
                    DataProvider.Ins.DB.SaveChanges();
                }
                catch( Exception)
                {
                    throw new Exception("không được trùng mã");
                }

                List.Add(TacGia);
            });


            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.TacGias.Where(x => x.MaTG == SelectedItem.MaTG);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var TacGia = DataProvider.Ins.DB.TacGias.Where(x => x.MaTG == SelectedItem.MaTG).SingleOrDefault();
                TacGia.MaTG = MaTG;
                TacGia.TenTG = TenTG;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TenTG = TenTG;
            });


            DeleteCommand = new RelayCommand<object>((p) => 
            {
                
                return true;

            }, (p) =>
            {
                var TacGia = DataProvider.Ins.DB.TacGias.Where(x => x.MaTG == SelectedItem.MaTG).SingleOrDefault();
                DataProvider.Ins.DB.TacGias.Remove(TacGia);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(TacGia);

            });

            //SearchCommand = new RelayCommand<object>((p) =>
            // {
            //     return true;

            // }, (p) =>
            // {
    
                     

            // });
        }
    }
}
