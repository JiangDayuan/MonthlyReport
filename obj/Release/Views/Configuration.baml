   M S B A M L   `   `   `  ���� H  DMonthlyReport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MonthlyReport.ViewsMonthlyReport.Views  C&clr-namespace:MonthlyReport.ConvertersMonthlyReport.Converters  ;"clr-namespace:MonthlyReport.ModelsMonthlyReport.Models  '    !MonthlyReport.Views.Configuration   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:MonthlyReport.Views     <	converter&clr-namespace:MonthlyReport.Converters     4model"clr-namespace:MonthlyReport.Models     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . $��Microsoft YaHei)�{���  �� Path$ UserControlEnable� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadCommand+.���� -    ��Name$ Scroll��$��Center=�$��20q�$
��Auto=�$
��Auto=���.  .��� 	 � RowDefinitions	 �� $
��Auto ��� $��* �
 � ColumnDefinitions
 �� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��1 0 0 20q�$��30��$��60��$��12(�$��保存��$
��Left=�
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15�� $   MaterialDesignRaisedAccentButton#��[   � ToolTip$ 保存配置������ *SaveCommand+�� $��1��$��0��.+���  �� Orientation$ 
Horizontal=�.+��� $
��Left=�$��
日期列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(� �� TextWrapping$
 Wrap=����#009688���� *Config.Date+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��
星期列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.Week+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��工作对应Ticket列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.Ticket+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��
汇报列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.Diary+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��
序号列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.Index+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��起点地址列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.TaxiStart+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��起点时间列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.TaxiTime+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��终点地址列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.TaxiEnd+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��打车方式列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.PayMethod+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��打车公里列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.TaxiMile+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��打车费用列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *
Config.Fee+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��旅馆名列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.HotelName+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��旅馆预定途径列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.Book+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��旅馆费用列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.Payment+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��发票类型列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.Reciept+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��出差津贴列:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.Allowance+$ TwoWay=�$ PropertyChanged=��� $��1��$��1��$��50 0 0 0q�.+��� $ 
Horizontal=�.+��� $
��Left=�$"��打车支付方式默认值:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$	��250��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.TaxiDefault+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��每天行数:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 0 0 0q�$��50��$��Black"�$��14(�$
 Wrap=����#009688���� *Config.RowCount+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $
��Left=�$��汇报模板:��$��Right=�$��Bottom=�$	��120���� $
��Left=�$��10 5 3 0q�$	��250��$��Black"�$��14(�$
 Wrap=����#009688 �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�.  (MaterialDesignThemes.Wpf.TextFieldAssist   HasOutlinedTextField .    DecorationVisibility$ 	Collapsed=�   TextFieldCornerRadius$ 4������ *Config.DiaryDefault+$ TwoWay=�$ PropertyChanged=�