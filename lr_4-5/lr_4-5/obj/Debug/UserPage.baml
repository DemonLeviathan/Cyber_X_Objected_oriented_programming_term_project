   M S B A M L   `   `   `  ����A  =lr_4-5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:lr_4_5lr_4_5  5   	       lr_4_5.UserPage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:lr_4_5     5   	   -inputusing:Windows.UI.Xaml.Input     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	      AppIcon  � Icon#  [  5
   	    � Title$ 
MainWindow��5   	   $	��700��6   $	��900��6)   ��5      �� 5   
    �� ImageSource$= 7D:\Univer\4-th term\Term Project\lr_4-5\images\img1.jpg��6   .��5      �  � RowDefinitions 5   
   �� 5      $	��85* �6   �� 5      $	��15* �6   .+�5   
   �� $��0��6   $	��200��6   
�������$	��350��6D   $��15q�6S   $��Center=�6_   $	��300��6z    �� CornerRadius$ 20��6�    �� Padding$ 10q�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$
 Blue��63   ._�5      �� .+�5      �� $��Users accounts��6   $��25(�62   $��DemiBold"�6@   $��
10 10 0 10q�6V   $��Center=�6j   �� 5      -   5        	 ��Name$	 	usersList��5      $	��250��6.   $	��400��6>   $��5q�6N   ��5      �� 5       .R�5!      � .+�5"   "   �� ��6,   �� *Phone_number+5#      5$      
 � 	Resources
 5&       �� 
TargetType �� Property �� Value��%z   '��       �� 5'      " ��6    .�5(      ��  � ��
 ���� 6;   �� 5)       � ��
 �����6;   5*      5+      ��5,      �� 5-       �� 
TargetType" ��6*   .R�5.      �� $��1q�6%   
�������._�5/   "   �� $��Visible=�6/   .��50   &   �� 51   #   52      53      55      57      58      �� 59   
   $��1��6   ._�5:      �� .+�5;      �� -   5        $
��Back��5;      $��Center=�6(   $��10q�6E   $	��350��6d   $��40��6p     MaterialDesignRaisedButton#��[ 6   ���#9400D3$��20(�6�   6�   5<      5=      5>      5?      