   M S B A M L   `   `   `  ����H  DQuanLyThuVien, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyThuVien.ViewQuanLyThuVien.View  5      A%clr-namespace:QuanLyThuVien.ViewModelQuanLyThuVien.ViewModel  5   W   !    QuanLyThuVien.View.Location   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:QuanLyThuVien.View     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5	viewModel%clr-namespace:QuanLyThuVien.ViewModel  6W   -   5        $��window��5
         
LocationVM  � DataContext#  [  5      
�������.��5      �� $
��auto��6   $��2,0,-2,0q�6   .+�5   
   �� $��	Vị Trí��6   ���#27408B$��28(�5      $
��Left=�5      $��	30,0,0,20q�5      � 5   
   $��290,0,-290,10q�6   .+�5      �� $��5 5 15 5q�6Q   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã vị trí��6c    % !MaterialDesignFloatingHintTextBox#��[ 6�   $	��150��6�   ��6   �� *MaVT+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6S   $ Tên khu��6e   #��[ 6�   $	��150��6�   ��6   �� *TenKhu+$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6R   $ 	Tên kệ��6d   #��[ 6�   $	��150��6�   ��6   �� *TenKe+$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6T   $ 
Tên ngăn��6f   #��[ 6�   $	��150��6�   ��6   �� *	TenNgan+$ PropertyChanged=�6�   5      � 5   
   $��0 0 0 35q�6   .+�5      � $��314,21,-315,-20.4q�6   .+�5      �� $��Thêm��68   $��5q�6G   ���#27408B
�������$	��200��6{   ��6   �� *
AddCommand+6{   �� 5      $��Sửa��69   $��5q�6G   ���#27408B
�������$	��200��6{   ��6   �� *EditCommand+6{   �� 5       $
��Xóa��6;   $��5q�6I   ���#27408B
�������$	��200��6}   ��6   �� *DeleteCommand+6}   5!      5"      #  MaterialDesignThemes.Wpf.Card  5%   
   $��2��6   $��5q�5&      $��Stretch=�5'      
������ .��5)      �� 
���   �$��14(�5+   *   ���	#89FFFEFE$��276,0,330.4,0q�6P   $	��450��6g   ��5)      �� *List+ �� SelectedItem 5*      �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5,      �� 5-      .P�5.      �� $��Mã vị trí��6)    �� Width$	 150��6b    �� DisplayMemberBinding 6<   �� *MaVT+6b   �� 5/      $��Tên khu��6)   $	 160��6b    6:   �� *TenKhu+6b   �� 50      $��	Tên kệ��6)   $	 160��6`    69   �� *TenKe+6`   �� 51      $��
Tên ngăn��6)   $	 160��6d    6;   �� *	TenNgan+6d   52      54      55      56      57      