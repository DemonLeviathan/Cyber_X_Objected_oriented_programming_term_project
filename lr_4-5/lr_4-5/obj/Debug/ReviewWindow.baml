   M S B A M L   `   `   `  ����A  =lr_4-5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:lr_4_5lr_4_5  5   	       lr_4_5.ReviewWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:lr_4_5     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      AppIcon  � Icon#  [  5	   	    � Title$ ReviewWindow��5
   	   $	��350��6   $	��300��6+   .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��0��6   $��Create your review��6   $��Center=�6:   $��Center=�5      $��20(�6+   �� 5   
   -   5         ��Name$ userName��5      $��1��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter your name��6    % !MaterialDesignFloatingHintTextBox#��[ 5      $��15(�6L   $��7q�5      ��6   �� *
UserName+5      �� 5   
   $��2��6   $��Rate us��6!   $��10 0 0 0q�60   �� 5   
   -   5         ��Name$ ratingSlider��5      $��2��5       � Minimum$ 1Q�5       � Maximum$ 5Q�6   $��10q�6)    �� IsSnapToTickEnabled . 	 �� TickFrequency$	 1Q�6P   $��Center=�5   '   
 � Value
 5      �� *
MyNumber+ �� UpdateSourceTrigger$ PropertyChanged=�5   '   �� 5   
   -   5         ��Name$
 rate��5   !   $��2��6    �� Padding$ 10q�5      $��10 -20q�6!   $��20(�61   $��Bottom=�6?   ��5   /   �� *
MyNumber+5   ?   �� 5   
   -   5        $ comment��5"      $��3��5      $ Enter your comment��6   #��[ 5       $��15(�6L   $��7q�5!      ��6   �� *	Comment+5"      �� 5#   
   -   5        $��4��5#      $��Send review��6   $��5q�64   6?   5$      5%      