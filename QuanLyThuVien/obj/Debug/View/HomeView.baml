   M S B A M L   `   `   `  ����H  DQuanLyThuVien, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:QuanLyThuVien.ViewQuanLyThuVien.View  5      A%clr-namespace:QuanLyThuVien.ViewModelQuanLyThuVien.ViewModel  5   W   !    QuanLyThuVien.View.HomeView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:QuanLyThuVien.View     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      5	viewModel%clr-namespace:QuanLyThuVien.ViewModel  6W   -   5        $��window��5
       
  HomeVM  � DataContext#  [  5      
�������.��5      �� $
��auto��6   .+�5   
   �� $
��Home��6   ���#27408B$��28(�5      $
��Left=�5      $��	30,0,0,20q�5      �� 5   
   
���   �$��12,10,0,-10q�5   .   $
��Left=�6C   $
��1281��6^   $	��713��6k   $	��Top=�6x   ��5      �� *List+ �� SelectedItem 5      �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5      �� 5      .P�5      �� $��	Mã sách��6%    �� Width$	 117��6^    �� DisplayMemberBinding 66   �� *MaSach+6^   �� 5      $��
Tên Sách��6%   $	 117��6`    67   �� *	TenSach+6`   �� 5      $��
Nội dung��6%   $	 119��6`    67   �� *	NoiDung+6`   �� 5      $��Thể loại��6%   $	 115��6f    67   �� *TheLoai.TenTL+6f   �� 5      $��	Vị Trí��6%   $	 110��6d    65   �� *ViTri.TenNgan+6d   �� 5      $��
Tác Giả��6%   $	 115��6d    66   �� *TacGia.TenTG+6d   �� 5       $	��NXB��6%   $	 125��6^    62   �� *
NXB.TenNXB+6^   �� 5!      $��Năm XB��6%   $	 112��6\    65   �� *NamXB+6\   �� 5"      $��Ngôn ngữ��6%   $	 127��6f    67   �� *NgonNgu.TenNN+6f   �� 5#      $��
Số Trang��6%   $	 115��6`    67   �� *	SoTrang+6`   �� 5$      $��Số Lượng��6%   $	 120��6`    67   �� *	SoLuong+6`   5%      5'      5(      5)      