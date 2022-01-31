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
    public class UserViewModel : BaseViewModel
    {
        private ObservableCollection<User> _List;
        public ObservableCollection<User> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<UserRole> _UserRole;
        public ObservableCollection<UserRole> UserRole { get => _UserRole; set { _UserRole = value; OnPropertyChanged(); } }

        private User _SelectedItem;
        public User SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.DisplayName;
                    UserName = SelectedItem.UserName;
                    Password = SelectedItem.Password;
                    SelectedUserRole = SelectedItem.UserRole;
                }
            }
        }



        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }


        private string _UserName;
        public string UserName { get => _UserName; set { _UserName = value; OnPropertyChanged(); } }


        private string _Password;
        public string Password { get => _Password; set { _Password = value; OnPropertyChanged(); } }

        private UserRole _SelectedUserRole;
        public UserRole SelectedUserRole
        {
            get => _SelectedUserRole;
            set
            {
                _SelectedUserRole = value;
                OnPropertyChanged();
            }
        }



        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand DeleteCommand { get; set; }

        public UserViewModel()
        {
            List = new ObservableCollection<User>(DataProvider.Ins.DB.Users);

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var User = new User() {DisplayName = DisplayName, UserName = UserName, Password = Password, IdRole = SelectedUserRole.IdRole};

                DataProvider.Ins.DB.Users.Add(User);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(User);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var Users = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                Users.DisplayName = DisplayName;
                Users.UserName = UserName;
                Users.Password = Password;
                Users.IdRole = SelectedUserRole.IdRole;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.DisplayName = DisplayName;
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;
            }, (p) =>
            {
                var User = DataProvider.Ins.DB.Users.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
               
                DataProvider.Ins.DB.Users.Remove(User);
                DataProvider.Ins.DB.SaveChanges();

                List.Remove(User);


            });
        }
    }
}
