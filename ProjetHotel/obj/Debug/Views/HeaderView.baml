   M S B A M L   `   `   `  ����J  FMakrisoft.Makfi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Makrisoft.Makfi.ConvertersMakrisoft.Makfi.Converters  5      &     Makrisoft.Makfi.Views.HeaderView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9conv(clr-namespace:Makrisoft.Makfi.Converters     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        � 	Resources  5
      6   0Makrisoft.Makfi.Converters.ViewSelectedConverter   ViewSelectedConverterKey��%   &	          5   
   6%   5      .��5      �� 
�������$��1q�6!    �� CornerRadius$ 10��65   $��10q�6G   ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��220 �6#   �� 5      $��* �6#   �� 5      $	��220 �6#    � RowDefinitions 5      �� 5      $	��160 �6    .+�5      �� 
����  �$��1q�6(   $ 15��6<   $	��210��6N   $��Right=�6Z   ._�5      ]� $��5q�6   .+�5      �� $��Bottom=�6   $��Center=�68   $��20(�6U    �� DisplayMemberPath$	 Nom��5      {�5   c   �� *CanChangeUtilisateur+��5      �� *Utilisateurs+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5      �� *CurrentUtilisateur+5      �� 5       $	��130��6H   $	��120��6T   ��6   �� *CurrentUtilisateur.Image+6T   5!      5"      �� 5$      $��1��6   
�������$��1q�69   ._�5%      �  5&      �� 5'      $��40 �6(   �� 5(      $��* �6(   .+�5+      �� 
����  �$��	20,0,20,0q�6/   ._�5,      �  5-      �� 5.   "   $
��Auto �63   �� 5/   "   $��* �63   �� 50   "   $
��Auto �63   .+�52      �� 
������ 
������ ��6>   �� *BackCommand+y�53   %   �� *Main_ViewModel.ViewSelected+ �� 	Converter# [  	 �� ConverterParameter$
	 Back����54   "   '  !MaterialDesignThemes.Wpf.PackIcon  55   &   
   Kind$
 	ArrowBack=�6>   $��22(�6O   $��40��6]   $
��Auto��6h   
�������6v   57      �� 58      $��1��6)   
����  �$��Center=�6�   $
��Bold"�6�   
�������$��20(�59   <   $��5q�6J   ��58   9   �� *	Horloge+ �� StringFormat$ dddd d MMMM - HH:mm��59   J   o� 5:      $��2��6#   
����  � � Cursor$
 Hand��6E   .@�5;   "   m� $	��...��6+   
�������$��22(�6K   .@�5<   &   m� $��Se déconnecter��6/   
������� m� Command 6Z   �� *DeconnectCommand+5=   #   5>      5?      5@      �� 5B      $��1��6    
�������
���  ��$��16(�6l   $��	20,0,20,0q�6{   $
��wrap=�6�   $��Center=�5C       $��Center=�6>   ��5B   -   �� *	Message+5C   >   � 5E      $��1��6   $��	20,0,20,0q�6(   y�6;   �� *MessagerieVisibility+ 5F      �� 5G      $
��Auto �6,   �� 5H      $��* �6,   .+�5J      �� 
����  �$��0,0,0,1q�64   ._�5K      �  5L   "   �� 5M   &   $��* �67   �� 5N   &   $
��Auto �67    5P   "   �� 5Q   &   $��40 �64   .+�5S   "   �� $��
Messagerie��6,   
����  �$��20(�6P   $��Bottom=�6^   o� 5T   "   $��1��6'   
�������$
 Hand��6J   y�6X   �� *MenuVisibility+.@�5U   &   m� $	��...��6/   
����  �$��22(�6N   .@�5V   *   m� $��Voir tous les messages��63   
����  �$��18(�6e    5W   3   �� *MessageViewCommand+5X   (   5Y   #   5Z      5[      &   System.Windows.Controls.DataGrid  5\      $��1��6#      GridLinesVisibility$
 None=�5]   #      HeadersVisibility$
 None=�6?      AutoGenerateColumns .     
IsReadOnly . "   VerticalScrollBarVisibility$ Visible=�5^   R      AlternatingRowBackground
 �����
���������5\   0   �� *MessagesCollectionView+ 6a   �� *CurrentMessage+y�5_   X   �� *MessagesVisibility+   Columns 5`      0  *System.Windows.Controls.DataGridTextColumn  5b   "      
FontWeight$ Normal"�6Q   ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6e      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *De.Nom+   
Foreground 6�   �� *	ColorEtat+  5d   "   $ Normal"�6P   $
 Auto 6d    .  65   �� *A.Nom+ 6�   �� *	ColorEtat+  5e   "   $ Normal"�6�   $
 Auto 6�    .  65   �� *DateCreation+$ dd/MM/yyy HH:mm��$ PropertyChanged=� 6�   �� *	ColorEtat+4  .System.Windows.Controls.DataGridTemplateColumn  5g   "      CellTemplate 5h   &   �� 5i   *   .R�5j   .     $��20��6F   $
��Auto��6R   
 6_   �� *
Etat.Icone+��6{   �� *Etat.Couleur+5k   +   5m   #     5n   "   $ * 69    5o   &   �� 5p   *   .R�5q   .   �� $��SemiBold"�6p   ��68   �� *Objet+��6O   �� *	ColorEtat+6p   5r   +   5t   #      	CellStyle 5v      �� 5w   "    �� 
TargetType*	  $System.Windows.Controls.DataGridCell" 	 6(   .�5x   &   ��  �� Property � �� �� Value
 �����6D   �� 5y   &    � ��$ 0q�6H   �� 5z   &    � ��$ 0q�6@   �� 5{   &    � ��$ 0q�6?   5|   #   5~      5�      5�      5�      �� 5�      $��2��6   
����  �$��1q�68   $ 15��6L   $
��Left=�6^   $	��220��6y   ._�5�      ]� $��5q�6   ��. .+�5�      �� $��Bottom=�6    $��Center=�68   $��20(�6U   $	 Nom��5�       ��5�       �� *Hotels+ 5�       �� *CurrentHotel+$ TwoWay=�$ PropertyChanged=�{�5�       �� *CanChangeUtilisateur+5�      �� 5�      $	��130��6r   $	��100��6~   ��6   �� *CurrentHotel.Image+$ TwoWay=�$ PropertyChanged=�6~   5�      5�      5�      5�      5�      