   M S B A M L   `   `   `  ����H  DMonthlyReport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MonthlyReport.ViewsMonthlyReport.Views  5      C&clr-namespace:MonthlyReport.ConvertersMonthlyReport.Converters  5      ;"clr-namespace:MonthlyReport.ModelsMonthlyReport.Models  5	      '    !MonthlyReport.Views.Configuration   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:MonthlyReport.Views     5      <	converter&clr-namespace:MonthlyReport.Converters     5      4model"clr-namespace:MonthlyReport.Models     5	      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . $��Microsoft YaHei)�5   8   {�5      ��  �� Path$ UserControlEnable� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadCommand+5      .��5      �� -   5         ��Name$ Scroll��5      $��Center=�6#   $��20q�6@   $
��Auto=�6L   $
��Auto=�6q   ��.  .��5   
   � 	 � RowDefinitions	 5      �� 5      $
��Auto �6    �� 5      $��* �6    
 � ColumnDefinitions
 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   .+�5       �� $��0��6   $��0��6"   $��1 0 0 20q�62   $��30��6D   $��60��6P   $��12(�6[   $��保存��6i   $
��Left=�6v   
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15��5!   H    $   MaterialDesignRaisedAccentButton#��[  5"       � ToolTip$ 保存配置��6O   ��5!   (   �� *SaveCommand+5"   O   �� 5$      $��1��6   $��0��6&   .+�5%      ��  �� Orientation$ 
Horizontal=�6   .+�5&      �� $
��Left=�6   $��
日期列:��67   $��Right=�6F   $��Bottom=�6i   $	��120��6�   �� 5'      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�    �� TextWrapping$
 Wrap=�6�   ���#009688��69   �� *Config.Date+$ TwoWay=�$ PropertyChanged=�6�   5(      �� 5)      $ 
Horizontal=�6   .+�5*      �� $
��Left=�6   $��
星期列:��67   $��Right=�6F   $��Bottom=�6i   $	��120��6�   �� 5+      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.Week+$ TwoWay=�$ PropertyChanged=�6�   5,      �� 5-      $ 
Horizontal=�6   .+�5.      �� $
��Left=�6   $��工作对应Ticket列:��67   $��Right=�6N   $��Bottom=�6q   $	��120��6�   �� 5/      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.Ticket+$ TwoWay=�$ PropertyChanged=�6�   50      �� 51      $ 
Horizontal=�6   .+�52      �� $
��Left=�6   $��
汇报列:��67   $��Right=�6F   $��Bottom=�6i   $	��120��6�   �� 53      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.Diary+$ TwoWay=�$ PropertyChanged=�6�   54      �� 55      $ 
Horizontal=�6   .+�56      �� $
��Left=�6   $��
序号列:��67   $��Right=�6F   $��Bottom=�6i   $	��120��6�   �� 57      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.Index+$ TwoWay=�$ PropertyChanged=�6�   58      �� 59      $ 
Horizontal=�6   .+�5:      �� $
��Left=�6   $��起点地址列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5;      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.TaxiStart+$ TwoWay=�$ PropertyChanged=�6�   5<      �� 5=      $ 
Horizontal=�6   .+�5>      �� $
��Left=�6   $��起点时间列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5?      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.TaxiTime+$ TwoWay=�$ PropertyChanged=�6�   5@      �� 5A      $ 
Horizontal=�6   .+�5B      �� $
��Left=�6   $��终点地址列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5C      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.TaxiEnd+$ TwoWay=�$ PropertyChanged=�6�   5D      �� 5E      $ 
Horizontal=�6   .+�5F      �� $
��Left=�6   $��打车方式列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5G      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.PayMethod+$ TwoWay=�$ PropertyChanged=�6�   5H      �� 5I      $ 
Horizontal=�6   .+�5J      �� $
��Left=�6   $��打车公里列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5K      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.TaxiMile+$ TwoWay=�$ PropertyChanged=�6�   5L      �� 5M      $ 
Horizontal=�6   .+�5N      �� $
��Left=�6   $��打车费用列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5O      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *
Config.Fee+$ TwoWay=�$ PropertyChanged=�6�   5P      �� 5Q      $ 
Horizontal=�6   .+�5R      �� $
��Left=�6   $��旅馆名列:��67   $��Right=�6G   $��Bottom=�6j   $	��120��6�   �� 5S      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.HotelName+$ TwoWay=�$ PropertyChanged=�6�   5T      �� 5U      $ 
Horizontal=�6   .+�5V      �� $
��Left=�6   $��旅馆预定途径列:��67   $��Right=�6J   $��Bottom=�6m   $	��120��6�   �� 5W      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.Book+$ TwoWay=�$ PropertyChanged=�6�   5X      �� 5Y      $ 
Horizontal=�6   .+�5Z      �� $
��Left=�6   $��旅馆费用列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5[      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.Payment+$ TwoWay=�$ PropertyChanged=�6�   5\      �� 5]      $ 
Horizontal=�6   .+�5^      �� $
��Left=�6   $��发票类型列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5_      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.Reciept+$ TwoWay=�$ PropertyChanged=�6�   5`      �� 5a      $ 
Horizontal=�6   .+�5b      �� $
��Left=�6   $��出差津贴列:��67   $��Right=�6H   $��Bottom=�6k   $	��120��6�   �� 5c      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.Allowance+$ TwoWay=�$ PropertyChanged=�6�   5d      5e      �� 5g      $��1��6   $��1��6&   $��50 0 0 0q�66   .+�5h      �� $ 
Horizontal=�6   .+�5i      �� $
��Left=�6   $"��打车支付方式默认值:��67   $��Right=�6L   $��Bottom=�6o   $	��120��6�   �� 5j      $
��Left=�6   $��10 0 0 0q�6�   $	��250��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.TaxiDefault+$ TwoWay=�$ PropertyChanged=�6�   5k      �� 5l      $ 
Horizontal=�6   .+�5m      �� $
��Left=�6   $��每天行数:��67   $��Right=�6G   $��Bottom=�6j   $	��120��6�   �� 5n      $
��Left=�6   $��10 0 0 0q�6�   $��50��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688��69   �� *Config.RowCount+$ TwoWay=�$ PropertyChanged=�6�   5o      �� 5p      $ 
Horizontal=�6   .+�5q      �� $
��Left=�6   $��汇报模板:��67   $��Right=�6G   $��Bottom=�6j   $	��120��6�   �� 5r      $
��Left=�6   $��10 5 3 0q�6�   $	��250��6�   $��Black"�6�   $��14(�6�   $
 Wrap=�6�   ���#009688 �� AcceptsReturn . " �� VerticalScrollBarVisibility$
 Auto=�5s   3   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasOutlinedTextField .    DecorationVisibility$ 	Collapsed=�6�      TextFieldCornerRadius$ 4��5t      ��5r   9   �� *Config.DiaryDefault+$ TwoWay=�$ PropertyChanged=�5t      5u      5v      5w      5x      5y      