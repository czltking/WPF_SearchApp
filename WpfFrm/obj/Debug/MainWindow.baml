   M S B A M L   `   `   `  ����A  =WpfFrm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:WpfFrmWpfFrm  5   	       WpfFrm.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:WpfFrm     5   	     � Title$  
MainWindow��5   	   $	��400��6   $	��600��6)   .��5	      � .+�5
   
   �� -   5         ��Name$ 	btnSearch��5
      $��24��6$   $
��Left=�60   $	��Top=�6K   $��84��6c   $��搜索��6n   $��	20,30,0,0q�6{   ��6�   �� *QueryCommand+6�   �� 5   
   -   5         ��Name$ 
txtKeyword��5      $��24��6&   $
��Left=�62   $	��Top=�6M   $	��152��6�    �� TextWrapping$
 Wrap=�6�   $��
132,30,0,0q�6�   ��6e   �� *
SearchText+ �� Mode$ OneWay=�6�   �� 5   
   -   5        $ 	txtResult��5      $
��Left=�6%   $	��240��6@   $
 Wrap=�6L   $��	306,0,0,0q�6�   ��6`   �� *SearchResult+$ OneWay=�6�   �� 5   
   -   5        $ btnGet��5      $��24��6!   $
��Left=�6-   $	��Top=�6H   $��84��6`   $��跳转 WinPIC��6k   $��	32,88,0,0q�6   6�   �� 5   
   -   5        $ btnPage��5      $��24��6"   $
��Left=�6.   $	��Top=�6I   $��84��6a   $��跳转 Page��6l   $��
32,147,0,0q�6~   6�   5      5      