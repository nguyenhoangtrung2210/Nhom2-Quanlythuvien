using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace QuanLyThuVien.Core
{
    // đối tượng quan sát
    class ObservableObject : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
    }


}
