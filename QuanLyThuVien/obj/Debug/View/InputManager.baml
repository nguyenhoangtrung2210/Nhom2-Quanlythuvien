   M S B A M L   `   `   `  ����H  DQuanLyThuVien, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyThuVien.ViewQuanLyThuVien.View  5      A%clr-namespace:QuanLyThuVien.ViewModelQuanLyThuVien.ViewModel  5   W   %    QuanLyThuVien.View.InputManager   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:QuanLyThuVien.View     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5	viewModel%clr-namespace:QuanLyThuVien.ViewModel  6W   -   5        $��window��5
         InputManagerVM  � DataContext#  [  5      
�������.��5      �� $
��auto��6   .+�5   
   �� $��Phiếu Mượn��6   ���#27408B$��28(�5      $
��Left=�5      $��	30,0,0,20q�5      � 5   
   $��310,0,-310,10q�6   .+�5      �� $��5 5 15 5q�6Q   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã phiếu mượn��6c    % !MaterialDesignFloatingHintTextBox#��[ 6�   $	��150��6�   ��6   �� *MaPM+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6    �� DisplayMemberPath$ TenDG��6)   $ Tên độc giả��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 6�   $	��150��67  ��6C   �� *DocGia+ �� SelectedItem 6b   �� *SelectedDocGia+ �� Mode$ TwoWay=�$ PropertyChanged=�67  �� 5      $��5 5 15 5q�6U   $ Ngày mượn��6g   #��[ 6�   $	��150��6�   ��6   �� *
NgayMuon+$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6   $ TenNV��6*   $ Tên nhân viên��6�    . #��[ 6  $	��150��6>  ��6D   �� *
NhanVien+ 6e   �� *SelectedNhanVien+$ TwoWay=�$ PropertyChanged=�6>  5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      � $��0 0 0 35q�6   .+�5      � $��338,16,-338.2,-15.4q�6   .+�5       �� $��Thêm��6<   $��5q�6K   ���#27408B
�������$	��200��6   ��6   �� *
AddCommand+6   �� 5!      $��Sửa��6=   $��5q�6K   ���#27408B
�������$	��200��6   ��6   �� *EditCommand+6   �� 5"      $
��Xóa��6?   $��5q�6M   ���#27408B
�������$	��200��6�   ��6   �� *DeleteCommand+6�   5#      5$      5&      #  MaterialDesignThemes.Wpf.Card  5(   
   $��0��6   $	��-15q�5)      $��Stretch=�5*      
������ .��5,      �� 
���   �$��14(�5.   *   ���	#89FFFEFE$��340,0,-340.6,0.4q�6P   ��5,      �� *List+ 5-      �� *SelectedItem+$ OneWayToSource=� �� View 5/      �� 50      .P�51      �� $��Mã Phiếu Mượn��6)   	 �� Width$		 170��6f   
 �� DisplayMemberBinding
 6@   �� *MaPM+6f   �� 52      $��Độc giả��6)   $		 160��6h   
 6:   �� *DocGia.TenDG+6h   �� 53      $��Ngày mượn��6)   $		 150��6�   
 6<   �� *
NgayMuon+ �� StringFormat$ 
dd/MM/yyyy��6�   �� 54      $��Nhân Viên��6)   $		 160��6l   
 6<   �� *NhanVien.TenNV+6l   55      57      58      59      5:      