   M S B A M L   `   `   `  ����   Makrisoft.Makfi$    Makrisoft.Makfi.Views.HomeView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     b ^MaterialDesignThemes.Wpf, Version=4.0.0.2175, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  :d2http://schemas.microsoft.com/expression/blend/2008    � 	Resources     Menu �� 
TargetType �� Property �� Value��%�   &	        �� " ��.���  � ��$ 22(���  � ��
 ��  ���  � ��$ Normal"���  �@�Cursor$
 Hand����  � ��
 ���� ��  � ��
 ��  ���  � ��$ 10q���  � ��$	 250����  � ��$ 80��.��� .+��� 
����  �$��1q� �� CornerRadius$ 10��$��10q�._�� $��Center=�$��Center=� � ColumnDefinitions �� $
��Auto ��� $��* ��� $	��100 ��� $
��Auto ��� $��* � � RowDefinitions �� $��* ��� $��* ��� $��* �.+�'  !MaterialDesignThemes.Wpf.PackIcon  $��0��$��0��$��30��$
��Auto��   Kind$ ViewDay=�
����  �$��Center=��� $��0��$��1��$��Intervention du jour��#��[  ���� *ChangeViewCommand+  $��0��$��3��$��30��$
��Auto��$	 Bed=�
����  �$��Center=��� $��0��$��4��$��Les chambres��#��[  ���� *ChangeViewCommand+  $��1��$��0��$��30��$
��Auto��$ ViewHeadline=�
����  �$��Center=��� $��1��$��1��$��Les interventions��#��[  ���� *ChangeViewCommand+  $��1��$��3��$��30��$
��Auto��$ 	FaceWoman=�
����  �$��Center=��� $��1��$��4��$��Les employées��#��[  ���� *ChangeViewCommand+  $��2��$��0��$��30��$
��Auto��$ 
Calculator=�
����  �$��Center=��� $��2��$��1��$��Synthèse mensuelle��#��[  ���� *ChangeViewCommand+  $��2��$��3��$��30��$
��Auto��$
 Lock=�
����  �$��Center=��� $��2��$��4��$��Privé��#��[  ���� *ChangeViewCommand+{��� *.,Header_ViewModel.UtilisateurSelected.IsAdmin+