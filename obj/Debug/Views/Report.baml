   M S B A M L   `   `   `  ����H  DMonthlyReport, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:MonthlyReport.ViewsMonthlyReport.Views  5      C&clr-namespace:MonthlyReport.ConvertersMonthlyReport.Converters  5      ;"clr-namespace:MonthlyReport.ModelsMonthlyReport.Models  5	           MonthlyReport.Views.Report   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:MonthlyReport.Views     5      <	converter&clr-namespace:MonthlyReport.Converters     5      4model"clr-namespace:MonthlyReport.Models     5	      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      Y UPrism.Unity.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59S OPrism.Wpf, Version=7.2.0.1422, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  . $��Microsoft YaHei)�5   8   {�5      ��  �� Path$ UserControlEnable� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� � 	Resources 5      /   )MonthlyReport.Converters.DecimalConverter   DecimalConverter��%   &	          5   
   6%   5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadCommand+5      .��5      � $��Center=�6   $��20q�6(   	 � RowDefinitions	 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   
 � ColumnDefinitions
 5    
   �� 5!      $
��Auto �6   �� 5"      $
��Auto �6   �� 5#      $
��Auto �6   �� 5$      $��* �6   .+�5&   
   �� $��0��6   $��0��6%   .+�5'      �� $��请输入报销年份：��6   $
��Left=�6'   $��Bottom=�6B   $��12(�6]   $��0 0 0 5q�5(      $��Bottom=�6&   $��0 0 0 0q�6H     MaterialDesignBody#���  6Y   �� 5)      $��30��6    �� 
IsReadOnly .  $	��120��65   ���#009688$��SemiBold"�6V   $
��Left=�6l   $��14(�5*   k   .  (MaterialDesignThemes.Wpf.TextFieldAssist   
SuffixText$	 年��6y   ��6   �� $ SelectedYear�$ TwoWay=�$ PropertyChanged=�6y   5+      �� 5,   
   $��1��6   $��0��6%   .+�5-      �� $��请选择报销月份：��6   $
��Left=�6'   $��Bottom=�6B   $��12(�6]   $��0 0 0 5q�5.      $��Bottom=�6&   $��20 0 0 0q�6H   #���  6Z   �� 5/         DecorationVisibility$ 	Collapsed=�6   $	 月��50      $��20 0 0 0q�6E   ���#009688$��Bottom=�51   ,    �� 
IsEditable .  $��90��54   *   $
��Left=�65   $��14(�6P   $��Black"�6^   ��52      �� $ 	MonthList�$ TwoWay=�$ PropertyChanged=� �� Text 53      �� $ SelectedMonth�$ TwoWay=�$ PropertyChanged=�54   ^   55      �� 56   
   $��0��6   $��2��6   $��	20 0 10 0q�6/   $��30��6B   $	��120��6N   $��12(�6Z   $��刷新月报预览��6h    " MaterialDesignRaisedDarkButton#��[ 57      $
��Left=�6R   $��Bottom=�6m   $��0q�6�   ��56   y   �� *RefreshCommand+57   �   �� 58   
   $��0��6   $��3��6   $��	50 0 10 0q�6/   $��30��6B   $	��100��6N   $��12(�6Z   $��生成月报��6h   $
��Left=�6w   
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15��59   K   $��Bottom=�6y    $  MaterialDesignRaisedAccentButton#��[ 5:       � ToolTip$B <保存当前行程信息后，可在最后输出自律声明��6T   ��59   -   �� *	GoCommand+5:   T   �� 5<   
   $ 	Collapsed=�6   $��1��6S   $��0��6`   $��0 10 0 0q�5=      ���#009688$��Bottom=�6:    .  $	��150��5@   &   $
��Left=�62   $��14(�6M   $��Black"�6[   ��5>      �� $ 
TicketList�$ TwoWay=�$ PropertyChanged=� 5?      �� $ SelectedTicket�$ TwoWay=�$ PropertyChanged=�5@   [   �� 5B   
   $��1��6   $��1��6"   $��3��62   $
��Left=�6F   $��Bottom=�6a    �� Orientation$ 
Horizontal=�6|   .+�5C      �� $��	30 0 10 0q�6   $��30��6(   $	��120��64   $��12(�6@   $��填写Ticket类型��6N   
�������  MaterialDesignRaisedButton#��[ 5E      ��5D   $   �� *InputCommand+5E      �� 5F      $��30 0 0 0q�6   $��30��6'   $��50��63   $��12(�6>   $��全选��6L   $��0q�6Y      MaterialDesignOutlinedButton#��[ 5H      ��5G      �� *AllCheckCommand+5H      �� 5I      $��0 0 0 0q�6   $��30��6&   $��50��62   $��12(�6=   $��	全不选��6K   $��0q�6Y   #��[ 5K      ��5J      �� *AllUncheckCommand+5K      �� 5L      $��0 0 0 0q�6   $��30��6&   $��50��62   $��12(�6=   $��	双休日��6K   $��0q�6Y   #��[ 5N      ��5M      �� *WeekendCheckCommand+5N      5O      �� 5S   
   -   5         ��Name$ Scroll��5S      $��2��6'   $��0��64   $��4��6D   $��	0 20 0 20q�6X   $
��Auto=�6k   $
��Auto=�6�   ��.  .��5T      �� -   5        $��1��5T      $��0q�6#    �� SelectedIndex$ 0��6.   $	��310��6@   $
��Left=�5V      $
��Left=�6,   $	��Top=�6G   +	  %MaterialDesignThemes.Wpf.RippleAssist 	  
IsDisabled .  �� SelectionMode$ Single=�6�   ��5U      �� $ ReportLines�$ TwoWay=�$ PropertyChanged=� �� SelectedItem 6q   �� *SelectedLines+$ TwoWay=�$ PropertyChanged=���5W      �� 5X       �� DataType$ model:ReportLine��6#   .R�5Y      �� $��0 0 0 1q�6!    �� Padding$ 0 8 0 8q�6;   ���#009688$��
-7 0 -7 -8q�6c   ._�5Z      � 	 5[   "   �� 5\   &   $
��Auto �64   �� 5]   &   $
��Auto �64   �� 5^   &   $
��Auto �64   �� 5_   &   $
��Auto �64   �� 5`   &   $��* �64   
 5b   "   �� 5c   &   $
��Auto �67   �� 5d   &   $
��Auto �67   �� 5e   &   $
��Auto �67   �� 5f   &   $
��Auto �67   �� 5g   &   $
��Auto �67   �� 5h   &   $
��Auto �67   �� 5i   &   $
��Auto �67   .+�5l   "   �� $��0��6+   $��0��68   $��60��6�   $��40��6�   $��Center=�6�   $��0q�6�   $��0q�6�    d� 	IsChecked 6H   �� *
IsSelected+$ TwoWay=�$ PropertyChanged=�6�   �� 5m   "   $��0��6,   $��1��69   $��0 0 0 5q�6�   ���#009688��6I   �� *
Datetime+$ TwoWay=�$ PropertyChanged=� �� StringFormat$ dd��6�   �� 5n   "   $��0��6,   $��2��69   $��10 0 0 5q�6�   ���#009688��6I   �� *	Weekday+$ TwoWay=�$ PropertyChanged=�6�   �� 5o   "   $��0��6,   $��3��69   $��80��6�   $��10 0 0 5q�6�   ���#009688��6I   �� *Ticket+$ TwoWay=�$ PropertyChanged=�6�   �� 5q   "   -   5        $��0��5q   /   $��4��6<   $��	20 -7 0 0q�6L   $	��Top=�6_   $	��320��6w    � IsSharedSizeScope . ��5r   /   �� *Taxis+$ TwoWay=�$ PropertyChanged=���5t   &   �� 5u   *   #
   MonthlyReport.Models.DiDiLine" 
 67   .R�5v   .   ��  ��Name$ Border��65   $ 0 8 0 8q�6E   $��0 0 0 1q�6W     MaterialDesignDivider#���  6q   ._�5w   2   � 
 5x   6   �� 5y   :   $
��Auto �6K   	 5{   6   �� 5|   :   $
��Auto �6H   �� 5}   :   $
��Auto �6H   �� 5~   :   $��* �6H   .+�5�   6   �� $��0��6A   $��0��6Q   $ 
Horizontal=�6^   .+�5�   :   �� $
��Left=�6D   $
��从 ��6_   
�������6i   �� 5�   :   $
��Left=�6D   $	��250��6�   $
��Wrap=�6�   ���#009688��6_   �� *
StartPoint+$ TwoWay=�$ PropertyChanged=�6�   5�   7   �� 5�   6   $��0��6A   $��1��6Q   $ 
Horizontal=�6^   .+�5�   :   �� $
��Left=�6D   $
��到 ��6_   
�������6i   �� 5�   :   $
��Left=�6D   $	��250��6�   $
��Wrap=�6�   ���#009688��6_   �� *
EndPoint+$ TwoWay=�$ PropertyChanged=�6�   5�   7   �� 5�   6   $��0��6A   $��3��6Q   $ 
Horizontal=�6^   .+�5�   :   �� $
��Left=�6D   $��里程: ��6_   
�������6k   �� 5�   :   $
��Left=�6D   ���#009688��6_   �� *Miles+$ TwoWay=�$ PropertyChanged=�6�   �� 5�   :   $
��Left=�6D   $��金额: ��6_   
�������$��20 0 0 0q�6}   �� 5�   :   $
��Left=�6D   ���#009688��6_   �� *Fee+$ TwoWay=�$ PropertyChanged=�6�   5�   7   5�   3   5�   /   5�   +   5�   #   �� 5�   "   $��0��6-   $��5��6:   $��20 0 0 0q�6J   .+�5�   &   � 	 5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   .+�5�   *   �� $��0��65   $��0��6E   $ 
Horizontal=�6R   .+�5�   .   �� $
��Left=�68   $��酒店名: ��6S   
�������6`   �� 5�   .   $
��Left=�68   $	��200��6�   $
��Wrap=�6�   ���#009688��6S   �� *	HotelName+$ TwoWay=�$ PropertyChanged=�6�   5�   +   �� 5�   *   $��0��65   $��1��6E   $ 
Horizontal=�6R   .+�5�   .   �� $
��Left=�68   ���#009688��6S   �� *Book+$ TwoWay=�$ PropertyChanged=�6�   �� 5�   .   $
��Left=�68   $
��Wrap=�6�   ���#009688$��20 0 0 0q�6�   ��6S   �� *ReceiptType+$ TwoWay=�$ PropertyChanged=�6�   5�   +   �� 5�   *   $��0��65   $��2��6E   $ 
Horizontal=�6R   .+�5�   .   �� $
��Left=�68   $��金   额: ��6S   
�������6b   �� 5�   .   $
��Left=�68   $
��Wrap=�6�   ���#009688��6S   �� *	Payment+$ TwoWay=�$ PropertyChanged=�6�   5�   +   ��5�   *   �� 5�   .    �� 
TargetType" �64    �� Triggers 5�   2   �� 5�   6     �� Binding  6B   �� *	Payment+$ TwoWay=�$ PropertyChanged=�! �� Value! 06�   .a�5�   :   �� " �� Property" � y�# �� Value$# Hidden=�6W   5�   7   5�   /   5�   '   5�   #   �� 5�   "   $��0��6-   $��6��6:   $��	20 0 20 0q�6J   .+�5�   &   �� $
��Left=�60   $��出差补贴: ��6K   
�������6Y   �� 5�   &   $��30��6.    .  $��50��6M   ���#009688$
��Left=�6m   $��12(�5�   �   $	 元��6�   ��6.   �� $ 	Allowance�$ TwoWay=�$ PropertyChanged=�6�   5�   #   5�      5�      5�      5�      5�      5�      5�      