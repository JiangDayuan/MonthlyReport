using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Prism.Commands;
using Prism.Events;
using Prism.Mvvm;
using Prism.Regions;
using System.Collections.ObjectModel;
using System.Windows;
using MonthlyReport.Models;
using MonthlyReport.Services;
using System.Text.RegularExpressions;
using MonthlyReport.Events;
using System.IO;
using NPOI.XSSF.UserModel;
using NPOI.SS.UserModel;
using NPOI.SS.Util;

namespace MonthlyReport.ViewModels
{
    public class ReportViewModel : BindableBase
    {
        string t = @".\Resources\Config\TicketType.txt";

        IEventAggregator _ea;

        private bool _userControlEnable;

        public bool UserControlEnable
        {
            get { return _userControlEnable; }
            set { SetProperty(ref _userControlEnable, value); }
        }

        private ObservableCollection<string> _monthList;

        public ObservableCollection<string> MonthList
        {
            get { return _monthList; }
            set { SetProperty(ref _monthList, value); }
        }

        private string _selectedMonth;

        public string SelectedMonth
        {
            get { return _selectedMonth; }
            set { SetProperty(ref _selectedMonth, value); }
        }

        private int _selectedYear = DateTime.Today.AddMonths(-1).Year;

        public int SelectedYear
        {
            get { return _selectedYear; }
            set { SetProperty(ref _selectedYear, value); }
        }

        private ObservableCollection<DiDiLine> _travelList;

        public ObservableCollection<DiDiLine> TravelList
        {
            get { return _travelList; }
            set { SetProperty(ref _travelList, value); }
        }

        private ObservableCollection<HotelGroup> _hotels;

        public ObservableCollection<HotelGroup> Hotels
        {
            get { return _hotels; }
            set { SetProperty(ref _hotels, value); }
        }

        private ObservableCollection<ReportLine> _reportLines;

        public ObservableCollection<ReportLine> ReportLines
        {
            get { return _reportLines; }
            set { SetProperty(ref _reportLines, value); }
        }

        private ObservableCollection<string> _ticketList;

        public ObservableCollection<string> TicketList
        {
            get { return _ticketList; }
            set { SetProperty(ref _ticketList, value); }
        }

        private string _selectedTicket;

        public string SelectedTicket
        {
            get { return _selectedTicket; }
            set { SetProperty(ref _selectedTicket, value); }
        }

        private Config config;

        public Config Config
        {
            get { return config; }
            set { SetProperty(ref config, value); }
        }


        public DelegateCommand LoadCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }
        public DelegateCommand InputCommand { get; set; }
        public DelegateCommand GoCommand { get; set; }

        public DelegateCommand AllCheckCommand { get; set; }
        public DelegateCommand AllUncheckCommand { get; set; }
        public DelegateCommand WeekendCheckCommand { get; set; }




        public ReportViewModel(IEventAggregator eventAggregator)
        {
            _ea = eventAggregator;

            LoadCommand = new DelegateCommand(LoadExecute);
            RefreshCommand = new DelegateCommand(RefreshExecute);
            InputCommand = new DelegateCommand(InputExecute);
            GoCommand = new DelegateCommand(GoExecute);

            AllCheckCommand = new DelegateCommand(AllCheckExecute);
            AllUncheckCommand = new DelegateCommand(AllUncheckExecute);
            WeekendCheckCommand = new DelegateCommand(WeekendCheckExecute);

            MonthList = new ObservableCollection<string>
            {
                "1",
                "2",
                "3",
                "4",
                "5",
                "6",
                "7",
                "8",
                "9",
                "10",
                "11",
                "12"
            };
            SelectedMonth = DateTime.Today.AddMonths(-1).Month.ToString();
        }

        private void WeekendCheckExecute()
        {
            try
            {
                foreach (var line in ReportLines)
                {
                    if (line.Weekday == "周六" || line.Weekday == "周日")
                    {
                        line.IsSelected = true;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void AllUncheckExecute()
        {
            try
            {
                foreach (var line in ReportLines)
                {
                    line.IsSelected = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void AllCheckExecute()
        {
            try
            {
                foreach (var line in ReportLines)
                {
                    line.IsSelected = true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void GoExecute()
        {
            try
            {
                if (ReportLines is null)
                {
                    throw new Exception("请先刷新报告预览");
                }
                Config = new Config();
                if (File.Exists(@".\Resources\Config\Config.json"))
                {
                    string content = JsonDataService.ReadFile(@".\Resources\Config\Config.json");
                    Config = JsonDataService.FromJson<Config>(content);
                }

                // 创建Excel
                XSSFWorkbook workBook = new XSSFWorkbook();

                // 设置字体
                IFont font = workBook.CreateFont();
                font.FontHeightInPoints = 10;
                font.FontName = "宋体";

                // 设置单元格格式
                ICellStyle CellStyle = workBook.CreateCellStyle();
                CellStyle.VerticalAlignment = NPOI.SS.UserModel.VerticalAlignment.Center;
                CellStyle.Alignment = NPOI.SS.UserModel.HorizontalAlignment.Center;
                CellStyle.SetFont(font);

                ICellStyle CellStyle2 = workBook.CreateCellStyle();
                CellStyle2.VerticalAlignment = NPOI.SS.UserModel.VerticalAlignment.Center;
                CellStyle2.Alignment = NPOI.SS.UserModel.HorizontalAlignment.Left;
                CellStyle2.SetFont(font);

                // 获取指定Sheet
                ISheet sheet = workBook.CreateSheet("Sheet1");

                int firstIndex = 0;
                foreach (var report in ReportLines)
                {
                    IRow row = sheet.CreateRow(firstIndex);
                    if (Config.Date >= 0)
                    {
                        CellRangeAddress region = new CellRangeAddress(firstIndex, firstIndex + Config.RowCount - 1, Config.Date, Config.Date);
                        sheet.AddMergedRegion(region);

                        var Day = row.CreateCell(Config.Date);
                        Day.SetCellValue(report.Datetime.Day);
                        Day.CellStyle = CellStyle;
                    }
                    if (Config.Week >= 0)
                    {
                        CellRangeAddress region = new CellRangeAddress(firstIndex, firstIndex + Config.RowCount - 1, Config.Week, Config.Week);
                        sheet.AddMergedRegion(region);

                        var Week = row.CreateCell(Config.Week);
                        Week.SetCellValue(report.Weekday);
                        Week.CellStyle = CellStyle;
                    }
                    if (Config.Ticket >= 0)
                    {
                        CellRangeAddress region = new CellRangeAddress(firstIndex, firstIndex + Config.RowCount - 1, Config.Ticket, Config.Ticket);
                        sheet.AddMergedRegion(region);

                        var Ticket = row.CreateCell(Config.Ticket);
                        Ticket.SetCellValue(report.Ticket);
                        Ticket.CellStyle = CellStyle;
                    }
                    if (Config.Diary >= 0)
                    {
                        CellRangeAddress region = new CellRangeAddress(firstIndex, firstIndex + Config.RowCount - 1, Config.Diary, Config.Diary);
                        sheet.AddMergedRegion(region);

                        var Diary = row.CreateCell(Config.Diary);
                        Diary.SetCellValue(Config.DiaryDefault);
                        Diary.CellStyle = CellStyle2;
                    }
                    if (Config.Index >= 0)
                    {
                        for (int i = 0; i < Config.RowCount; i++)
                        {
                            if (i == 0)
                            {
                                var Index = row.CreateCell(Config.Index);
                                Index.SetCellValue(i + 1);
                                Index.CellStyle = CellStyle;
                            }
                            else
                            {
                                IRow newRow = sheet.CreateRow(firstIndex + i);
                                var Index = newRow.CreateCell(Config.Index);
                                Index.SetCellValue(i + 1);
                                Index.CellStyle = CellStyle;
                            }
                            
                        }
                    }
                    if (report.Taxis.Count > 0)
                    {
                        if (Config.TaxiStart >= 0)
                        {
                            for (int i = 0; i < report.Taxis.Count; i++)
                            {
                                if (i == 0)
                                {
                                    var cell = row.CreateCell(Config.TaxiStart);
                                    cell.SetCellValue(report.Taxis[i].StartPoint);
                                    cell.CellStyle = CellStyle;
                                }
                                else
                                {
                                    IRow newRow = sheet.CreateRow(firstIndex + i);
                                    var cell = newRow.CreateCell(Config.TaxiStart);
                                    cell.SetCellValue(report.Taxis[i].StartPoint);
                                    cell.CellStyle = CellStyle;
                                }
                            }
                        }
                        if (Config.TaxiTime >= 0)
                        {
                            for (int i = 0; i < report.Taxis.Count; i++)
                            {
                                if (i == 0)
                                {
                                    var cell = row.CreateCell(Config.TaxiTime);
                                    cell.SetCellValue(report.Taxis[i].Datetime.ToString("HH:mm"));
                                    cell.CellStyle = CellStyle;
                                }
                                else
                                {
                                    IRow newRow = sheet.CreateRow(firstIndex + i);
                                    var cell = newRow.CreateCell(Config.TaxiTime);
                                    cell.SetCellValue(report.Taxis[i].Datetime.ToString("HH:mm"));
                                    cell.CellStyle = CellStyle;
                                }
                            }
                        }
                        if (Config.TaxiEnd >= 0)
                        {
                            for (int i = 0; i < report.Taxis.Count; i++)
                            {
                                if (i == 0)
                                {
                                    var cell = row.CreateCell(Config.TaxiEnd);
                                    cell.SetCellValue(report.Taxis[i].EndPoint);
                                    cell.CellStyle = CellStyle;
                                }
                                else
                                {
                                    IRow newRow = sheet.CreateRow(firstIndex + i);
                                    var cell = row.CreateCell(Config.TaxiEnd);
                                    cell.SetCellValue(report.Taxis[i].EndPoint);
                                    cell.CellStyle = CellStyle;
                                }
                            }
                        }
                        if (Config.PayMethod >= 0)
                        {
                            for (int i = 0; i < report.Taxis.Count; i++)
                            {
                                if (i == 0)
                                {
                                    var cell = row.CreateCell(Config.PayMethod);
                                    cell.SetCellValue(Config.TaxiDefault);
                                    cell.CellStyle = CellStyle;
                                }
                                else
                                {
                                    IRow newRow = sheet.CreateRow(firstIndex + i);
                                    var cell = row.CreateCell(Config.PayMethod);
                                    cell.SetCellValue(Config.TaxiDefault);
                                    cell.CellStyle = CellStyle;
                                }
                            }
                        }
                        if (Config.TaxiMile >= 0)
                        {
                            for (int i = 0; i < report.Taxis.Count; i++)
                            {
                                if (i == 0)
                                {
                                    var cell = row.CreateCell(Config.TaxiMile);
                                    cell.SetCellValue(report.Taxis[i].Miles);
                                    cell.CellStyle = CellStyle;
                                }
                                else
                                {
                                    IRow newRow = sheet.CreateRow(firstIndex + i);
                                    var cell = row.CreateCell(Config.TaxiMile);
                                    cell.SetCellValue(report.Taxis[i].Miles);
                                    cell.CellStyle = CellStyle;
                                }
                            }
                        }
                        if (Config.Fee >= 0)
                        {
                            for (int i = 0; i < report.Taxis.Count; i++)
                            {
                                if (i == 0)
                                {
                                    var cell = row.CreateCell(Config.Fee);
                                    cell.SetCellValue(report.Taxis[i].Fee);
                                    cell.CellStyle = CellStyle;
                                }
                                else
                                {
                                    IRow newRow = sheet.CreateRow(firstIndex + i);
                                    var cell = row.CreateCell(Config.Fee);
                                    cell.SetCellValue(report.Taxis[i].Fee);
                                    cell.CellStyle = CellStyle;
                                }
                            }
                        }
                    }
                    if (report.Payment > 0)
                    {
                        if (Config.HotelName >= 0)
                        {
                            var cell = row.CreateCell(Config.HotelName);
                            cell.SetCellValue(report.HotelName);
                            cell.CellStyle = CellStyle;
                        }
                        if (Config.Book >= 0)
                        {
                            var cell = row.CreateCell(Config.Book);
                            cell.SetCellValue(report.Book);
                            cell.CellStyle = CellStyle;
                        }
                        if (Config.Payment >= 0)
                        {
                            var cell = row.CreateCell(Config.Payment);
                            cell.SetCellValue(report.Payment);
                            cell.CellStyle = CellStyle;
                        }
                        if (Config.Reciept >= 0)
                        {
                            var cell = row.CreateCell(Config.Reciept);
                            cell.SetCellValue(report.ReceiptType);
                            cell.CellStyle = CellStyle;
                        }
                    }
                    if (Config.Allowance >= 0 && report.Allowance > 0)
                    {
                        var cell = row.CreateCell(Config.Allowance);
                        cell.SetCellValue(report.Allowance);
                        cell.CellStyle = CellStyle;
                    }

                    firstIndex += Config.RowCount;
                }
                
               
                

                // 输出
                FileStream stream = File.Open(@".\SelfGreen.xlsx", FileMode.Create);
                workBook.Write(stream);
                stream.Close();

                MessageBox.Show("生成成功");
                System.Diagnostics.Process.Start(@".\SelfGreen.xlsx");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void InputExecute()
        {
            try
            {
                foreach (var line in ReportLines)
                {
                    if (line.IsSelected)
                    {
                        line.Ticket = SelectedTicket;
                    }
                    line.IsSelected = false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void RefreshExecute()
        {
            try
            {
                SetReportLines();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void SetReportLines()
        {
            Dictionary<string, string> WeekDict = new Dictionary<string, string>();
            WeekDict["Monday"] = "周一";
            WeekDict["Tuesday"] = "周二";
            WeekDict["Wednesday"] = "周三";
            WeekDict["Thursday"] = "周四";
            WeekDict["Friday"] = "周五";
            WeekDict["Saturday"] = "周六";
            WeekDict["Sunday"] = "周日";

            TravelList = new ObservableCollection<DiDiLine>();
            Hotels = new ObservableCollection<HotelGroup>();

            if (File.Exists(@".\Resources\Config\DiDi.json"))
            {
                string content = JsonDataService.ReadFile(@".\Resources\Config\DiDi.json");
                TravelList = JsonDataService.FromJson<ObservableCollection<DiDiLine>>(content);
            }

            if (File.Exists(@".\Resources\Config\Hotel.json"))
            {
                string content = JsonDataService.ReadFile(@".\Resources\Config\Hotel.json");
                Hotels = JsonDataService.FromJson<ObservableCollection<HotelGroup>>(content);
            }

            try
            {
                ReportLines = new ObservableCollection<ReportLine>();
                if (!String.IsNullOrWhiteSpace(SelectedMonth))
                {
                    DateTime dateTime = Convert.ToDateTime(string.Format("{0}-{1}-01", SelectedYear, SelectedMonth));

                    int j = 0;
                    while (dateTime.AddDays(j).Month == dateTime.Month)
                    {
                        ReportLine line = new ReportLine();
                        line.Datetime = dateTime.AddDays(j);
                        line.Weekday = WeekDict[dateTime.AddDays(j).DayOfWeek.ToString()];
                        line.Ticket = TicketList[0];

                        if (TravelList.Count > 0)
                        {
                            foreach (var t in TravelList)
                            {
                                if (t.Datetime.Date == dateTime.AddDays(j))
                                {
                                    line.Taxis.Add(t);
                                }
                            }
                        }
                        
                        if (Hotels.Count > 0)
                        {
                            foreach (var h in Hotels)
                            {
                                foreach (var l in h.Lines)
                                {
                                    if (l.Datetime == dateTime.AddDays(j))
                                    {
                                        line.HotelName = h.HotelName;
                                        line.Book = h.Book;
                                        line.ReceiptType = h.ReceiptType;
                                        line.Payment = l.Payment;
                                        line.Allowance = 180;
                                        break;
                                    }
                                }
                            }
                        }

                        ReportLines.Add(line);
                        j++;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void LoadExecute()
        {
            try
            {
                // 锁定控件
                UserControlEnable = false;
                TicketList = ReadConfigDataService.ReadToList(t);
                //SetReportLines();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                UserControlEnable = true;
            }
        }
    }
}
