   M S B A M L   `   `   `  ����H  DQuanLyThuVien, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyThuVien.ViewQuanLyThuVien.View  5      A%clr-namespace:QuanLyThuVien.ViewModelQuanLyThuVien.ViewModel  5   W   &     QuanLyThuVien.View.OutputManager   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:QuanLyThuVien.View     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5	viewModel%clr-namespace:QuanLyThuVien.ViewModel  6W   -   5        $��window��5
         OutputManagerVM  � DataContext#  [  5      
�������.��5      �� $
��auto��6   .+�5   
   �� $��Phiếu trả��6   ���#27408B$��28(�5      $
��Left=�5      $��	30,0,0,20q�5      � 5   
   $��84,0,-84,10q�6   .+�5      �� $��5 5 15 5q�6Q   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã phiếu trả��6c    % !MaterialDesignFloatingHintTextBox#��[ 6�   $	��150��6�   ��6   �� *MaPT+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6    �� DisplayMemberPath$
 MaPM��6*   $ Mã phiếu mượn��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 6  $	��150��6?  ��6C   �� *	PhieuMuon+ �� SelectedItem 6e   �� *SelectedPhieuMuon+ �� Mode$ TwoWay=�$ PropertyChanged=�6?  �� 5      $��5 5 15 5q�6   $ TenSach��6*   $ 
Tên Sách��6�    . #��[ 6�   $	��150��63  ��6F   �� *Sach+ 6c   �� *SelectedSach+$ TwoWay=�$ PropertyChanged=�63  �� 5      $��5 5 15 5q�6   $ TenNV��6*   $ Tên nhân viên��6�    . #��[ 6  $	��150��6>  ��6D   �� *
NhanVien+ 6e   �� *SelectedNhanVien+$ TwoWay=�$ PropertyChanged=�6>  �� 5      $��5 5 15 5q�6   $ NgayMuon��6*   $ Ngày mượn��6�    . #��[ 6  $	��150��6>  ��6G   �� *	PhieuMuon+ 6i   �� *SelectedNgayMuon+$ TwoWay=�$ PropertyChanged=�6>  �� 5      $��5 5 15 5q�6T   $ Ngày trả��6f   #��[ 6�   $	��150��6�   ��6   �� *	NgayTra+$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6W   $ Phạt hư hỏng��6i   #��[ 6�   $	��150��6�   ��6   �� *
PhatHuHong+$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6W   $ Phạt quá hạn��6i   #��[ 6�   $	��150��6�   ��6   �� *
PhatQuaHan+$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6V   $ Thanh toán��6h   #��[ 6�   $	��150��6�   ��6   �� *	ThanhToan+$ PropertyChanged=�6�   5      �� 5!   
    �� Orientation$ 
Horizontal=�6   .+�5#      � $��0 0 0 35q�6   .+�5$      � $��338,16,-338.2,-15.4q�6   .+�5%      �� $��Thêm��6<   $��5q�6K   ���#27408B
�������$	��200��6   ��6   �� *
AddCommand+6   �� 5&      $��Sửa��6=   $��5q�6K   ���#27408B
�������$	��200��6   ��6   �� *EditCommand+6   �� 5'      $
��Xóa��6?   $��5q�6M   ���#27408B
�������$	��200��6�   ��6   �� *DeleteCommand+6�   5(      5)      5+      #  MaterialDesignThemes.Wpf.Card  5-   
   $��0��6   $	��-15q�5.      $��Stretch=�5/      
������ .��51      �� 
���   �$��14(�53   *   ���	#89FFFEFE$��46,0,-46.6,0.4q�6P   ��51      �� *List+ 52      �� *SelectedItem+$ OneWayToSource=� �� View 54      �� 55      .P�56      �� $��	Mã Trả��6)   	 �� Width$		 120��6_   
 �� DisplayMemberBinding
 69   �� *MaPT+6_   �� 57      $��Mã Mượn��6)   $		 130��6`   
 6:   �� *MaPM+6`   �� 58      $��Sách��6)   $		 120��6e   
 67   �� *Sach.TenSach+6e   �� 59      $��Nhân viên��6)   $		 130��6l   
 6<   �� *NhanVien.TenNV+6l   �� 5:      $��Ngày mượn��6)   $		 140��6f   
 6<   �� *
NgayMuon+6f   �� 5;      $��Ngày trả��6)   $		 120��6d   
 6;   �� *	NgayTra+6d   �� 5<      $��Phạt hư hỏng��6)   $		 160��6k   
 6?   �� *
PhatHuHong+6k   �� 5=      $��Phạt quá hạn��6)   $		 160��6k   
 6?   �� *
PhatQuaHan+6k   �� 5>      $��Thanh toán��6)   $		 160��6h   
 6=   �� *	ThanhToan+6h   5?      5A      5B      5C      5D      