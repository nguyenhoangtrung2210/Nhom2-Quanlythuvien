   M S B A M L   `   `   `  ����H  DQuanLyThuVien, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuanLyThuVienQuanLyThuVien  5   	   A%clr-namespace:QuanLyThuVien.ViewModelQuanLyThuVien.ViewModel  5	   R       QuanLyThuVien.Login   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:QuanLyThuVien     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   2local1%clr-namespace:QuanLyThuVien.ViewModel  6R   -   5        $��loginWindow��5   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	     LoginVM � DataContext# [ 5   	    � Title$ Login��5   	   $	��450��6   $	��800��6$    � WindowStartupLocation$ CenterScreen=�60    � WindowStyle$
 None=�6U   .��5      � -   5        ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ #5858FA��6   	 � Offset$	 1Q�6/   � 5      $ #BE81F7��6   $	 0Q�6/   5      .+�5   
   �� -   5        $	��390��5      $	��Top=�6   
 �� CornerRadius$
 	0 0 180 0��66   
���   �5       �� 5!   
    �� Orientation$ 
Horizontal=�6   .+�5"      �� $	��350��6   .+�5#      �� $&�� Images1/Dayflow - Buy Online.png��6   $	��300��6B   $	��350��6N   $	��Top=�6[   $��45q�6s   $
��Fill=�6   5$      �� 5%      $	��350��6   .+�5&      �� $��20 40q�6   .+�5'      �� $��Login��6    $��20q�6-   
������� �� TextAlignment$ Center=�6L   $��40(�6c   $��Brush Script MT)�6q   6�   �� 5(      $ 
Horizontal=�6!   $��10q�6:   .+�5)      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 User=�62   $��25��6>   $��25��6I   
�������6U   �� 5*      -   5         ��Name$ txtUsername��5*   "   $
��10 0q�67   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter Username��5+   "   
�������$	��250��5,   5   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448��50   "   �� *
UserName+51      �� 52      $ 
Horizontal=�6!   $��10q�6:   .+�53        $
 Lock=�62   $��25��6>   $��25��6I   
�������6U   G� 54      -   5         G�Name$ txtPassword��54   &   $
��10 0q�6;   $ Enter Password��6I   
�������$	��250��55   9   
������� G� 
CaretBrush �	#FFD94448 G� SelectionBrush �	#FFD94448.  (System.Windows.Interactivity.Interaction   Triggers 5:      /  )System.Windows.Interactivity.EventTrigger  5;   "      	EventName$ PasswordChanged��61   .  (System.Windows.Interactivity.TriggerBase   Actions. 5<   &   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6<   �� *PasswordChangedCommand+   CommandParameter 5=   $   ��  �� ElementName$ txtPassword��5>   #   5A      5B      �� 5C      $��10q�6!   $��Center=�6-   .+�5D      �� -   5         ��Name$ btnLogin��5F   Y   $	��100��5D   !   $��40��6-     MaterialDesignRaisedButton#��[ 69   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5E   !   $��2q�6O   ���#5858FA���#5858FA
������� � ToolTip$ Login��5F   I   $��Login��6�    �� 	IsDefault . ��5H   !   �� *LoginCommand+��5I   !   �� $ loginWindow��5K      5L      5M      5O      �� 5P      $	��100��6   .+�5Q      �� -   5        $ btnExit��5R   )   $��10 20q�5Q       & "MaterialDesignFloatingActionButton#��[ 6(   $ Close��5R      ���#5858FA��5Q   d   Z� .��5S        $ Close=�6.   
�������$��30��6N   $��30��6Y   5U      5V      5W      5X      5Y      