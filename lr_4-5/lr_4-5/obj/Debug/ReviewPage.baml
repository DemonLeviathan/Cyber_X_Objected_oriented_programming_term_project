   M S B A M L   `   `   `  ����A  =lr_4-5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:lr_4_5lr_4_5  5   	       lr_4_5.ReviewPage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:lr_4_5     5   	      AppIcon  � Icon#  [  5   	    � Title$ 
ReviewPage��5	   	   $	��500��6   $	��500��6)   ��5
      �� 5   
    �� ImageSource$= 7D:\Univer\4-th term\Term Project\lr_4-5\images\img3.jpg��6    � 	Resources 5       �� 
TargetType  TextBlockStyleTitle  MaterialDesignTextBlock �� BasedOn �� Property �� Value  TextBlockStyleDate  TextBlockStyleLabel  MaterialDesignLabel��%<  &	       7  &	 �     7  &	 E    7  �� 5   
   " ��6   8   .�5      ��  � ��$ Century Gothic)�6+   �� 5       � ��$ DemiBold"�6+   �� 5       � ��$ 17(�6)   5      �� 5   
   " ��6   8   .�5      ��  � ��$ Verdana)�6+   �� 5       � ��$ Medium"�6+   �� 5       � ��$ 13(�6)   5      �� 5   
   " ��6   8   .�5      ��  � ��$ Century Gothic)�6+   �� 5       � ��$ DemiBold"�6+   �� 5       � ��
 �����6+   �� 5       � ��$ 25(�6)   5      5      .��5      �  � RowDefinitions 5    
   �� 5!      $	��10* �6   �� 5"      $	��90* �6   .+�5$   
   �� $��0��6   $��Users reviews��6   #��[ 65   $��Center=�5%      �� 5&   
   $��1��6   $��1��6   $	��400��6.   $
��Auto��6?   ���#DCDCDC$��15q�6a   $��Center=�6m   $
��Auto��5'      	 �� CornerRadius$	 5��6   
 �� Padding$
 0q�60    J� Effect 5(      3  -System.Windows.Media.Effects.DropShadowEffect  5)         
BlurRadius$ 30Q�6#      Color$ #87CEFA��63   ._�5-      �� -   5         ��Name$ reviewsList��5-   #   $��5q�6   $
��Auto=�5.      $��Disabled=�5/      ��50      �� 51      " ��6   .�52      ��  � ��$ Stretch=�6!   61   �� 53       � ��$ 
Montserrat)�67   �� 54       � ��
 �   �67   �� 55       � ��
 �����68   56      ��58      �� 59      .R�5:      �� $��5q�6%   .+�5;      ��  ��Name$ userNameBlock��6(   #��[ 5<   (   ��5;   ?   �� *
UserName+5<   (   �� 5=      $ commentBlock��6(   ��6>   �� *	Comment+�� 5>      $ 	rateBlock��6(   #��[ 5?   (   �� 5@   "   $�Rating: ��6&    �� 5A   "   �6&   �� *Rating+5B      �� 5C      $ 	dateBlock��6(   #��[ 5D   (   ��5C   ;   �� *Date+5D   (   5E      5F       5H      ��%z   '��       �� 5I      " ��6   .�5J      ��  � ��
 ���� 67   �� 5K       � ��
 �����67   5L      5M      ��5N      �� 5O       �� 
TargetType" ��6&   .R�5P      �� $��1q�6!   
�������._�5Q      �� $��Visible=�6+   .��5R   "   �� 5S      5T      5U      5W      5X      5Y      5Z      