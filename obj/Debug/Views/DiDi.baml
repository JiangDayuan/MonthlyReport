   M S B A M L   `   `   `  ����H  DMonthlyReport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MonthlyReport.ViewsMonthlyReport.Views  5      ;"clr-namespace:MonthlyReport.ModelsMonthlyReport.Models  5	          MonthlyReport.Views.DiDi   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:MonthlyReport.Views     5      4model"clr-namespace:MonthlyReport.Models     5	      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5         MaterialDesignBody#���   5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . $��Microsoft YaHei)�5   8   {�5      ��  �� Path$ UserControlEnable� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadCommand+5      .��5      �� -   5         ��Name$ Scroll��5      $��Center=�6#   $��20q�6@   $
��Auto=�6L   $
��Auto=�6q   ��.  .��5   
   � 	 � RowDefinitions	 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $��* �6    �� 5      $
��Auto �6    .+�5      � $��0��6   
 � ColumnDefinitions
 5      �� 5       $
��Auto �6'   �� 5!      $��* �6'   .+�5%      �� $��1��6    �� Orientation$ 
Horizontal=�6-   $��Bottom=�6F   $
��Left=�6a   $��0 0 0 0q�6|   .+�5&      �� $��共有 ��6   $
��Left=�6*   $��Bottom=�6E   $��12(�6`   $��0 0 0 5q�5'      $��40��6.   $��Bottom=�6:   $��0 0 0 0q�6\   #���   6m   �� 5(      $
��Left=�6h   $��Bottom=�6�   $��14(�6�   $��0 0 0 5q�5)      $��40��6.   $��Bottom=�6:   $��0 0 0 0q�6\   ���#009688$
��Bold"�6�   ��5(      �� *Count+$ TwoWay=�$ PropertyChanged=�5)   �   �� 5*      $�� 个行程，��6   $
��Left=�6,   $��Bottom=�6G   $��12(�6b   $��0 0 0 5q�5+      $��40��6.   $��Bottom=�6:   $��0 0 0 0q�6\   #���   6m   �� 5,      $��总计 ��6   $
��Left=�6*   $��Bottom=�6E   $��12(�6`   $��0 0 0 5q�5-      $��40��6.   $��Bottom=�6:   $��0 0 0 0q�6\   #���   6m   �� 5.      $
��Left=�6i   $��Bottom=�6�   $��14(�6�   $��0 0 0 5q�5/      $��40��6.   $��Bottom=�6:   $��0 0 0 0q�6\   ���#009688$
��Bold"�6�   ��5.      �� *Amount+$ TwoWay=�$ PropertyChanged=�5/   �   �� 50      $
�� 元��6   $
��Left=�6)   $��Bottom=�6D   $��12(�6_   $��0 0 0 5q�51      $��40��6.   $��Bottom=�6:   $��0 0 0 0q�6\   #���   6m   �� 53       . *MaterialDesignFloatingActionMiniDarkButton#��[ 6   $��25��6a   $��25��6l   $��Bottom=�6x   $��20 0 0 2q�6�    � ToolTip$$ 重新计算行程统计数据��54      ��62   �� *CountDiDiCommand+.��55      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Refresh=�56      $��20��57      $��20��58      59      5:      5;      � 5>      $��1��6   
 5?      �� 5@      $��* �6'   �� 5A      $
��Auto �6'   �� 5B      $
��Auto �6'   .+�5D      �� $��0��6   $��
0 10 10 10q�6*   $��30��6>    �� 
IsReadOnly . $	��500��6\   ���#009688$��SemiBold"�6�   $��14(�6�   ��5E      �� *
FilePath+$ TwoWay=�$ PropertyChanged=��� 5F      $��1��6   $��
0 10 10 10q�6*   $��30��6>   $	��120��6J   $��12(�6V   $��选择滴滴行程单��6d    " MaterialDesignRaisedDarkButton#��[ 5G      ��5F   v   �� *SelectCommand+5G      �� 5H      $��2��6   $��	0 10 0 10q�6*   $��30��6=   $��60��6I   $��12(�6T   $��保存��6b   
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15��5I   M    $  MaterialDesignRaisedAccentButton#��[ 5J      $B <保存当前行程信息后，可在最后输出自律声明��6T   ��5I   -   �� *SaveCommand+5J   T   5K      &   System.Windows.Controls.DataGrid  5M      -   5          Name$ FeeGrid��5O      $��2��5M      $��Center=�5N      $��	0 10 0 20q�5P      $��13(�5Q      $
��Bold"�5R         CanUserSortColumns .    CanUserAddRows .    AutoGenerateColumns .  ��5S      �� *
TravelList+   ColumnHeaderStyle 5X      �� 5Y       �� 
TargetType=	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	 6    & "MaterialDesignDataGridColumnHeader �� BasedOn# [ 6G   .�5Z      ��  �� Property � �� �� Value$ Stretch=�6@   �� 5[       � ��$ Center=�6>   �� 5\       � �� 5]      �� 5^   "   .R�5_   &   �� $��14(�60    �� TextAlignment$ Center=�6O   $
��Bold"�6f   $��Microsoft YaHei)�5`   0   ���#009688��5_   >   �� 5`   M   5a   #   5c      5d         Columns 5f      0
  *System.Windows.Controls.DataGridTextColumn
  5g      ,  &System.Windows.Controls.DataGridColumn   MinWidth$ 80Q�6)      Header$ 星期��67      
IsReadOnly .  1  +System.Windows.Controls.DataGridBoundColumn   Binding 6C   �� *	Weekday+$ TwoWay=�$ PropertyChanged=�   ElementStyle 5h      �� 5i      " ��6$   .�5j   "   ��  � ��$
 Left=�6H   �� 5k   "    � ��$ Center=�6F   �� 5l   "    �@��TextAlignment$
 Left=�6B   �� 5m   "    �@��Padding$ 0 3 5 3q�6<   �� 5n   "    � ��$ 13(�6=   �� 5o   "    � ��$ Normal"�6?   5p      5r      
  5s      $	 120Q�6)   $ 日期��68    .   6D   �� *
Datetime+  �� StringFormat$  
yyyy/MM/dd��$ TwoWay=�$ PropertyChanged=� 5t      �� 5u      " ��6$   .�5v   "   ��  � ��$
 Left=�6H   �� 5w   "    � ��$ Center=�6F   �� 5x   "    �@��TextAlignment$
 Left=�6B   �� 5y   "    �@��Padding$ 0 3 5 3q�6<   �� 5z   "    � ��$ 13(�6=   �� 5{   "    � ��$ Normal"�6?   5|      5~      
  5      $	 400Q�6)   $ 起点地址��68    .   6F   �� *
StartPoint+$ TwoWay=�$ PropertyChanged=� 5�      �� 5�      " ��6$   .�5�   "   ��  � ��$
 Left=�6H   �� 5�   "    � ��$ Center=�6F   �� 5�   "    �@��TextAlignment$
 Left=�6B   �� 5�   "    �@��Padding$ 0 3 5 3q�6<   �� 5�   "    � ��$ 13(�6=   �� 5�   "    � ��$ Normal"�6?   5�      5�      
  5�      $	 130Q�6)   $ 起点时间��68    .   6F   �� *
Datetime+$  HH:mm��$ TwoWay=�$ PropertyChanged=� 5�      �� 5�      " ��6$   .�5�   "   ��  � ��$
 Left=�6H   �� 5�   "    � ��$ Center=�6F   �� 5�   "    �@��TextAlignment$
 Left=�6B   �� 5�   "    �@��Padding$ 0 3 5 3q�6<   �� 5�   "    � ��$ 13(�6=   �� 5�   "    � ��$ Normal"�6?   5�      5�      
  5�      $	 400Q�6)   $ 终点地址��68    .   6F   �� *
EndPoint+$ TwoWay=�$ PropertyChanged=� 5�      �� 5�      " ��6$   .�5�   "   ��  � ��$
 Left=�6H   �� 5�   "    � ��$ Center=�6F   �� 5�   "    �@��TextAlignment$
 Left=�6B   �� 5�   "    �@��Padding$ 0 3 5 3q�6<   �� 5�   "    � ��$ 13(�6=   �� 5�   "    � ��$ Normal"�6?   5�      5�      
  5�      $ 90Q�6)   $ 	里程数��67    .   6D   �� *Miles+$ TwoWay=�$ PropertyChanged=� 5�      �� 5�      " ��6$   .�5�   "   ��  � ��$
 Left=�6H   �� 5�   "    � ��$ Center=�6F   �� 5�   "    �@��TextAlignment$
 Left=�6B   �� 5�   "    �@��Padding$ 0 3 5 3q�6<   �� 5�   "    � ��$ 13(�6=   �� 5�   "    � ��$ Normal"�6?   5�      5�      
  5�      $ 90Q�6)   $ 费用��67    .   6C   �� *Fee+$ TwoWay=�$ PropertyChanged=� 5�      �� 5�      " ��6$   .�5�   "   ��  � ��$
 Left=�6H   �� 5�   "    � ��$ Center=�6F   �� 5�   "    �@��TextAlignment$
 Left=�6B   �� 5�   "    �@��Padding$ 0 3 5 3q�6<   �� 5�   "    � ��$ 13(�6=   �� 5�   "    � ��$ Normal"�6?   5�      5�      5�      5�      5�      5�      