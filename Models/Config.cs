using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MonthlyReport.Models
{
    public class Config : BindableBase
    {
        private int _date = -1;

        public int Date
        {
            get { return _date; }
            set { SetProperty(ref _date, value); }
        }

        private int _week = -1;

        public int Week
        {
            get { return _week; }
            set { SetProperty(ref _week, value); }
        }

        private int _ticket = -1;

        public int Ticket
        {
            get { return _ticket; }
            set { SetProperty(ref _ticket, value); }
        }

        private int _diary = -1;

        public int Diary
        {
            get { return _diary; }
            set { SetProperty(ref _diary, value); }
        }

        private int _index = -1;

        public int Index
        {
            get { return _index; }
            set { SetProperty(ref _index, value); }
        }

        private int _taxiStart = -1;

        public int TaxiStart
        {
            get { return _taxiStart; }
            set { SetProperty(ref _taxiStart, value); }
        }

        private int _taxiTime = -1;

        public int TaxiTime
        {
            get { return _taxiTime; }
            set { SetProperty(ref _taxiTime, value); }
        }

        private int _taxiEnd = -1;

        public int TaxiEnd
        {
            get { return _taxiEnd; }
            set { SetProperty(ref _taxiEnd, value); }
        }

        private int _payMethod = -1;

        public int PayMethod
        {
            get { return _payMethod; }
            set { SetProperty(ref _payMethod, value); }
        }

        private int _taxiMile = -1;

        public int TaxiMile
        {
            get { return _taxiMile; }
            set { SetProperty(ref _taxiMile, value); }
        }

        private int _fee = -1;

        public int Fee
        {
            get { return _fee; }
            set { SetProperty(ref _fee, value); }
        }

        private int _hotelName = -1;

        public int HotelName
        {
            get { return _hotelName; }
            set { SetProperty(ref _hotelName, value); }
        }

        private int _book = -1;

        public int Book
        {
            get { return _book; }
            set { SetProperty(ref _book, value); }
        }

        private int _payment = -1;

        public int Payment
        {
            get { return _payment; }
            set { SetProperty(ref _payment, value); }
        }

        private int _reciept = -1;

        public int Reciept
        {
            get { return _reciept; }
            set { SetProperty(ref _reciept, value); }
        }

        private int _allowance = -1;

        public int Allowance
        {
            get { return _allowance; }
            set { SetProperty(ref _allowance, value); }
        }

        private string _taxiDefault;

        public string TaxiDefault
        {
            get { return _taxiDefault; }
            set { SetProperty(ref _taxiDefault, value); }
        }

        private int _rowCount;

        public int RowCount
        {
            get { return _rowCount; }
            set { SetProperty(ref _rowCount, value); }
        }

        private string _diaryDefault;

        public string DiaryDefault
        {
            get { return _diaryDefault; }
            set { SetProperty(ref _diaryDefault, value); }
        }

    }
}
