using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MonthlyReport.Models
{
    public class DiDiLine : BindableBase
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

        private string _startPoint;

        public string StartPoint
        {
            get { return _startPoint; }
            set { SetProperty(ref _startPoint, value); }
        }

        private string _endPoint;

        public string EndPoint
        {
            get { return _endPoint; }
            set { SetProperty(ref _endPoint, value); }
        }

        private double _miles;

        public double Miles
        {
            get { return _miles; }
            set { SetProperty(ref _miles, value); }
        }

        private double _fee;

        public double Fee
        {
            get { return _fee; }
            set { SetProperty(ref _fee, value); }
        }
    }
}
