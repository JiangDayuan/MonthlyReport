   M S B A M L   `   `   `  ���� H  DMonthlyReport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MonthlyReport.ViewsMonthlyReport.Views  ;"clr-namespace:MonthlyReport.ModelsMonthlyReport.Models      MonthlyReport.Views.DiDi   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:MonthlyReport.Views     4model"clr-namespace:MonthlyReport.Models     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/      MaterialDesignBody#���   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . $��Microsoft YaHei)�{���  �� Path$ UserControlEnable� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadCommand+.���� -    ��Name$ Scroll��$��Center=�$��20q�$
��Auto=�$
��Auto=���.  .��� 	 � RowDefinitions	 �� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto �.+�� $��0��
 � ColumnDefinitions
 �� $
��Auto ��� $��* �.+��� $��1�� �� Orientation$ 
Horizontal=�$��Bottom=�$
��Left=�$��0 0 0 0q�.+��� $��共有 ��$
��Left=�$��Bottom=�$��12(�$��0 0 0 5q�$��40��$��Bottom=�$��0 0 0 0q�#���   �� $
��Left=�$��Bottom=�$��14(�$��0 0 0 5q�$��40��$��Bottom=�$��0 0 0 0q����#009688$
��Bold"����� *Count+$ TwoWay=�$ PropertyChanged=��� $�� 个行程，��$
��Left=�$��Bottom=�$��12(�$��0 0 0 5q�$��40��$��Bottom=�$��0 0 0 0q�#���   �� $��总计 ��$
��Left=�$��Bottom=�$��12(�$��0 0 0 5q�$��40��$��Bottom=�$��0 0 0 0q�#���   �� $
��Left=�$��Bottom=�$��14(�$��0 0 0 5q�$��40��$��Bottom=�$��0 0 0 0q����#009688$
��Bold"����� *Amount+$ TwoWay=�$ PropertyChanged=��� $
�� 元��$
��Left=�$��Bottom=�$��12(�$��0 0 0 5q�$��40��$��Bottom=�$��0 0 0 0q�#���   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ $��25��$��25��$��Bottom=�$��20 0 0 2q� � ToolTip$$ 重新计算行程统计数据������ *CountDiDiCommand+.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Refresh=�$��20��$��20��� $��1��
 �� $��* ��� $
��Auto ��� $
��Auto �.+��� $��0��$��
0 10 10 10q�$��30�� �� 
IsReadOnly . $	��500�����#009688$��SemiBold"�$��14(����� *
FilePath+$ TwoWay=�$ PropertyChanged=��� $��1��$��
0 10 10 10q�$��30��$	��120��$��12(�$��选择滴滴行程单�� " MaterialDesignRaisedDarkButton#��[ ���� *SelectCommand+�� $��2��$��	0 10 0 10q�$��30��$��60��$��12(�$��保存��
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15�� $  MaterialDesignRaisedAccentButton#��[ $B <保存当前行程信息后，可在最后输出自律声明������ *SaveCommand+&   System.Windows.Controls.DataGrid  -     Name$ FeeGrid��$��2��$��Center=�$��	0 10 0 20q�$��13(�$
��Bold"�   CanUserSortColumns .    CanUserAddRows .    AutoGenerateColumns .  ���� *
TravelList+   ColumnHeaderStyle ��  �� 
TargetType=	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	  & "MaterialDesignDataGridColumnHeader �� BasedOn# [ .���  �� Property � �� �� Value$ Stretch=���  � ��$ Center=���  � �� �� .R��� $��14(� �� TextAlignment$ Center=�$
��Bold"�$��Microsoft YaHei)����#009688����    Columns 0
  *System.Windows.Controls.DataGridTextColumn
  ,  &System.Windows.Controls.DataGridColumn   MinWidth$ 80Q�   Header$ 星期��   
IsReadOnly .  1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	Weekday+$ TwoWay=�$ PropertyChanged=�   ElementStyle �� " ��.���  � ��$
 Left=���  � ��$ Center=���  �@��TextAlignment$
 Left=���  �@��Padding$ 0 3 5 3q���  � ��$ 13(���  � ��$ Normal"�
  $	 120Q�$ 日期�� .   �� *
Datetime+  �� StringFormat$  
yyyy/MM/dd��$ TwoWay=�$ PropertyChanged=� �� " ��.���  � ��$
 Left=���  � ��$ Center=���  �@��TextAlignment$
 Left=���  �@��Padding$ 0 3 5 3q���  � ��$ 13(���  � ��$ Normal"�
  $	 400Q�$ 起点地址�� .   �� *
StartPoint+$ TwoWay=�$ PropertyChanged=� �� " ��.���  � ��$
 Left=���  � ��$ Center=���  �@��TextAlignment$
 Left=���  �@��Padding$ 0 3 5 3q���  � ��$ 13(���  � ��$ Normal"�
  $	 130Q�$ 起点时间�� .   �� *
Datetime+$  HH:mm��$ TwoWay=�$ PropertyChanged=� �� " ��.���  � ��$
 Left=���  � ��$ Center=���  �@��TextAlignment$
 Left=���  �@��Padding$ 0 3 5 3q���  � ��$ 13(���  � ��$ Normal"�
  $	 400Q�$ 终点地址�� .   �� *
EndPoint+$ TwoWay=�$ PropertyChanged=� �� " ��.���  � ��$
 Left=���  � ��$ Center=���  �@��TextAlignment$
 Left=���  �@��Padding$ 0 3 5 3q���  � ��$ 13(���  � ��$ Normal"�
  $ 90Q�$ 	里程数�� .   �� *Miles+$ TwoWay=�$ PropertyChanged=� �� " ��.���  � ��$
 Left=���  � ��$ Center=���  �@��TextAlignment$
 Left=���  �@��Padding$ 0 3 5 3q���  � ��$ 13(���  � ��$ Normal"�
  $ 90Q�$ 费用�� .   �� *Fee+$ TwoWay=�$ PropertyChanged=� �� " ��.���  � ��$
 Left=���  � ��$ Center=���  �@��TextAlignment$
 Left=���  �@��Padding$ 0 3 5 3q���  � ��$ 13(���  � ��$ Normal"�