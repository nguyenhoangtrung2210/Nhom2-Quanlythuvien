   M S B A M L   `   `   `  ����H  DQuanLyThuVien, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyThuVien.ViewQuanLyThuVien.View  5      A%clr-namespace:QuanLyThuVien.ViewModelQuanLyThuVien.ViewModel  5   W       QuanLyThuVien.View.Author   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:QuanLyThuVien.View     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5	viewModel%clr-namespace:QuanLyThuVien.ViewModel  6W   -   5        $��window��5
         AuthorVM  � DataContext#  [  5      
�������.��5      �� $
��auto��6   $��2,0,-2,0q�6   .+�5   
   �� $��
Tác Giả��6   ���#27408B$��28(�5      $
��Left=�5      $��	30,0,0,20q�5      � 5   
   $��476,0,-476,10q�6   .+�5      �� $��5 5 15 5q�6Q   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã Tác Giả��6c    % !MaterialDesignFloatingHintTextBox#��[ 6�   $	��150��6�   ��6   �� *MaTG+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6R   $ Tên Tác Giả��6d   #��[ 6�   $	��150��6�   ��6   �� *TenTG+$ PropertyChanged=�6�   5      � 5   
   $��0 0 0 35q�6   .+�5      � $��336,13,-337,-12.4q�6   .+�5      �� $��Thêm��68   $��5q�6G   ���#27408B
�������$	��200��6{   ��6   �� *
AddCommand+6{   �� 5      $��Sửa��69   $��5q�6G   ���#27408B
�������$	��200��6{   ��6   �� *EditCommand+6{   �� 5      $
��Xóa��6;   $��5q�6I   ���#27408B
�������$	��200��6}   ��6   �� *DeleteCommand+6}   5      5       � 5#   
   .+�5$      �� -   5         ��Name$ 	txtSearch��5'      $��18(�5$      $	��500��5%      $��30��5&      $��41,0,40.6,0q�6"   5'      �� 5(      $(��"Nhập tên tác giả cần tìm:��6   $��Right=�68   $��0,13,913,-11q�5)      $	��173��6*   $��30��66   $��14(�5*      5-      #  MaterialDesignThemes.Wpf.Card  5/   
   $��2��6   $��50q�50      $��Stretch=�51      
������ .��53      �� 
���   �$��14(�55   *   ���	#89FFFEFE$��350,0,448,0q�56      $	��486��6,   ��53      �� *List+ �� SelectedItem 54      �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 57      �� 58      .P�59      �� $��Mã Tác giả��6)    �� Width$	 150��6c    �� DisplayMemberBinding 6=   �� *MaTG+6c   �� 5:      $��Tên Tác giả��6)   $	 150��6e    6>   �� *TenTG+6e   5;      5=      5>      5?      5@      