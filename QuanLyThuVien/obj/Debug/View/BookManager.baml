   M S B A M L   `   `   `  ����H  DQuanLyThuVien, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyThuVien.ViewQuanLyThuVien.View  5      A%clr-namespace:QuanLyThuVien.ViewModelQuanLyThuVien.ViewModel  5   W   $    QuanLyThuVien.View.BookManager   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:QuanLyThuVien.View     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5	viewModel%clr-namespace:QuanLyThuVien.ViewModel  6W      BookManagerVM  � DataContext#  [  5
      
�������.��5      �� $
��auto��6   .+�5   
   �� $��Quản lý Sách��6   ���#27408B$��28(�5      $
��Left=�5      $��	32,0,0,20q�5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      � $��0 0 0 35q�6   .+�5      � $��20,8,-20.4,-7.4q�6   .+�5      �� $��Sách��6   $��5q�6,   ���#27408B
�������
�������$	��200��6s   ��6   �� *BookCommand+�� 5      $��
Tác Giả��6   $��5q�6/   ���#27408B
�������
�������$	��200��6v   ��6�   �� *AuthorCommand+�� 5      $��Nhà Xuất Bản��6   $��5q�64   ���#27408B
�������
�������$	��200��6{   ��6�   �� *
NXBCommand+�� 5      $��Thể Loại��6   $��5q�60   ���#27408B
�������
�������$	��200��6w   ��6�   �� *CategoryCommand+�� 5      $��Ngôn Ngữ��6   $��5q�60   ���#27408B
�������
�������$	��200��6w   ��6�   �� *LanguageCommand+�� 5      $��	Vị Trí��6   $��5q�6.   ���#27408B
�������
�������$	��200��6u   ��6�   �� *LocationCommand+5      5      5!      �� 5#   
   $��1��6   $��1��5$      $��10q�5%      ��5&      �� *CurrentView+5'      5(      