   M S B A M L   `   `   `  ����H  DQuanLyThuVien, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyThuVien.ViewQuanLyThuVien.View  5      A%clr-namespace:QuanLyThuVien.ViewModelQuanLyThuVien.ViewModel  5   W   !    QuanLyThuVien.View.UserView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:QuanLyThuVien.View     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5	viewModel%clr-namespace:QuanLyThuVien.ViewModel  6W   -   5        $��window��5
       
  UserVM  � DataContext#  [  5      
�������.��5      �� $
��auto��6   .+�5   
   �� $
��User��6   ���#27408B$��28(�5      $
��Left=�5      $��	30,0,0,20q�5      � 5   
   $��380,0,-380,10q�6   .+�5      �� $��5 5 15 5q�6X   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��6j    % !MaterialDesignFloatingHintTextBox#��[ 6�   $	��150��6�   ��6   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6    �� DisplayMemberPath$ DisplayName��6)   $ Quyền��6�    �� 
IsEditable .  & "MaterialDesignFloatingHintComboBox#��[ 6�   $	��150��6;  ��6I   �� *
UserRole+ �� SelectedItem 6j   �� *SelectedUserRole+ �� Mode$ TwoWay=�$ PropertyChanged=�6;  �� 5      $��5 5 15 5q�6X   $ Tên hiển thị��6j   #��[ 6�   $	��150��6�   ��6   �� *DisplayName+$ PropertyChanged=�6�   �� 5      $��5 5 15 5q�6U   $ Password��6g   #��[ 6�   $	��150��6�   ��6   �� *
Password+$ PropertyChanged=�6�   5      � 5   
   $��0 0 0 35q�6   .+�5      � $��338,30,-338,-29.4q�6   .+�5      �� $��Thêm��68   $��5q�6G   ���#27408B
�������$	��200��6{   ��6   �� *
AddCommand+6{   �� 5      $��Sửa��69   $��5q�6G   ���#27408B
�������$	��200��6{   ��6   �� *EditCommand+6{   �� 5       $
��Xóa��6;   $��5q�6I   ���#27408B
�������$	��200��6}   ��6   �� *DeleteCommand+6}   5!      5"      � 5$   
   $��78,10,-58,10q�6   .+�5%      �� $��18(�6   $	��500��5&      $��30��5'      $��41,0,40.6,0q�6"   �� 5(      $0��*Nhập vào tên đăng nhập cần tìm:��6   $��Right=�6>   $��0,11,913,-9q�5)      $	��218��6)   $��30��65   $��14(�5*      5,      #  MaterialDesignThemes.Wpf.Card  5.   
   $��0��6   $��25q�5/      $��Stretch=�50      
������ .��52      �� $��312,0,-311.6,0q�6o   
���   ���6   �� *List+ 64   �� *SelectedItem+$ OneWayToSource=� �� View 54      �� 55      .P�56      �� $��Id��6)    �� DisplayMemberBinding 65   �� *Id+6[   �� 57      $��Tên đăng nhập��6)    6A   �� *
UserName+6m   �� 58      $��Quyền��6)    68   �� *UserRole.DisplayName+6p   �� 59      $��Tên hiển thị��6)    6A   �� *DisplayName+6p   �� 5:      $��Password��6)    6;   �� *
Password+6g   5;      5=      5>      5?      5@      