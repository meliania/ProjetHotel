   M S B A M L   `   `   `  ����J  FMakrisoft.Makfi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Makrisoft.Makfi.ConvertersMakrisoft.Makfi.Converters  5      '    !Makrisoft.Makfi.Views.ChambreView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9conv(clr-namespace:Makrisoft.Makfi.Converters     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5
      �   � ColumnDefinitions  5   
   �� 5      $	��240 �6   �� 5      $��* �6   �� 5      $	��240 �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   .+�5   
   �� $��0��6   $��0��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�5      �   5      �� 5      $��* �6'   63   �� 5      $
��Auto �6'   66   .+�5      �� $��Filtrer��6   $��22(�6+   
����  �$��Bottom=�6K   �� 5      $��1��6   
������ 
������ $��1q�6\   $��Bottom=�6�   ��6p   �� *FilterClearCommand+��5      '  !MaterialDesignThemes.Wpf.PackIcon  5      $��20��62   $
��Auto��6>      Kind$ Clear=�6K   
����  �$��0,0,10,0q�6j   5!      5"      5#      �� 5%   
   $��0��6   $��1��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�5&      �   5'      �� 5(      $��* �6'   63   �� 5)      $
��Auto �6'   66   .+�5+      �� $��20(�6   $��Normal"�6*   
����  �$��Les chambres��6P   $��Bottom=�6d   o� 5,      $��1��6    � Cursor$
 Hand��6'   $��0q�65   .@�5-      m� $	��...��6   
����  �$��16(�6>   .@�5.      m� $��Ajouter��6#   
����  � m� Command 6F   �� *
AddCommand+m� 5/      $��	Supprimer��6#   
����  � 6H   �� *DeleteCommand+�� 50      m� 51      $��Groupes de chambre��6#   
����  � 6Q   �� *ChangeViewCommand+52      53      54      55      �� 57   
   $��0��6   $��2��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�58      � $��0��6   $��1��6      59      �� 5:      $��* �6'   63   �� 5;      $
��Auto �6'   66   �� 5<      $
��Auto �6'   66    5>      �� 5?      6&   .+�5A      �� $��Modifier��6   $��22(�6,   
����  �$��Bottom=�6L   �� 5C      $��2��6   
������ 
������ $��1q�6\    � ToolTip$# Enregistrer les modifications��6p   $��Bottom=�5D   9   ��6   �� *SaveCommand+��5E        5G      $��20��62   $
��Auto��6>   $ Floppy=�6K   $��0,0,10,0q�6�   ��6Y   �� *CurrentDgSource.SaveColor+6�   5I      5J      5K      �� 5O   
   $��0��6   $��1��6!   
������ $��1q�6H    �� CornerRadius$ 10��6\   $��Right=�6n   $	��Top=�6�   $	��220��6�   ._�5P      �� $��5q�6   .+�5S      �� $��Grouope de chambres��6   $��0,15,0,0q�67   �� 5T      $��16(�6�   ��6   �� *Etages+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�	 �� SelectedItem	 6k   �� *FilterEtage+��5U      �� 5V      .R�5W      �� 
 �� Orientation$
 
Horizontal=�6)   .+�5X   "     $��20��6:   $
��Auto��6F   $ Building=�6S   
����  �$��0,0,10,0q�6y   �� 5Y   "   $
��Wrap=�6A   ��6,   �� *Nom+6A   5Z      5[      5]      �� 5_      $
��Etat��6   $��0,30,0,0q�6(   �� 5`      $��16(�6]   ��6   �� *Etats+	 69   �� *
FilterEtat+��5a      �� 5b      .R�5c      �� $
 
Horizontal=�6)   .+�5d   "     $��20��6:   $
��Auto��6F   $��0,0,10,0q�6�    6S   �� *Icone+��6j   �� *	Couleur+6�   �� 5e   "   $
��Wrap=�6E   ��6,   �� *	Libelle+6E   5f      5g      5i      5j      5k      �� 5m   
   $��1��6   $��1��6!   
������ $��1q�6H   $ 10��6\   $��0q�6n   ._�5n      &   System.Windows.Controls.DataGrid     AutoGenerateColumns .     HeadersVisibility$
 None=�5o   7      CanUserAddRows .  "   VerticalScrollBarVisibility$ Visible=�6g   ��5n      �� *DgSourceCollectionView+	 6F   �� *CurrentDgSource+   Columns 5p      4  .System.Windows.Controls.DataGridTemplateColumn  5q         CellTemplate 5r      �� 5s      .R�5t   "   �� $��Center=�6,   $
��Bold"�5u   w   ��5t   G   �� *	SaveColor+$ TwoWay=�$ PropertyChanged=���5u   0   �� *Nom+$ TwoWay=�$ PropertyChanged=�6w   5v      5x      0  *System.Windows.Controls.DataGridTextColumn  5y         
FontWeight$ Normal"�6J   ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6^      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *Etat.Libelle+6k     5z       5{      �� 5|      .R�5~   "     $��20��6:   $
��Auto��6F    6S   �� *
Etat.Icone+��6p   �� *Etat.Couleur+5      5�        5�      $ * 6-    5�      �� 5�      .R�5�   "   �� $
��Wrap=�6I   ��6,   �� *Commentaire+6I   5�      5�      5�      5�      �� 5�   
   $��2��6   $��1��6!   
������ $��1q�6H   $ 10��6\   $
��Left=�6n   ._�5�      �� $��5q�6   $	��220��6$   .+�5�      �� $��Libellé��6   $��0,15,0,0q�6+   �� 5�      $��16(�6   ��6(   �� *CurrentDgSource.Nom+$ PropertyChanged=�$ TwoWay=�{�6   �� *IsModifierEnabled+�� 5�      $
��Etat��6   $��0,15,0,0q�6(   �� 5�      $��16(�6   $��0 20 0 0q�6)   ��5�      �� *Etats+	 63   �� *CurrentDgSource.Etat+{�6a   �� *IsModifierEnabled+��5�      �� 5�      .R�5�      �� $
 
Horizontal=�6)   .+�5�   "     $��20��6:   $
��Auto��6F    6S   �� *Icone+��6j   �� *	Couleur+�� 5�   "   $��5,0,0,0q�6E   ��6,   �� *	Libelle+6E   5�      5�      5�      �� 5�      $��Commentaire��6   $��0,19,0,5q�6/   �� 5�      $��16(�6    �� TextWrapping$
 Wrap=�6�    �� TextAlignment$
 Left=�6�   ��6)   �� *CurrentDgSource.Commentaire+$ PropertyChanged=�$ TwoWay=�{�6�   �� *IsModifierEnabled+5�      5�      5�      5�      