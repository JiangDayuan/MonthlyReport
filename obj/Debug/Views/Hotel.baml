   M S B A M L   `   `   `  ����H  DMonthlyReport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MonthlyReport.ViewsMonthlyReport.Views  5      C&clr-namespace:MonthlyReport.ConvertersMonthlyReport.Converters  5      ;"clr-namespace:MonthlyReport.ModelsMonthlyReport.Models  5	          MonthlyReport.Views.Hotel   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:MonthlyReport.Views     5      <	converter&clr-namespace:MonthlyReport.Converters     5      4model"clr-namespace:MonthlyReport.Models     5	      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . $��Microsoft YaHei)�5   8   {�5      ��  �� Path$ UserControlEnable� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� � 	Resources 5      /   )MonthlyReport.Converters.DecimalConverter   DecimalConverter��%   &	          5   
   6%   5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadCommand+5      .��5      �� -   5        	 ��Name$	 Scroll��5      $��Center=�6#   $��20q�6@   $
��Auto=�6L   $
��Auto=�6q   ��.  .��5   
   � 
 � RowDefinitions
 5      �� 5      $
��Auto �6    �� 5      $��* �6    .+�5!      � $��0��6    � ColumnDefinitions 5"      �� 5#      $
��Auto �6'   �� 5$      $
��Auto �6'   �� 5%      $
��Auto �6'   �� 5&      $
��Auto �6'   �� 5'      $
��Auto �6'   
 5)      �� 5*      $
��Auto �6$   �� 5+      $
��Auto �6$   �� 5,      $
��Auto �6$   �� 5-      $
��Auto �6$   .+�5/      �� $��0��6   $��0��6)   $��酒店名称��69   �� 50      $��1��6   $��0��6'   $��2��67   $��	0 0 10 10q�6K   $��30��6^    �� 
IsReadOnly .  $	��420��6}   ���#009688$��SemiBold"�6�   $
��Left=�6�   $��14(�51   p   ��6   �� *NewHotel.HotelName+$ TwoWay=�$ PropertyChanged=�6p   �� 53      $��0��6   $��2��6)   $��入住时间��69   $��20 0 0 0q�6E   (  "System.Windows.Controls.DatePicker  54      $��1��6   $��2��6*   ���#009688$
��Left=�6O   $	��Top=�6q   $	��120��6�   $��30��6�    � Language$ zh-CH�6�   $��14(�55   v   $
��Bold"�6�   $��20 0 0 0q�6�     MaterialDesignDatePicker#��[ 56         Text 55      �� $ NewHotel.CheckIn�$ TwoWay=�$ PropertyChanged=�57      �� 59      $��0��6   $��3��6)   $��退房时间��69   $��20 0 0 0q�6E     5:      $��1��6   $��3��6*   ���#009688$
��Left=�6O   $	��Top=�6q   $	��120��6�   $��30��6�   $ zh-CH�6�   $��14(�5;   w   $
��Bold"�6�   $��20 0 0 0q�6�   #��[ 5<       5;      �� $ NewHotel.CheckOut�$ TwoWay=�$ PropertyChanged=�5=      �� 5?      $��2��6   $��0��6)   $��预定途径��69   $��0 10 0 0q�6E   �� 5@      $��3��6   $��0��6(   $��14(�68   $
��Bold"�6F   ���#009688$��30��6m   $	��200��6y    �� 
IsEditable .  -  'MaterialDesignThemes.Wpf.ComboBoxAssist   ClassicMode$
 True��5A   .   $��0 0 0 0q�6_   $	��Top=�5D      $	��Top=�5E      .	  (MaterialDesignThemes.Wpf.TextFieldAssist 	  TextBoxViewMargin$ 0 -1 0 0q�5F      ��5B      �� $ Books�$ TwoWay=�$ PropertyChanged=� �� Text 5C      �� $ NewHotel.Book�$ TwoWay=�$ PropertyChanged=�5G      �� 5H      $��2��6   $��1��6)   $��发票类型��69   $��	20 10 0 0q�6E   �� 5I      $��3��6   $��1��6(   $��14(�68   $
��Bold"�6F   ���#009688$��30��6m   $	��200��6y    .  $
 True��5J   .   $��20 0 0 0q�6_   $	��Top=�5M      $	��Top=�5N      $ 0 -1 0 0q�5O      ��5K      �� $ ReceiptTypes�$ TwoWay=�$ PropertyChanged=� 5L      �� $ NewHotel.ReceiptType�$ TwoWay=�$ PropertyChanged=�5P      �� 5R      $��2��6   $��2��6)   $��发票总金额��69   $��	20 10 0 0q�6F   �� 5S      $��3��6   $��2��6'   $��20 0 0 0q�67   $��30��6I    .  $	��120��6h   ���#009688$��SemiBold"�6�   $
��Left=�6�   $��14(�5T   �    	  
SuffixText$	 元��6�   ��6   �� $ NewHotel.TotalPayment�$ TwoWay=�$ PropertyChanged=� �� 	Converter# [  6�   �� 5V      $��3��6   $��3��6'   $��	20 0 10 0q�67   $��30��6J   $	��120��6V   $��12(�6b   $��添加��6p    " MaterialDesignRaisedDarkButton#��[ 5W      $
��Left=�6R   $��0q�6m   ��5V   }   �� *
AddCommand+5W   m   �� 5X      $��3��6   $��4��6'   $��	20 0 10 0q�67   $��30��6J   $��60��6V   $��12(�6a   $��保存��6o   $��Right=�6|   
�������+
  %MaterialDesignThemes.Wpf.ButtonAssist 
  CornerRadius$ 15��5Y   M    $  MaterialDesignRaisedAccentButton#��[ 5Z       � ToolTip$B <保存当前酒店信息后，可在最后输出自律声明��6T   ��5Y   -   �� *SaveCommand+5Z   T   5[      �� 5]      -   5        $��1��5]      $��0 20 0 0q�6#    �� SelectedIndex$ 0��65   $	��250��6G   $
��Left=�5_      $
��Left=�6,   $	��Top=�6G   +  %MaterialDesignThemes.Wpf.RippleAssist   
IsDisabled . ��5^      �� $ Hotels�$ TwoWay=�$ PropertyChanged=� �� SelectedItem 6l   �� *SelectedHotel+$ TwoWay=�$ PropertyChanged=� 5`       �� 
TargetType " MaterialDesignScrollBarMinimal �� BasedOn��%0   '��       7  �� 5a      " ��6   8   63   5b      ��5c      �� 5d       �� DataType$ model:HotelGroup��6#   .R�5e      �� $��0 0 0 1q�6!   ���#009688$��
-7 0 -7 -8q�6Q   ._�5f      � 
 5g   "   �� 5h   &   $
��Auto �64   �� 5i   &   $
��Auto �64   �� 5j   &   $
��Auto �64   �� 5k   &   $
��Auto �64   �� 5l   &   $��* �64    5n   "   �� 5o   &   $
��Auto �67   �� 5p   &   $
��Auto �67   �� 5q   &   $
��Auto �67   �� 5r   &   $
��Auto �67   .+�5u   "   �� $��0��6,   $��0��69   $��2��6I   $��酒店名称��6]   $��20 0 0 0q�6i   �� 5v   "   $��1��6*   $��0��67   $��2��6G   $��20 0 0 0q�6[   $��25��6m    .  $	��330��6�   ���#009688$��SemiBold"�6�   $
��Left=�6�   $��13(�5w   w   ��6*   �� *	HotelName+$ TwoWay=�$ PropertyChanged=�6w   �� 5y   "   $��2��6,   $��0��69   $��发票总金额��6I   $��	20 10 0 0q�6V   �� 5z   "   $��3��6,   $��0��69   $��	20 0 0 10q�6I   $��30��6\   $	��120��6h   ���#009688$��SemiBold"�6�   $
��Left=�6�   $��14(�5{   |   $	 元��6�   ��6,   �� *TotalPayment+$ TwoWay=�$ PropertyChanged=�6�   �� 5}   "   $��2��6,   $��1��69   $��计算总金额��6I   $��	20 10 0 0q�6V   �� 5~   "   $��3��6,   $��1��69   $��	20 0 0 10q�6I   $��30��6\   $	��120��6h   $��SemiBold"�6t   $
��Left=�6�   $��14(�5   z   $	 元��6�   ��6,   �� *
LinesTotal+$ TwoWay=�$ PropertyChanged=�6�   � 5�   "   $��0��6'   $��2��64   $��5��6D   $��
20 0 20 10q�6U    5�   &   �� 5�   *   $��80 �6;   �� 5�   *   $	��120 �6;   �� 5�   *   $	��120 �6;   
 5�   &   �� 5�   *   $
��Auto �68   �� 5�   *   $��* �68   .+�5�   &   �� $��0��60   $��0��6=   ���#009688$��SemiBold"�6b   $
��Left=�6x   $��星期��5�   0   $��14(�6:   �� 5�   &   $��0��60   $��1��6=   ���#009688$��SemiBold"�6b   $
��Left=�6x   $��日期��5�   0   $��14(�6:   �� 5�   &   $��0��60   $��2��6=   ���#009688$��SemiBold"�6b   $
��Left=�6x   $��单天费用��5�   0   $��14(�6<   �� 5�   &   -   5        $��2��5�   3   $��0��6@   $��3��6P    � IsSharedSizeScope . ��5�   3   �� *Lines+$ TwoWay=�$ PropertyChanged=���5�   *   �� 5�   .   $   MonthlyReport.Models.HotelLine"  6;   .R�5�   2   ��  ��Name$ Border��69    �� Padding$ 0 8 0 8q�6I   $��0 0 0 1q�6[     MaterialDesignDivider#���  6u   ._�5�   6   �  5�   :   �� 5�   >   $��80 �6O   �� 5�   >   $	��120 �6O   �� 5�   >   $	��120 �6O   .+�5�   :   �� $��0��6D   $
��Left=�6T   $��0 4 0 0q�6o   $��14(�5�   �   ��6D   �� *	Weekday+$ TwoWay=�$ PropertyChanged=�6�   �� 5�   :   $��1��6D   $
��Left=�6T   $��0 4 0 0q�6p   $��14(�5�   �   ��6D   �� *
Datetime+  �� StringFormat$  
yyyy/MM/dd��$ TwoWay=�$ PropertyChanged=�6�   �� 5�   :   $��2��6B   $
��Left=�6R   $	��120��6m   $	 元��6y   $��14(�5�   �   ��6B   �� *	Payment+$ TwoWay=�$ PropertyChanged=�.��6�    5�   >     5�   B   $ TextChanged��6Q   . 5�   F      6\   �� *DataContext.CalculateCommand+! �� RelativeSource! �� " �� AncestorType"" >�5�   C   .��5�   V   5�   ;   5�   7   5�   3   5�   /   5�   '   5�   #   �� 5�   "   $��0��6)   $��3��66   $��5��6F   $��	20 0 10 0q�6W   $��30��6j   $��60��6v   $��12(�6�   $��删除��6�   $��Right=�6�   
�������$ 15��5�   �   ���#CC4B32$��0q�6�   #��[ 5�   )   ��5�   <   �� *DataContext.DeleteCommand+! �� "" >�5�   )   5�      5�      5�      5�      5�      5�      5�      