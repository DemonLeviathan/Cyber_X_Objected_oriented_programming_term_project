   M S B A M L   `   `   `  ����A  =lr_4-5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:lr_4_5lr_4_5  5   	        lr_4_5.OffersAndPromotions   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:lr_4_5     5   	   -inputusing:Windows.UI.Xaml.Input     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	      AppIcon  � Icon#  [  5
   	    � Title$ 
MainWindow��5   	   $	��700��6   $	��900��6)   ��5      �� 5   
    �� ImageSource$= 7D:\Univer\4-th term\Term Project\lr_4-5\images\img3.jpg��6    � 	Resources 5       �� 
TargetType  TextBlockStyleTitle  MaterialDesignTextBlock �� BasedOn �� Property �� Value  TextBlockStyleName  TextBlockStyleDescription  TextBlockStyleInfo��%Y  &	       7  &	 �     7  &	 *    7  &	 �    7  �� 5   
   " ��6   8   .�5      ��  � ��$ Century Gothic)�6+   �� 5       � ��$ DemiBold"�6+   5      �� 5   
   " ��6   8   .�5      ��  � ��$ Century Gothic)�6+   �� 5       � ��$ DemiBold"�6+   �� 5       � ��$ 20(�6)   5      �� 5   
   " ��6   8   .�5      ��  � ��$ Century Gothic)�6+   5      �� 5   
   " ��6   8   .�5      ��  � ��$ Verdana)�6+   �� 5       � ��$ Medium"�6+   �� 5       � ��$ 13(�6)   5       5!      .��5"      �  � RowDefinitions 5#   
   �� 5$      $	��10* �6   �� 5%      $	��80* �6   �� 5&      $	��10* �6   .+�5(   
   �� $��0��6   .+�5)      �� $��Offers and promotions��6   $��35(�65   $��DemiBold"�6C   $��
10 10 0 10q�5*      $��Center=�6,   
�������#��[ 5+      	 J� Effect	 5,      3  -System.Windows.Media.Effects.DropShadowEffect  5-      
   
BlurRadius$
 30Q�6'      Color$ #000080��67      ShadowDepth$ 2Q�6G   5/      50      � 51   
   $��1��6    � ColumnDefinitions 52      �� 53      �� 54      .+�56      �� $��0��6   ���#DCDCDC �� CornerRadius$ 5��6:   $	��400��57      $	��400��6!   	 58        59      $
 30Q�6'   $ DeepSkyBlue��67   ._�5;      �� -   5         ��Name$ 	textStack��5;      .+�5<      �� -   5         ��Name$ 
titleBlock��5<       #��[ 64   $��5q�6`   �� 5=      -   5        $ descriptionBlock��5=       $
��Wrap=�6:   #��[ 6N   $��5q�6�   �� 5>      -   5        $ 	infoBlock��5>       #��[ 63   $��5q�6_   5?      5A      �� 5C      $��1��6   $	��400��6%   $
��Auto��66   ���#DCDCDC$��15q�6X   $��Center=�6d   $
��Auto��5D      $ 5��6    �� Padding$ 0q�60   	 5E        5F      $
 30Q�6'   $
 Blue��67   ._�5J      �� -   5         ��Name$ 
offersList��5J   '   $��5q�6   $
��Auto=�5K      $��Disabled=�5L      ��5M      �� 5N      " ��6    .�5O      ��  � ��$ Stretch=�6%   65   �� 5P       � ��$ 
Montserrat)�6;   �� 5Q       � ��
 �   �6;   �� 5R       � ��
 �����6<   5S      ��5U      �� 5V      .R�5W      �� $��5q�6)   .+�5X   "   �� #��[ 6B   ��6,   �� *Name+6B   �� 5Y   "   #��[ 6,   �� 5Z   "   $�Time: ��6&    �� 5[   "   �6&   �� *Time+5\   #   �� 5]   "   #��[ 6,   �� 5^   "   $�Range: ��6&    �� 5_   "   �6&   �� *Range+5`   #   5a      5b       5d      ��%z   '��       �� 5e      " ��6    .�5f      ��  � ��
 ���� 6;   �� 5g       � ��
 �����6;   5h      5i      ��5j      �� 5k       �� 
TargetType" ��6*   .R�5l      �� $��1q�6%   
�������._�5m   "   �� $��Visible=�6/   .��5n   &   �� 5o   #   5p      5q      5s      5t      5u      �� 5v   
   $��2��6   .+�5w      �� $��2��6   .+�5y      �� -   5        $��Check reviews��5y      $
��Left=�6G   $��	25 10 0 0q�5z      $	��400��6(   $��20(�64   $��Center=�6B   �� 5{      -   5        $��Back to users profile��5{      $	��420��5|      $��Right=�6"   $	��Top=�6>   $��
5 -33 15 5q�5}      $��20(�6)   5~      5      5�      5�      