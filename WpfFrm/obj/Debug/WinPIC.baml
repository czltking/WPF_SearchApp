   M S B A M L   `   `   `  ����A  =WpfFrm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:WpfFrmWpfFrm  5   	       WpfFrm.WinPIC   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:WpfFrm     5   	   -   5          � Title$  WinPIC��5   	   $	��450��60   $	��800��6=    � 	Resources 5	         MyPhotos S� 
ObjectType   WpfFrm.PhotoList �� 
TargetType �� Property �� Value �� BasedOn  	TitleText �� 
StartPoint �� EndPoint	 � Offset
 � Color �� 
TargetType �� CornerRadius �� Orientation K� IsItemsHost �� DataType   WpfFrm.Photo �� Triggers P� Property P� Value :� RoutedEvent g� Duration �� TargetProperty	 W� To��%7  &	        '��      &	 �     7��'�� �    (��     5,      *, +)'�� �    S� 5
   
   "  60   6X   �� 5   
   " ��6   .�5      ��  � ��$ Center=�64   6E   �� 5       � ��$ Comic Sans MS)�6+   6C   �� 5       � ��$ 14(�6)   66   5      �� 5   
   8   " ��6>   .�5      ��  � ��$ 26(�6)   66   �� 5       � �� 5      �� 5      $	 1,0&�6*   $	 1,1&�6;   ��5      � $		 0.0Q�6+   $
 #90DDDD��68   6J   � 5      $		 1.0Q�6+   $
 #5BFFFF��68   6J   5      5      5      �� 5   
   " ��6   .�5      ��  � �� 5      �� 5       " ��6&   .R�5!      �� $ 5��6!   #��z��62   ._�5"      �� $
��Auto=�6+   .��5#   "   �� $ 
Horizontal=�6-   $��Center=�6F   $��Center=�6a    . 5$   #   5%      5&      5'      5)      5*      �� 5,   
   "  6   .R�5-      �� $��3q�6   ._�5.      �� ��6   �� *Source+5/      50      �� 52   
   " ��6   .�53      ��  �@J�Opacity$	 0.5Q�6(   �� 54       � ��$ 75��6*    55      P� 56       �@��
IsSelected .  �57      �� 58       �@J�Opacity$	 1.0Q�64   5:      :� 5;      $ Mouse.MouseEnter��6   [�5<      �� 5=      .��5>      �� .��5?   "   W� $ 0:0:0.2D�5@      $ 	MaxHeight�5A      $ 90X�5B      5C      5D      5F      :� 5G      $ Mouse.MouseLeave��6   [�5H      �� 5I      .��5J      �� .��5K   "   W� $ 0:0:1D�5L      $ 	MaxHeight�5M      5N      5O      5Q      5S      5T      .��5U      � .+�5V   
   �� $��10q�6   .+�5W      �� -   5        $��	txtblock1��5W   ;   #��[ 6   6N   �� 5X      Check out my new pictures63   �� 5Y      
�������$	��600��6c   $��10q�6o    �� SelectedIndex$ 0��6{   ��6   ��  �� Source# [  5Z      5[      5\      5]      