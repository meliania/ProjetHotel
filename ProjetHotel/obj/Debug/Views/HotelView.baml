   M S B A M L   `   `   `  ����J  FMakrisoft.Makfi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Makrisoft.Makfi.ViewsMakrisoft.Makfi.Views  5      G(clr-namespace:Makrisoft.Makfi.ConvertersMakrisoft.Makfi.Converters  5      9!clr-namespace:Makrisoft.Makfi.DalMakrisoft.Makfi.Dal  5	      %    Makrisoft.Makfi.Views.HotelView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      /local#clr-namespace:Makrisoft.Makfi.Views  5      3conv(clr-namespace:Makrisoft.Makfi.Converters  5      ,data!clr-namespace:Makrisoft.Makfi.Dal  5	      .��5      �   � ColumnDefinitions  5   
   �� 5      $	��240 �6   �� 5      $��* �6   �� 5      $	��240 �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   .+�5   
   �� $��0��6   $��0��6   
������ $��0,0,0,1q�6H   $��5q�6b   5      �� 5    
   $��0��6   $��1��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�5!      �   5"      �� 5#      $��* �6'   63   �� 5$      $
��Auto �6'   66   .+�5&      ��  �� Orientation$ 
Horizontal=�6   .+�5'      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��6.   $
��Auto��6:      Kind$ Building=�6G   
����  �$��Bottom=�6i   �� 5(      $��20(�6    $��Normal"�6.   
����  �$�� Les hôtels��6T   $��Bottom=�6g   5)      o� 5*      $��1��6    � Cursor$
 Hand��6'   $��0q�65   
�������.@�5,      m� $	��...��6   
����  �$��16(�6>   .@�5-      m� $��Ajouter��6#   
����  � m� Command 6F   �� *
AddCommand+m� 5.      $��	Supprimer��6#   
����  � 6H   �� *DeleteCommand+5/      51      52      53      �� 55   
   $��0��6   $��2��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�56      � $��0��6   $��1��6      57      �� 58      $��* �6'   63   �� 59      $
��Auto �6'   66   �� 5:      $
��Auto �6'   66    5<      �� 5=      6&   .+�5?      �� $��Modifier��6   $��22(�6,   
����  �$��Bottom=�6L   �� 5A      $��2��6   
������ 
������ $��1q�6\   $��Bottom=�6�   ��6p   �� *SaveCommand+��5B        5C      $��25��62   $
��Auto��6>   $ Floppy=�6K   $��0,0,10,0q�6�    � ToolTip$ Enregistrer��6�   ��6Y   �� *CurrentDgSource.SaveColor+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   5E      5G      5H      �� 5L   
   $��0��6   $��1��6!   
������ $��1q�6H   	 �� CornerRadius$	 10��6\   $��Right=�6n   $	��Top=�6�   $	��220��6�   5M      �� 5O      $��1��6   $��1��6"   
������ $��1q�6I   $	 10��6]   ._�5P      &   System.Windows.Controls.DataGrid  
   SelectionMode$
 Single=�5R         SelectionUnit$ FullRow=�6/   $ �� IsSynchronizedWithCurrentItem$ FalseY�6G      AutoGenerateColumns .     HeadersVisibility$
 None=�5S   3      CanUserAddRows .  "   VerticalScrollBarVisibility$ Visible=�6c   ��5P      �� *DgSourceCollectionView+ �� SelectedItem 5Q      �� *CurrentDgSource+$ TwoWay=�$ PropertyChanged=�   Columns 5T      4  .System.Windows.Controls.DataGridTemplateColumn  5U      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6-      CellTemplate 5V      �� 5W      .R�5X   "   �� $
��Left=�6(   $��50��6\   $��50��6g   ��6C   �� *Image+6g   5Y      5[        5\       5]      �� 5^      .R�5_   "   �� $��Center=�6,   $
��Bold"�5`   w   ��5_   G   �� *	SaveColor+$ TwoWay=�$ PropertyChanged=���5`   0   �� *Nom+$ TwoWay=�$ PropertyChanged=�6w   5a      5c        5d      $
 Auto 6.    5e      �� 5f      .R�5g   "   �� $ 
Horizontal=�6-   $��Center=�6F   .+�5h   &     $��20��6>   $
��Auto��6J   $
 Face=�6W   
����  �6c   �� 5i   &   $
��Wrap=�6Q   $��10,0,0,0q�6e   ��60   �� *Gouvernante.Nom+6e   5j   #   5k      5m        5n      $
 Auto 6-    5o      �� 5p      .R�5q   "   �� $ 
Horizontal=�6-   $��Center=�6F   .+�5r   &     $��20��6>   $
��Auto��6J   $ Building=�6W   
����  �6g   �� 5s   &   $
��Wrap=�6O   $��10,0,0,0q�6c   ��60   �� *Reception.Nom+6c   5t   #   5u      5w        5x      $ * 6-    5y      �� 5z      .R�5{   #   �� $
��Wrap=�6J   $��Center=�6^   $��Italic$�6y   ��6-   �� *Commentaire+6y   5|      5~      5�      5�      �� 5�   
   $��2��6   $��1��6!   
������ $��1q�6H   $	 10��6\   $
��Left=�6n   ._�5�      �� $��5q�6   $	��220��6$   .+�5�      �� $��Libellé��6   $��0,15,0,0q�6+   �� 5�      $��16(�6   ��6(   �� *CurrentDgSource.Nom+$ TwoWay=�$ PropertyChanged=�{�6   �� *IsModifierEnabled+�� 5�      $��Commentaire��6   $��0,15,0,0q�6/   �� 5�      $��16(�6    �� TextWrapping$
 Wrap=�6�    �� TextAlignment$
 Left=�6�   ��6)   �� *CurrentDgSource.Commentaire+$ TwoWay=�$ PropertyChanged=�{�6�   �� *IsModifierEnabled+�� 5�      $��Gouvernante��6   $��0,15,0,0q�60   �� 5�      $��16(�5�   �   ��5�      �� *Gouvernantes+{�6A   �� *IsModifierEnabled+ 5�      �� *CurrentDgSource.Gouvernante+$ TwoWay=�$ PropertyChanged=���5�      �� 5�      .R�5�      �� $ 
Horizontal=�6)   .+�5�   "     $��20��6:   $
��Auto��6F   $
 Face=�6S   ��6_   �� *	Couleur+�� 5�   "   $��5,0,0,0q�6s   ��6,   �� *Nom+$ TwoWay=�$ PropertyChanged=�6s   5�      5�      5�      �� 5�      $��	Reception��6   $��0,15,0,0q�6-   �� 5�      $��16(�5�   �   ��5�      �� *
Receptions+{�6>   �� *IsModifierEnabled+ 5�      �� *CurrentDgSource.Reception+$ TwoWay=�$ PropertyChanged=���5�      �� 5�      .R�5�      �� $ 
Horizontal=�6)   .+�5�   "     $��20��6:   $
��Auto��6F   $ Building=�6S   ��6c   �� *	Couleur+�� 5�   "   $��5,0,0,0q�6s   ��6,   �� *Nom+$ TwoWay=�$ PropertyChanged=�6s   5�      5�      5�      5�      5�      5�      5�      