   M S B A M L   `   `   `  ����A  =lr_4-5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:lr_4_5lr_4_5  5   	       lr_4_5.Authorization   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:lr_4_5     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      AppIcon  � Icon#  [  5	   	    � Title$ 
MainWindow��5
   	   $	��700��6   $	��900��6)   ��5      �� 5   
    �� ImageSource$= 7D:\Univer\4-th term\Term Project\lr_4-5\images\img1.jpg��6   .��5      � .+�5   
   �� $	��200��6   
�������$	��350��67   $��15q�6F   $��Center=�6R   $	��300��6m    �� CornerRadius$ 20��6}    �� Padding$ 10q�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6#      Color$
 Blue��63   ._�5      �� .+�5      �� $��Authorization��6   $��25(�61   $��DemiBold"�6?   $��
10 10 0 10q�6U   $��Center=�6i   � 5      $��5 0 0 10q�6   .+�5      �� -   5        $
��Left=�5      $��Sign in��68     MaterialDesignFlatButton#��[ 6g    � Cursor$
 Hand��6�   6�   �� 5      $��Right=�6   $��Log in��69   6L   5      �� 5      -   5        	 ��Name$	 loginTextBox��5      )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Enter phone number��60    % !MaterialDesignFloatingHintTextBox#��[ 6d   $��5 0 0 5q�6�   6�   G� 5      -   5         G�Name$ passwordBox��5      $
 Enter password��63    ) %MaterialDesignFloatingHintPasswordBox#��[ 6c   $��5 0 0 5q�6�   6�   �� 5      -   5        $��Log in��5      $��	5 20 5 10q�6*   $��Bottom=�6=   6t   5       5!      5#      5$      