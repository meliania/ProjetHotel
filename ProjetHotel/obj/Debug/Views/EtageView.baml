   M S B A M L   `   `   `  ����J  FMakrisoft.Makfi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Makrisoft.Makfi.ConvertersMakrisoft.Makfi.Converters  5      %    Makrisoft.Makfi.Views.EtageView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9conv(clr-namespace:Makrisoft.Makfi.Converters     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5
      �   � ColumnDefinitions  5   
   �� 5      $	��240 �6   �� 5      $��* �6   �� 5      $	��240 �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   .+�5   
   �� $��0��6   $��0��6   
������ $��0,0,0,1q�6H   $��5q�6b   5      �� 5   
   $��0��6   $��1��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�5      �   5      �� 5       $��* �6'   63   �� 5!      $
��Auto �6'   66   .+�5#      �� $��20(�6   $��Normal"�6*   
����  �$��Bottom=�6P   �� 5$      �6   �� *Title+ �� 5%      �6   �� *DecoupageSelected.Libelle+5&      o� 5'      $��1��6    � Cursor$
 Hand��6'   $��0q�65   .@�5(      m� $	��...��6   
����  �$��16(�6>   .@�5)      m� $��Ajouter��6#   
����  � m� Command 6F   �� *
AddCommand+m� 5*      $��	Supprimer��6#   
����  � 6H   �� *DeleteCommand+5+      5,      5-      5.      �� 50   
   $��0��6   $��2��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�51      � $��0��6   $��1��6      52      �� 53      $��* �6'   63   �� 54      $
��Auto �6'   66   �� 55      $
��Auto �6'   66    57      �� 58      6&   .+�5:      �� $��Modifier��6   $��22(�6,   
����  �$��Bottom=�6L   �� 5;      $��2��6   
������ 
������ $��1q�6\   $��Bottom=�6�   ��6p   �� *SaveCommand+��5<      '  !MaterialDesignThemes.Wpf.PackIcon  5=      $��20��62   $
��Auto��6>      Kind$ Floppy=�6K   $��0,0,10,0q�6�   ��6Y   �� *CurrentDgSource.SaveColor+6�   5?      5@      5A      �� 5E   
   $��0��6   $��1��6!   
������ $��1q�6H    �� CornerRadius$ 10��6\   $��Right=�6n   $	��Top=�6�   $	��220��6�   5F      �� 5H   
   $��1��6   $��1��6!   
������ $��1q�6H   $ 10��6\   $��0q�6n   ._�5I      &   System.Windows.Controls.DataGrid     AutoGenerateColumns .     HeadersVisibility$
 None=�5K   3      CanUserAddRows .  "	   VerticalScrollBarVisibility$	 Visible=�6c   ��5I      �� *DgSourceCollectionView+
 �� Mode$
 TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5J      �� *CurrentDgSource+$
 TwoWay=�$ PropertyChanged=�   Columns 5L      4  .System.Windows.Controls.DataGridTemplateColumn  5M         CellTemplate 5N      �� 5O      .R�5P   "   �� $��Center=�6,   $
��Bold"�5Q   w   ��5P   G   �� *	SaveColor+$
 TwoWay=�$ PropertyChanged=���5Q   0   �� *Nom+$
 TwoWay=�$ PropertyChanged=�6w   5R      5T        5U      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6-    5V      �� 5W      .R�5X   "   �� $
��Wrap=�6I   ��6,   �� *Commentaire+6I   5Y      5[      5]      5^      �� 5`   
   $��2��6   $��1��6!   
������ $��1q�6H   $ 10��6\   $
��Left=�6n   ._�5a      �� $��5q�6   $	��220��6$   .+�5b      �� $��Libellé��6   $��0,15,0,0q�6+   �� 5c      $��16(�6   ��6(   �� *CurrentDgSource.Nom+$ PropertyChanged=��� 5e      $��Commentaire��6   $��0,15,0,0q�6/   �� 5f      $��50��6   .��5g      �� $��16(�6    �� TextWrapping$
 Wrap=�6�    �� TextAlignment$
 Left=�6�   ��6.   �� *CurrentDgSource.Commentaire+$ PropertyChanged=�6�   5h      �� 5i      $��Chambres du groupe��6   $��0,15,0,0q�67   �� 5j      $	��150��6   .��5l      �� 
�������$��0 10 0 0q�5n   3   ��5l      �� *CurrentDgSource.Chambres+$
 TwoWay=�$ PropertyChanged=� 5m      �� *CurrentChambre+$
 TwoWay=�$ PropertyChanged=���5o      �� 5p      .R�5q      �� $
��Bold"�6o   ��6(   �� *Nom+$
 TwoWay=�$ PropertyChanged=�6o   5r      5t      5u      �� 5v       �� Orientation$ 
Horizontal=�6   $��Center=�66   $��0 20 0 0q�6S   .+�5w      �� $��Right=�6   
������ 
������ $��1q�6m   $��0 0 5 0q�5x      ��5y      �� *SupprimerChambreCommand+��5z        5{      $��30��66   $
��Auto��6B   $ ArrowBottom=�6O   
����  �6b   5}      �� 5~      $��Right=�6   
������ 
������ $��1q�6m   ��5      �� *AjouterChambreCommand+��5�        5�      $��30��66   $
��Auto��6B   $ ArrowUp=�6O   
����  �6^   5�      5�      �� 5�      $��Autres chambres��6   $��0,15,0,0q�63   �� 5�      $��0 10 0 0q�5�      ��5�      �� * CurrentDgSource.AutresChambres+$
 TwoWay=�$ PropertyChanged=� 5�      �� *CurrentChambreDispo+$
 TwoWay=�$ PropertyChanged=���5�      �� 5�      .R�5�      �� $
��Bold"�6o   ��6(   �� *Nom+$
 TwoWay=�$ PropertyChanged=�6o   5�      5�      5�      5�      5�      5�      