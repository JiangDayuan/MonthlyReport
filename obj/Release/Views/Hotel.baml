   M S B A M L   `   `   `  ���� H  DMonthlyReport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MonthlyReport.ViewsMonthlyReport.Views  C&clr-namespace:MonthlyReport.ConvertersMonthlyReport.Converters  ;"clr-namespace:MonthlyReport.ModelsMonthlyReport.Models      MonthlyReport.Views.Hotel   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:MonthlyReport.Views     <	converter&clr-namespace:MonthlyReport.Converters     4model"clr-namespace:MonthlyReport.Models     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . $��Microsoft YaHei)�{���  �� Path$ UserControlEnable� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� � 	Resources /   )MonthlyReport.Converters.DecimalConverter   DecimalConverter��%   &	          .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadCommand+.���� -   	 ��Name$	 Scroll��$��Center=�$��20q�$
��Auto=�$
��Auto=���.  .��� 
 � RowDefinitions
 �� $
��Auto ��� $��* �.+�� $��0�� � ColumnDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �
 �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��酒店名称���� $��1��$��0��$��2��$��	0 0 10 10q�$��30�� �� 
IsReadOnly .  $	��420�����#009688$��SemiBold"�$
��Left=�$��14(����� *NewHotel.HotelName+$ TwoWay=�$ PropertyChanged=��� $��0��$��2��$��入住时间��$��20 0 0 0q�(  "System.Windows.Controls.DatePicker  $��1��$��2�����#009688$
��Left=�$	��Top=�$	��120��$��30�� � Language$ zh-CH�$��14(�$
��Bold"�$��20 0 0 0q�  MaterialDesignDatePicker#��[    Text �� $ NewHotel.CheckIn�$ TwoWay=�$ PropertyChanged=��� $��0��$��3��$��退房时间��$��20 0 0 0q�  $��1��$��3�����#009688$
��Left=�$	��Top=�$	��120��$��30��$ zh-CH�$��14(�$
��Bold"�$��20 0 0 0q�#��[  �� $ NewHotel.CheckOut�$ TwoWay=�$ PropertyChanged=��� $��2��$��0��$��预定途径��$��0 10 0 0q��� $��3��$��0��$��14(�$
��Bold"����#009688$��30��$	��200�� �� 
IsEditable .  -  'MaterialDesignThemes.Wpf.ComboBoxAssist   ClassicMode$
 True��$��0 0 0 0q�$	��Top=�$	��Top=�.	  (MaterialDesignThemes.Wpf.TextFieldAssist 	  TextBoxViewMargin$ 0 -1 0 0q����� $ Books�$ TwoWay=�$ PropertyChanged=� �� Text �� $ NewHotel.Book�$ TwoWay=�$ PropertyChanged=��� $��2��$��1��$��发票类型��$��	20 10 0 0q��� $��3��$��1��$��14(�$
��Bold"����#009688$��30��$	��200�� .  $
 True��$��20 0 0 0q�$	��Top=�$	��Top=�$ 0 -1 0 0q����� $ ReceiptTypes�$ TwoWay=�$ PropertyChanged=� �� $ NewHotel.ReceiptType�$ TwoWay=�$ PropertyChanged=��� $��2��$��2��$��发票总金额��$��	20 10 0 0q��� $��3��$��2��$��20 0 0 0q�$��30�� .  $	��120�����#009688$��SemiBold"�$
��Left=�$��14(� 	  
SuffixText$	 元������ $ NewHotel.TotalPayment�$ TwoWay=�$ PropertyChanged=� �� 	Converter# [  �� $��3��$��3��$��	20 0 10 0q�$��30��$	��120��$��12(�$��添加�� " MaterialDesignRaisedDarkButton#��[ $
��Left=�$��0q����� *
AddCommand+�� $��3��$��4��$��	20 0 10 0q�$��30��$��60��$��12(�$��保存��$��Right=�
�������+
  %MaterialDesignThemes.Wpf.ButtonAssist 
  CornerRadius$ 15�� $  MaterialDesignRaisedAccentButton#��[  � ToolTip$B <保存当前酒店信息后，可在最后输出自律声明������ *SaveCommand+�� -   $��1��$��0 20 0 0q� �� SelectedIndex$ 0��$	��250��$
��Left=�$
��Left=�$	��Top=�+  %MaterialDesignThemes.Wpf.RippleAssist   
IsDisabled . ���� $ Hotels�$ TwoWay=�$ PropertyChanged=� �� SelectedItem �� *SelectedHotel+$ TwoWay=�$ PropertyChanged=�  �� 
TargetType " MaterialDesignScrollBarMinimal �� BasedOn��%   '��       7  �� " ��8   ����  �� DataType$ model:HotelGroup��.R��� $��0 0 0 1q����#009688$��
-7 0 -7 -8q�._�� 
 �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��2��$��酒店名称��$��20 0 0 0q��� $��1��$��0��$��2��$��20 0 0 0q�$��25�� .  $	��330�����#009688$��SemiBold"�$
��Left=�$��13(����� *	HotelName+$ TwoWay=�$ PropertyChanged=��� $��2��$��0��$��发票总金额��$��	20 10 0 0q��� $��3��$��0��$��	20 0 0 10q�$��30��$	��120�����#009688$��SemiBold"�$
��Left=�$��14(�$	 元������ *TotalPayment+$ TwoWay=�$ PropertyChanged=��� $��2��$��1��$��计算总金额��$��	20 10 0 0q��� $��3��$��1��$��	20 0 0 10q�$��30��$	��120��$��SemiBold"�$
��Left=�$��14(�$	 元������ *
LinesTotal+$ TwoWay=�$ PropertyChanged=�� $��0��$��2��$��5��$��
20 0 20 10q� �� $��80 ��� $	��120 ��� $	��120 �
 �� $
��Auto ��� $��* �.+��� $��0��$��0�����#009688$��SemiBold"�$
��Left=�$��星期��$��14(��� $��0��$��1�����#009688$��SemiBold"�$
��Left=�$��日期��$��14(��� $��0��$��2�����#009688$��SemiBold"�$
��Left=�$��单天费用��$��14(��� -   $��2��$��0��$��3�� � IsSharedSizeScope . ���� *Lines+$ TwoWay=�$ PropertyChanged=����� $   MonthlyReport.Models.HotelLine"  .R���  ��Name$ Border�� �� Padding$ 0 8 0 8q�$��0 0 0 1q�  MaterialDesignDivider#���  ._��  �� $��80 ��� $	��120 ��� $	��120 �.+��� $��0��$
��Left=�$��0 4 0 0q�$��14(����� *	Weekday+$ TwoWay=�$ PropertyChanged=��� $��1��$
��Left=�$��0 4 0 0q�$��14(����� *
Datetime+  �� StringFormat$  
yyyy/MM/dd��$ TwoWay=�$ PropertyChanged=��� $��2��$
��Left=�$	��120��$	 元��$��14(����� *	Payment+$ TwoWay=�$ PropertyChanged=�.��   $ TextChanged��.    �� *DataContext.CalculateCommand+! �� RelativeSource! �� " �� AncestorType"" >�.���� $��0��$��3��$��5��$��	20 0 10 0q�$��30��$��60��$��12(�$��删除��$��Right=�
�������$ 15�����#CC4B32$��0q�#��[ ���� *DataContext.DeleteCommand+! �� "" >�