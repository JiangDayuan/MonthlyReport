   M S B A M L   `   `   `  ���� H  DMonthlyReport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MonthlyReport.ViewsMonthlyReport.Views  C&clr-namespace:MonthlyReport.ConvertersMonthlyReport.Converters  ;"clr-namespace:MonthlyReport.ModelsMonthlyReport.Models       MonthlyReport.Views.Report   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:MonthlyReport.Views     <	converter&clr-namespace:MonthlyReport.Converters     4model"clr-namespace:MonthlyReport.Models     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . $��Microsoft YaHei)�{���  �� Path$ UserControlEnable� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� � 	Resources /   )MonthlyReport.Converters.DecimalConverter   DecimalConverter��%   &	          .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadCommand+.��� $��Center=�$��20q�	 � RowDefinitions	 �� $
��Auto ��� $
��Auto ��� $��* �
 � ColumnDefinitions
 �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �.+��� $��0��$��0��.+��� $��请输入报销年份：��$
��Left=�$��Bottom=�$��12(�$��0 0 0 5q�$��Bottom=�$��0 0 0 0q�  MaterialDesignBody#���  �� $��30�� �� 
IsReadOnly .  $	��120�����#009688$��SemiBold"�$
��Left=�$��14(�.  (MaterialDesignThemes.Wpf.TextFieldAssist   
SuffixText$	 年������ $ SelectedYear�$ TwoWay=�$ PropertyChanged=��� $��1��$��0��.+��� $��请选择报销月份：��$
��Left=�$��Bottom=�$��12(�$��0 0 0 5q�$��Bottom=�$��20 0 0 0q�#���  ��    DecorationVisibility$ 	Collapsed=�$	 月��$��20 0 0 0q����#009688$��Bottom=� �� 
IsEditable .  $��90��$
��Left=�$��14(�$��Black"����� $ 	MonthList�$ TwoWay=�$ PropertyChanged=� �� Text �� $ SelectedMonth�$ TwoWay=�$ PropertyChanged=��� $��0��$��2��$��	20 0 10 0q�$��30��$	��120��$��12(�$��刷新月报预览�� " MaterialDesignRaisedDarkButton#��[ $
��Left=�$��Bottom=�$��0q����� *RefreshCommand+�� $��0��$��3��$��	50 0 10 0q�$��30��$	��100��$��12(�$��生成月报��$
��Left=�
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15��$��Bottom=� $  MaterialDesignRaisedAccentButton#��[  � ToolTip$B <保存当前行程信息后，可在最后输出自律声明������ *	GoCommand+�� $ 	Collapsed=�$��1��$��0��$��0 10 0 0q����#009688$��Bottom=� .  $	��150��$
��Left=�$��14(�$��Black"����� $ 
TicketList�$ TwoWay=�$ PropertyChanged=� �� $ SelectedTicket�$ TwoWay=�$ PropertyChanged=��� $��1��$��1��$��3��$
��Left=�$��Bottom=� �� Orientation$ 
Horizontal=�.+��� $��	30 0 10 0q�$��30��$	��120��$��12(�$��填写Ticket类型��
�������  MaterialDesignRaisedButton#��[ ���� *InputCommand+�� $��30 0 0 0q�$��30��$��50��$��12(�$��全选��$��0q�   MaterialDesignOutlinedButton#��[ ���� *AllCheckCommand+�� $��0 0 0 0q�$��30��$��50��$��12(�$��	全不选��$��0q�#��[ ���� *AllUncheckCommand+�� $��0 0 0 0q�$��30��$��50��$��12(�$��	双休日��$��0q�#��[ ���� *WeekendCheckCommand+�� -    ��Name$ Scroll��$��2��$��0��$��4��$��	0 20 0 20q�$
��Auto=�$
��Auto=���.  .���� -   $��1��$��0q� �� SelectedIndex$ 0��$	��310��$
��Left=�$
��Left=�$	��Top=�+	  %MaterialDesignThemes.Wpf.RippleAssist 	  
IsDisabled .  �� SelectionMode$ Single=����� $ ReportLines�$ TwoWay=�$ PropertyChanged=� �� SelectedItem �� *SelectedLines+$ TwoWay=�$ PropertyChanged=�����  �� DataType$ model:ReportLine��.R��� $��0 0 0 1q� �� Padding$ 0 8 0 8q����#009688$��
-7 0 -7 -8q�._�� 	 �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �
 �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��60��$��40��$��Center=�$��0q�$��0q� d� 	IsChecked �� *
IsSelected+$ TwoWay=�$ PropertyChanged=��� $��0��$��1��$��0 0 0 5q����#009688���� *
Datetime+$ TwoWay=�$ PropertyChanged=� �� StringFormat$ dd���� $��0��$��2��$��10 0 0 5q����#009688���� *	Weekday+$ TwoWay=�$ PropertyChanged=��� $��0��$��3��$��80��$��10 0 0 5q����#009688���� *Ticket+$ TwoWay=�$ PropertyChanged=��� -   $��0��$��4��$��	20 -7 0 0q�$	��Top=�$	��320�� � IsSharedSizeScope . ���� *Taxis+$ TwoWay=�$ PropertyChanged=����� #
   MonthlyReport.Models.DiDiLine" 
 .R���  ��Name$ Border��$ 0 8 0 8q�$��0 0 0 1q�  MaterialDesignDivider#���  ._�� 
 �� $
��Auto �	 �� $
��Auto ��� $
��Auto ��� $��* �.+��� $��0��$��0��$ 
Horizontal=�.+��� $
��Left=�$
��从 ��
��������� $
��Left=�$	��250��$
��Wrap=����#009688���� *
StartPoint+$ TwoWay=�$ PropertyChanged=��� $��0��$��1��$ 
Horizontal=�.+��� $
��Left=�$
��到 ��
��������� $
��Left=�$	��250��$
��Wrap=����#009688���� *
EndPoint+$ TwoWay=�$ PropertyChanged=��� $��0��$��3��$ 
Horizontal=�.+��� $
��Left=�$��里程: ��
��������� $
��Left=����#009688���� *Miles+$ TwoWay=�$ PropertyChanged=��� $
��Left=�$��金额: ��
�������$��20 0 0 0q��� $
��Left=����#009688���� *Fee+$ TwoWay=�$ PropertyChanged=��� $��0��$��5��$��20 0 0 0q�.+�� 	 �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$ 
Horizontal=�.+��� $
��Left=�$��酒店名: ��
��������� $
��Left=�$	��200��$
��Wrap=����#009688���� *	HotelName+$ TwoWay=�$ PropertyChanged=��� $��0��$��1��$ 
Horizontal=�.+��� $
��Left=����#009688���� *Book+$ TwoWay=�$ PropertyChanged=��� $
��Left=�$
��Wrap=����#009688$��20 0 0 0q����� *ReceiptType+$ TwoWay=�$ PropertyChanged=��� $��0��$��2��$ 
Horizontal=�.+��� $
��Left=�$��金   额: ��
��������� $
��Left=�$
��Wrap=����#009688���� *	Payment+$ TwoWay=�$ PropertyChanged=�����  �� 
TargetType" � �� Triggers ��   �� Binding  �� *	Payment+$ TwoWay=�$ PropertyChanged=�! �� Value! 0.a��� " �� Property" � y�# �� Value$# Hidden=��� $��0��$��6��$��	20 0 20 0q�.+��� $
��Left=�$��出差补贴: ��
��������� $��30�� .  $��50�����#009688$
��Left=�$��12(�$	 元������ $ 	Allowance�$ TwoWay=�$ PropertyChanged=�