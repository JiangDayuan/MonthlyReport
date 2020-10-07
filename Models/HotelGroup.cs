using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace MonthlyReport.Models
{
    public class HotelGroup : BindableBase
    {
        private DateTime _checkIn;

        public DateTime CheckIn
        {
            get { return _checkIn; }
            set { SetProperty(ref _checkIn, value); }
        }

        private DateTime _checkOut;

        public DateTime CheckOut
        {
            get { return _checkOut; }
            set { SetProperty(ref _checkOut, value); }
        }

        private string _hotelName;

        public string HotelName
        {
            get { return _hotelName; }
            set { SetProperty(ref _hotelName, value); }
        }

        private string _book;

        public string Book
        {
            get { return _book; }
            set { SetProperty(ref _book, value); }
        }

        private string _receiptType;

        public string ReceiptType
        {
            get { return _receiptType; }
            set { SetProperty(ref _receiptType, value); }
        }

        private double _totalPayment;

        public double TotalPayment
        {
            get { return _totalPayment; }
            set { SetProperty(ref _totalPayment, value); }
        }

        private double _linesTotal;

        public double LinesTotal
        {
            get { return _linesTotal; }
            set { SetProperty(ref _linesTotal, value); }
        }

        private ObservableCollection<HotelLine> _lines;

        public ObservableCollection<HotelLine> Lines
        {
            get { return _lines; }
            set { SetProperty(ref _lines, value); }
        }

        public HotelGroup()
        {
            Lines = new ObservableCollection<HotelLine>();
            DateTime baseDate = DateTime.Today.AddMonths(-1);
            
            CheckIn = Convert.ToDateTime(string.Format("{0}-{1}-01", baseDate.Year, baseDate.Month));
            CheckOut = CheckIn.AddDays(1);
        }

        public void SetLines()
        {
            try
            {
                Dictionary<string, string> WeekDict = new Dictionary<string, string>();
                WeekDict["Monday"] = "周一";
                WeekDict["Tuesday"] = "周二";
                WeekDict["Wednesday"] = "周三";
                WeekDict["Thursday"] = "周四";
                WeekDict["Friday"] = "周五";
                WeekDict["Saturday"] = "周六";
                WeekDict["Sunday"] = "周日";
                int i;
                for (i = 0; CheckIn.AddDays(i) < CheckOut; i++)
                {
                    HotelLine hotelLine = new HotelLine
                    {
                        Datetime = CheckIn.AddDays(i),
                        Weekday = WeekDict[CheckIn.AddDays(i).DayOfWeek.ToString()]
                    };
                    Lines.Add(hotelLine);
                }

                
                double avg = Double.Parse(String.Format("{0:F2}", TotalPayment / i));
                double lastPayment = TotalPayment - avg * (i-1);

                foreach (var h in Lines)
                {
                    h.Payment = avg;
                }

                Lines[Lines.Count - 1].Payment = lastPayment;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void CalculateLinesTotal()
        {
            try
            {
                LinesTotal = 0;
                foreach (var l in Lines)
                {
                    LinesTotal += l.Payment;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
