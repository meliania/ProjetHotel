   M S B A M L   `   `   `  ����J  FMakrisoft.Makfi, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Makrisoft.Makfi.DalMakrisoft.Makfi.Dal  5      $    Makrisoft.Makfi.Views.HomeView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      ,data!clr-namespace:Makrisoft.Makfi.Dal  5        � 	Resources  5
         Menu �� 
TargetType �� Property �� Value��%�  &	        �� 5   
   " ��6   .�5      ��  � ��$ 22(�6)   �� 5       � ��
 ��  �6+   �� 5       � ��$ Normal"�6+   �� 5       �@�Cursor$
 Hand��6'   �� 5       � ��
 ���� 6+   �� 5       � ��
 ��  �6,   �� 5       � ��$ 10q�6'   �� 5       � ��$	 250��6&   �� 5       � ��$ 80��6'   5      5      .��5      � .+�5   
   �� 
����  �$��1q�6$    �� CornerRadius$ 10��68   $��10q�6J   ._�5      � $��Center=�6   $��Center=�6.    � ColumnDefinitions 5      �� 5      $
��Auto �6'   �� 5      $��* �6'   �� 5      $	��100 �6'   �� 5      $
��Auto �6'   �� 5       $��* �6'    � RowDefinitions 5"      �� 5#      $��* �6$   61   �� 5$      $��* �6$   61   �� 5%      $��* �6$   61   .+�5(      �� $��0��6   $��0��6*   $��28(�6^   
����  �$��Center=�6~   $��Center=�6�   ��6;   �� *NIntervNonTermine+6�   �� 5*      $��0��6   $��1��6&   #��[  5+      "   Makrisoft.Makfi.Dal.ViewEnum   InterventionDetail#��Z 5,      ��5-      �� *ChangeViewCommand+{�5.      �� *	WithHotel+.��54      � 
������  55      �� 56      $	��200 �6/   �� 57      $
��Auto �6/    59      �� 5:      $
��Auto �6,   �� 5;      $��* �6,   .+�5=      �� $��0��6$   $��0��61   $��2��6A   $��22(�6s   $��Center=�6�   ��6U   �� *EtatControle+6�   �� 5>      $��1��6$   $��0��61   $��2��6A   $��12(�6U   $��Bottom=�6c   $��Center=�6~   �� 5?      �6#   �� *DerniereIntervention+ �� Mode$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=�5@      5A      5C      '  !MaterialDesignThemes.Wpf.PackIcon  5F      $��0��6*   $��3��67   $��30��6H   $
��Auto��6T   
   Kind$	
 Bed=�6a   
����  �$��Center=�6~   �� 5G      $��0��6   $��4��6&   $��Les chambres��66   #��[  5H         Chambre#��Z 5I      ��5J      �� *ChangeViewCommand+{�5K      �� *	WithHotel+  5N      $��1��6*   $��0��67   $��30��6G   $
��Auto��6S   $
 ViewHeadline=�6`   
����  �$��Center=�6�   �� 5O      $��1��6   $��1��6&   $��Les interventions��66   #��[  5P         Intervention#��Z 5Q      ��5R      �� *ChangeViewCommand+{�5S      �� *	WithHotel+  5V      $��1��6*   $��3��67   $��30��6G   $
��Auto��6S   $
 	FaceWoman=�6`   
����  �$��Center=�6�   �� 5W      $��1��6   $��4��6&   $��Les employées��66   #��[  5X         Employe#��Z 5Y      ��5Z      �� *ChangeViewCommand+{�5[      �� *	WithHotel+  5]      $��2��6*   $��0��67   $��30��6G   $
��Auto��6S   $
 
Calculator=�6`   
����  �$��Center=�6�   �� 5^      $��2��6   $��1��6&   $��Synthèse mensuelle��66   #��[  5_      ��5`      �� *ChangeViewCommand+{�5a      �� *	WithHotel+  5d      $��2��6*   $��3��67   $��30��6G   $
��Auto��6S   $

 Lock=�6`   
����  �$��Center=�6   �� 5e      $��2��6   $��4��6&   $��Privé��66   #��[  6F      Administration#��Z 5g      ��5f      �� *ChangeViewCommand+{�5h      �� *	IsAdmin+5i      5j      5k      5l      