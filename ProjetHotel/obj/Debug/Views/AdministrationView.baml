   M S B A M L   `   `   `  ����J  FMakrisoft.Makfi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Makrisoft.Makfi.DalMakrisoft.Makfi.Dal  5      .    (Makrisoft.Makfi.Views.AdministrationView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      ,data!clr-namespace:Makrisoft.Makfi.Dal  5        � 	Resources  5         Menu �� 
TargetType �� Property �� Value��%�  &	        �� 5   
   " ��6   .�5      ��  � ��$ 22(�6)   �� 5       � ��
 �   �6+   �� 5       � ��$ Normal"�6+   �� 5       �@�Cursor$
 Hand��6'   �� 5       � ��
 ���� 6+   �� 5       � ��
 �   �6,   �� 5       � ��$ 10q�6'   �� 5       � ��$	 250��6&   �� 5       � ��$ 80��6'   5      5      .��5      � .+�5   
   �� 
����  �$��1q�6$    �� CornerRadius$ 10��68   $��10q�6J   ._�5      � $��Center=�6   $��Center=�6.    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $��* �6'   �� 5      $	��100 �6'   �� 5       $
��Auto �6'   �� 5!      $��* �6'    � RowDefinitions 5#      �� 5$      $��* �6$   61   �� 5%      $��* �6$   61   �� 5&      $��* �6$   61   .+�5(      '  !MaterialDesignThemes.Wpf.PackIcon  $��0��6*   $��0��67   $��30��6H   $
��Auto��6T      Kind$ Person=�6a   $��Center=�6o   �� 5)      $��0��6   $��1��6&   $��Les utilisateurs��66   #��[  6R   "   Makrisoft.Makfi.Dal.ViewEnum   Utilisateur#��Z 5*      ��5)   p   �� *ChangeViewCommand+5*        5,      $��0��6*   $��3��67   $��30��6H   $
��Auto��6T   $ Building=�6a   $��Center=�6q   �� 5-      $��0��6   $��4��6&   $��Les hôtels��66   #��[  6K   	   Hotel#��Z	 5.      ��5-   i   �� *ChangeViewCommand+5.        50      $��1��6*   $��0��67   $��30��6H   $
��Auto��6T   $
 Gear=�6a   $��Center=�6m   �� 51      $��1��6   $��1��6&   $��Les paramètres��66   #��[  6O   
   	Parametre#��Z
 52      ��51   m   �� *ChangeViewCommand+52      53      54      55      56      