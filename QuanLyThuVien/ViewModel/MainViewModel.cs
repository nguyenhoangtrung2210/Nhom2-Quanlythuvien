using QuanLyThuVien.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QuanLyThuVien.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        public bool Isloaded { get; set; }
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand BookManagerCommand { get; set; }
        public ICommand HomeViewCommand { get; set; }
        public ICommand CustomerCommand { get; set; }
        public ICommand StaffCommand { get; set; }
        public ICommand InputManagerCommand { get; set; }
        public ICommand OutputManagerCommand { get; set; }
        public ICommand CTPMViewCommand { get; set; }

        //HomeView
        public HomeViewModel HomeVM { get; set; }
        //BookManager
        public BookManagerViewModel BookManagerVM { get; set; }
        //Customer
        public CustomerViewModel CustomerVM { get; set; }
        //Staff
        public StaffViewModel StaffVM { get; set; }
        //InputManager
        public InputManagerViewModel InputManagerVM { get; set; }
        //OutputManager
        public OutputManagerViewModel OutputManagerVM { get; set; }
        //User
        public UserViewModel UserVM { get; set; }

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

        // mọi thứ đều xử lý trong này
        public MainViewModel()
        {
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) => {
                Isloaded = true;
                if (p == null)
                    return;
                p.Hide();
                Login login = new Login();
                login.ShowDialog();

                if (login.DataContext == null)
                    return;
                var loginVM = login.DataContext as LoginViewModel;

                if (loginVM.IsLogin)
                {
                    p.Show();
                }
                else
                {
                    p.Close();
                }
            });

            HomeVM = new HomeViewModel();
            BookManagerVM = new BookManagerViewModel();
            CustomerVM = new CustomerViewModel();
            StaffVM = new StaffViewModel();
            InputManagerVM = new InputManagerViewModel();
            OutputManagerVM = new OutputManagerViewModel();
            UserVM = new UserViewModel();

            CurrentView = HomeVM;

            HomeViewCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = HomeVM;
            });

            BookManagerCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                //BookManager wd = new BookManager();
                CurrentView = BookManagerVM;
            });

            CustomerCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = CustomerVM;
            });

            StaffCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = StaffVM;
            });

            InputManagerCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = InputManagerVM;
            });

            OutputManagerCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                CurrentView = OutputManagerVM;
            });

        }



}


}