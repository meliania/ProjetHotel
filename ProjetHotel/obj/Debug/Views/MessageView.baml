   M S B A M L   `   `   `  ����J  FMakrisoft.Makfi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Makrisoft.Makfi.ConvertersMakrisoft.Makfi.Converters  5      '    !Makrisoft.Makfi.Views.MessageView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9conv(clr-namespace:Makrisoft.Makfi.Converters     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5
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
����  �$��Bottom=�6Q   �� 5,      �6   �� *Title+5/      o� 50      $��1��6    � Cursor$
 Hand��6'   $��0q�65   .@�51      m� $	��...��6   
����  �$��16(�6>   .@�52      m� $��Nouveau message��6#   
����  � m� Command 6N   �� *
AddCommand+m� 53      $��Répondre ou transférer��6#   
����  � 6U   �� *RepondreMessage+m� 54      $��Archiver��6#   
����  � 6G   �� *DeleteCommand+�� 55      m� 56      $��
Actualiser��6#   
����  � 6I   �� *ActualiserMessage+59      5:      5;      5<      �� 5>   
   $��0��6   $��2��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�5?      � $��0��6   $��1��6      5@      �� 5A      $��* �6'   63   �� 5B      $
��Auto �6'   66   �� 5C      $
��Auto �6'   66    5E      �� 5F      6&   .+�5H      �� $��Envoyer��6   $��22(�6+   
����  �$��Bottom=�6K   �� 5I      $��2��6   
������ 
������ $��1q�6\    � ToolTip$ Envoyer��6p   $��Bottom=�5J   9   ��6   �� *SaveCommand+��5K        5M      $��20��62   $
��Auto��6>   $ PaperAirplane=�6K   $��0,0,10,0q�6�   ��6`   �� *CurrentDgSource.SaveColor+6�   5O      5P      5Q      �� 5U   
   $��0��6   $��1��6!   
������ $��1q�6H    �� CornerRadius$ 10��6\   $��Right=�6n   $	��Top=�6�   $	��220��6�   ._�5V      �� $��5q�6   .+�5Y      �� $��Correspondant��6   $��0,15,0,0q�61   �� 5Z      $��16(�6l   ��6   �� *Utilisateurs+ �� SelectedItem 6A   �� *FilterUtilisateur+��5[      �� 5\      .R�5]      ��  �� Orientation$ 
Horizontal=�6)   .+�5^   "   �� $
��Wrap=�6,   �� 5_   &   �6*   �� *Nom+ �� 5`   &   �6*   �� *Prenom+5a   #   5b      5c      5e      �� 5g      $
��Etat��6   $��0,30,0,0q�6(   �� 5h      $��16(�6]   ��6   �� *Etats+ 69   �� *
FilterEtat+��5i      �� 5j      .R�5k      �� $ 
Horizontal=�6)   .+�5l   "     $��20��6:   $
��Auto��6F   $��0,0,10,0q�6�    6S   �� *Icone+��6j   �� *	Couleur+6�   �� 5m   "   $
��Wrap=�6E   ��6,   �� *	Libelle+6E   5n      5o      5q      �� 5r      $ 
Horizontal=�6   $��0,20,0,0q�66   .+�5s      �� 	 d� 	IsChecked	 6    �� *FilterHistorique+{�6G   �� *HistoEnabled+�� 5t      $��
Historique��6    $��10,0,0,0q�62   $��16(�6D   5u      5v      5x      �� 5z   
   $��1��6   $��1��6!   
������ $��1q�6H   $ 10��6\   $��0q�6n   ._�5{      &   System.Windows.Controls.DataGrid  
   AutoGenerateColumns
 .     HeadersVisibility$
 None=�5|   7      CanUserAddRows .  "   VerticalScrollBarVisibility$ Visible=�6g   ��5{      �� *DgSourceCollectionView+ 6F   �� *CurrentDgSource+   Columns 5}      4  .System.Windows.Controls.DataGridTemplateColumn  5~         CellTemplate 5      �� 5�      .R�5�   "     $��20��6:   $
��Auto��6F    6S   �� *
Etat.Icone+��6o   �� *Etat.Couleur+5�      5�      0  *System.Windows.Controls.DataGridTextColumn  5�         
FontWeight$ Normal"�6�   ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6�      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *DateCreation+ �� StringFormat$ dd/MM/yyy HH:mm�� �� UpdateSourceTrigger$ PropertyChanged=�   
Foreground 6�   �� *	ColorEtat+  5�      $ Normal"�6E   $
 Auto 6Y    .  6)   �� *De.Nom+ 6x   �� *	ColorEtat+  5�      $ Normal"�6D   $
 Auto 6X    .  6)   �� *A.Nom+ 6w   �� *	ColorEtat+  5�       5�      �� 5�      .R�5�   "   �� $��SemiBold"�6d   ��6,   �� *Objet+��6C   �� *	ColorEtat+6d   5�      5�        5�      $ * 6.    5�      �� 5�      .R�5�   "   �� $��SemiBold"�6f   ��6,   �� *	Libelle+��6E   �� *	ColorEtat+6f   5�      5�      5�      5�      �� 5�   
   $��2��6   $��1��6!   
������ $��1q�6H   $ 10��6\   $
��Left=�6n   ._�5�      �� $��5q�6   $	��220��6$   .+�5�      �� $��À��6   $��0,15,0,0q�6%   �� 5�      $��16(�6   ��6*   �� *Utilisateurs+ �� Mode$ TwoWay=�$ PropertyChanged=� 5�      �� *CurrentDgSource.A+$ TwoWay=�$ PropertyChanged=�{�6v   �� *IsModifierEnabled+��5�      �� 5�      .R�5�      �� $ 
Horizontal=�6)   .+�5�   "   �� $��5,0,0,0q�6A   ��6,   �� *Nom+6A   5�      5�      5�      �� 5�      $��Objet��6   $��0,15,0,0q�6)   �� 5�      $��16(�6   $
��Auto=�5�      ��5�   (   �� *CurrentDgSource.Objet+$ PropertyChanged=�$ TwoWay=� �� 
IsReadOnly 6�   �� *
IsReadOnly+��5�   L   �� *CurrentDgSource.ColorEtat+�� 5�      $��Texte��6   $��0,19,0,5q�6)   �� 5�      $��16(�6    �� TextWrapping$
 Wrap=�5�       �� TextAlignment$
 Left=�60   $	��300��6i   $
��Auto=�6v   ��5�   (   �� *CurrentDgSource.Libelle+$ PropertyChanged=�$ TwoWay=� 5�   E   �� *
IsReadOnly+6v   5�      5�      5�      5�      