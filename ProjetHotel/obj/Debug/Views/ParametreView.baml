   M S B A M L   `   `   `  ����J  FMakrisoft.Makfi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:Makrisoft.Makfi.ConvertersMakrisoft.Makfi.Converters  5      9!clr-namespace:Makrisoft.Makfi.DalMakrisoft.Makfi.Dal  5      )    #Makrisoft.Makfi.Views.ParametreView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      3conv(clr-namespace:Makrisoft.Makfi.Converters  5      ,data!clr-namespace:Makrisoft.Makfi.Dal  5      .��5      �   � 	Resources  5   
      
BorderRole �� 
TargetType �� Property �� Value��%B  &	        �� 5      " ��6'   .�5      ��  � ��
 �����60   �� 5       � ��$ 1q�64   �� 5       �@��Padding$ 5q�6,   �� 5       � ��$ Center=�68   �� 5       �@��CornerRadius$ 5��61   �� 5       � ��$ 30��6*   �� 5       � ��$ 30��6+   5      5       � ColumnDefinitions 5   
   �� 5      $	��240 �6   �� 5      $��* �6   �� 5      $	��240 �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)   .+�5#   
   �� $��0��6   $��0��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�5$      �  5%      �� 5&      $��* �6'   63   �� 5'      $
��Auto �6'   66   .+�5)      �� $��Filtrer��6   $��22(�6+   
����  �$��Bottom=�6K   �� 5*      $��1��6   
������ 
������ $��1q�6\   $��Bottom=�5+   @   ��6   �� *FilterClearCommand+��5,      '  !MaterialDesignThemes.Wpf.PackIcon  5-      $��20��62   $
��Auto��6>      Kind$ CheckboxBlank=�6K   
����  �$��0,0,10,0q�6r   5/      50      51      �� 53   
   $��0��6   $��1��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�54      �  55      �� 56      $��* �6'   63   �� 57      $
��Auto �6'   66   .+�59      �� $��20(�6   $��Normal"�6*   
����  �$��Les paramètres��6P   $��Bottom=�6f   o� 5:      $��1��6    � Cursor$
 Hand��6'   $��0q�65   .@�5;      m� $	��...��6   
����  �$��16(�6>   .@�5<      m� $��Ajouter��6#   
����  � m� Command 6F   �� *UtilisateurSelectedAddCommand+m� 5=      $��	Supprimer��6#   
����  � 6H   �� *" UtilisateurSelectedDeleteCommand+5>      5?      5@      5A      �� 5C   
   $��0��6   $��2��6   
����  �$��0,0,0,1q�6A   $��5q�6[   ._�5D      � $��0��6   $��1��6     5E      �� 5F      $��* �6'   63   �� 5G      $
��Auto �6'   66   �� 5H      $
��Auto �6'   66    5J      �� 5K      6&   .+�5M      �� $��Modifier��6   $��22(�6,   
����  �$��Bottom=�6L   �� 5N      $��2��6   
������ 
������ $��1q�6\   $��Bottom=�5O   L   ��6   �� * UtilisateurModifiedSaveCommand+��5P        5Q      $��20��62   $
��Auto��6>   $ Floppy=�6K   $��0,0,10,0q�6�   ��6Y   �� *CurrentUtilisateur.SaveColor+6�   5S      5U      5V      �� 5Z   
   $��0��6   $��1��6!   
������ $��1q�6H   	 �� CornerRadius$	 10��6\   $��Right=�6n   $	��Top=�6�   $	��220��6�   5[      �� 5]   
   $��1��6   $��1��6!   
������ $��1q�6H   $	 10��6\   $��0q�6n   ._�5^      �� .��5_      �� .+�5a      �� $��
Messages :��6    $��18(�62   $��0 0 0 5q�6@   
����  �6Q   �� 5b      
 �� Orientation$
 
Horizontal=�6!   .+�5c      �� "   Makrisoft.Makfi.Dal.RoleEnum   Admin#��Z 5d   !    d� 	IsChecked 5c   $   �� *VoirMsgArchives+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5d   !   �� 5e      $&�� Voir tous les messages archivés��6$   $��10,0,0,0q�6K   $��16(�6]   5f      5g      5h      5i      �� 5k   
   $��2��6   $��1��6!   
������ $��1q�6H   $	 10��6\   $
��Left=�6n   5m      5n      5o      