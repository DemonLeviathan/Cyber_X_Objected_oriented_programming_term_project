   M S B A M L   `   `   `  ����A  =lr_4-5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:lr_4_5lr_4_5  5   	       lr_4_5.OrderPage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:lr_4_5     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      AppIcon  � Icon#  [  5	   	    � Title$ 	OrderPage��5
   	   $	��700��6   $	��400��6(   .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��0��6   $��Order a service��6   $��30(�67   $��Center=�5      $��Center=�6-   �� 5   
   -   5         ��Name$ emailTextBox��5      $��1��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter your email��6    % !MaterialDesignFloatingHintTextBox#��[ 5      $��15(�6L   $��7q�5      ��6   �� *Email+{�64   �� *IsEmailEnabled+5      �� 5    
   -   5        $ phone_Number��5#      $��2��5       $ Enter your phone number��6   #��[ 5!      $��15(�6M   $��7q�5"      {�5#   (   �� *IsPhoneNumberEnabled+�� 5$   
   -   5         ��Name$ 	notifyWay��5&   A   $��3��5$      $��15(�6    $��7q�6.    & "MaterialDesignFloatingHintComboBox#��[ 5%   2   ��6   �� *Notify+ �� SelectedItem 5&      �� *SelectedNotification+ � ToolTip 5'      _� 5(        MaterialDesignToolTip#��[ 6   .��5)      �� .+�5*      �� $��Choose notification way��6$   5+      5,      $ Choose notification way��5.   e   5/      �� 51   
   $��4��6   $��15(�6    $��7q�6.   #��[ 52   3   ��6   �� *	Payment+ 53      _� 54      #��[ 6   .��55      �� .+�56      �� $��Choose payment way��6$   57      58      $ Choose payment way��5:   `   5;      �� 5=   
   -   5        $ serviceName��5=      $��5��6   $��15(�6O   $��7q�5>       �� 
IsReadOnly . ��5=   4   �� *	OfferName+5>      �� 5?   
   -   5        	 ��Name$	 hours��5A      $��6��5?      
 � Minimum$
 1Q�5@       � Maximum$ 24Q�6   $��10q�6*    �� IsSnapToTickEnabled .  �� TickFrequency$ 1Q�6Q   $��Center=�5A        � Value 5?      �� *
MyNumber+ �� UpdateSourceTrigger$ PropertyChanged=�5A       �� 5B   
   -   5         ��Name$
 hour��5B   !   $��7��6    �� Padding$ 10q�6I   $��10q�6V   $��20(�6b   ��6/   �� *
MyNumber+6b   �� 5D   
   -   5        $ 	dateStart��5D       $��8��6   $ 
Enter date��63   #��[ 5E      $��15(�6M   $��7q�5F      �� 5G   
   -   5        $ 	timeStart��5G      $��9��6   $ 
Enter time��62   #��[ 5H      $��15(�6M   $��7q�5I      �� 5J   
   -	   5        $ computerNumber��5J       $��10��6   $$ Enter computer number (1 - 16)��68   #��[ 5K      $��15(�6M   $��7q�5L      �� 5N   
   -
   5        $��11��5N      $��Order��6   $��10q�6@   5Q      5R      