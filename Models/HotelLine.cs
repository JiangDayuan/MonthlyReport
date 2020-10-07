using Prism.Mvvm;
using System;

namespace MonthlyReport.Models
{
    public class HotelLine : BindableBase
    {
        private DateTime _dateTime;

        public DateTime Datetime
        {
            get { return _dateTime; }
            set { SetProperty(ref _dateTime, value); }
        }

        private string _weekday;

        public string Weekday
        {
            get { return _weekday; }
            set { SetProperty(ref _weekday, value); }
        }

        private double _payment;

        public double Payment
        {
            get { return _payment; }
            set { SetProperty(ref _payment, value); }
        }
    }
}
