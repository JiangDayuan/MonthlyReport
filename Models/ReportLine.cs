using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace MonthlyReport.Models
{
    public class ReportLine : BindableBase
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

        private string _ticket;

        public string Ticket
        {
            get { return _ticket; }
            set { SetProperty(ref _ticket, value); }
        }

        private string _diary;

        public string Diary
        {
            get { return _diary; }
            set { SetProperty(ref _diary, value); }
        }

        private ObservableCollection<DiDiLine> _taxis;

        public ObservableCollection<DiDiLine> Taxis
        {
            get { return _taxis; }
            set { SetProperty(ref _taxis, value); }
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

        private double _payment;

        public double Payment
        {
            get { return _payment; }
            set { SetProperty(ref _payment, value); }
        }

        private int _allowance;

        public int Allowance
        {
            get { return _allowance; }
            set { SetProperty(ref _allowance, value); }
        }

        private bool _isSelected;

        public bool IsSelected
        {
            get { return _isSelected; }
            set { SetProperty(ref _isSelected, value); }
        }



        public ReportLine()
        {
            Taxis = new ObservableCollection<DiDiLine>();
        }
    }
}
