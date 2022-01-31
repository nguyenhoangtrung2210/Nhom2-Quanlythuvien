using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyThuVien.ViewModel
{
    public class BookManagerViewModel : BaseViewModel
    {
        public ICommand AuthorCommand { get; set; }
        public ICommand NXBCommand { get; set; }
        public ICommand CategoryCommand { get; set; }
        public ICommand LanguageCommand { get; set; }
        public ICommand LocationCommand { get; set; }
        public ICommand BookCommand { get; set; }

        //Author
        public AuthorViewModel AuthorVM { get; set; }
        //Category
        public CategoryViewModel CategoryVM { get; set; }
        //Language
        public LanguageViewModel LanguageVM { get; set; }
        //Location
        public LocationViewModel LocationVM { get; set; }
        //NXB
        public NXBViewModel NXBVM { get; set; }
        //Book
        public BookViewModel BookVM { get; set; }


        private object _currentView;

        public object CurrentView
        {
            get { return _currentView; }
            set
            {
                _currentView = value;
                OnPropertyChanged();
            }
        }

        public BookManagerViewModel()
        {
            //Khai báo
            AuthorVM = new AuthorViewModel();
            CategoryVM = new CategoryViewModel();
            LanguageVM = new LanguageViewModel();
            LocationVM = new LocationViewModel();
            NXBVM = new NXBViewModel();
            BookVM = new BookViewModel();

            CurrentView = BookVM;

            // Command
            AuthorCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = AuthorVM;
            });

            CategoryCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = CategoryVM;
            });

            LanguageCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = LanguageVM;
            });

            LocationCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = LocationVM;
            });

            NXBCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = NXBVM;
            });

            BookCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = BookVM;
            });
        }
    }
}
