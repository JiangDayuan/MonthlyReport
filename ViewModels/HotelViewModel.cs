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

namespace MonthlyReport.ViewModels
{
    public class HotelViewModel : BindableBase
    {
        string book = @".\Resources\Config\BookWay.txt";
        string reciept = @".\Resources\Config\Reciept.txt";

        IEventAggregator _ea;

        private bool _userControlEnable;

        public bool UserControlEnable
        {
            get { return _userControlEnable; }
            set { SetProperty(ref _userControlEnable, value); }
        }

        private HotelGroup _newHotel;

        public HotelGroup NewHotel
        {
            get { return _newHotel; }
            set { SetProperty(ref _newHotel, value); }
        }

        private ObservableCollection<string> _books;

        public ObservableCollection<string> Books
        {
            get { return _books; }
            set { SetProperty(ref _books, value); }
        }

        private ObservableCollection<string> _receiptTypes;

        public ObservableCollection<string> ReceiptTypes
        {
            get { return _receiptTypes; }
            set { SetProperty(ref _receiptTypes, value); }
        }

        private ObservableCollection<HotelGroup> _hotels;

        public ObservableCollection<HotelGroup> Hotels
        {
            get { return _hotels; }
            set { SetProperty(ref _hotels, value); }
        }

        private HotelGroup _selectedHotel;

        public HotelGroup SelectedHotel
        {
            get { return _selectedHotel; }
            set { SetProperty(ref _selectedHotel, value); }
        }



        public DelegateCommand LoadCommand { get; set; }
        public DelegateCommand AddCommand { get; set; }
        public DelegateCommand CalculateCommand { get; set; }
        public DelegateCommand SaveCommand { get; set; }
        public DelegateCommand DeleteCommand { get; set; }



        public HotelViewModel(IEventAggregator eventAggregator)
        {
            _ea = eventAggregator;

            LoadCommand = new DelegateCommand(LoadExecute);
            AddCommand = new DelegateCommand(AddExecute);
            CalculateCommand = new DelegateCommand(CalculateExecute);
            SaveCommand = new DelegateCommand(SaveExecute);
            DeleteCommand = new DelegateCommand(DeleteExecute);


            UserControlEnable = true;
            Hotels = new ObservableCollection<HotelGroup>();
        }

        private void DeleteExecute()
        {
            try
            {
                Hotels.Remove(SelectedHotel);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void SaveExecute()
        {
            try
            {
                string hotel = @".\Resources\Config\Hotel.json";
                string content = JsonDataService.DataToJson(Hotels);
                JsonDataService.WriteFile(content, hotel);
                MessageBox.Show("保存成功");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void CalculateExecute()
        {
            try
            {
                SelectedHotel.CalculateLinesTotal();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public static bool IsMoney(string input)
        {
            return Regex.IsMatch(input, @"^\-{0,1}[0-9]{0,}\.{0,1}[0-9]{1,}$");
        }

        private void InputCheck()
        {
            try
            {
                if (String.IsNullOrWhiteSpace(NewHotel.HotelName))
                {
                    throw new Exception("请输入酒店名称");
                }
                if (String.IsNullOrWhiteSpace(NewHotel.ReceiptType))
                {
                    throw new Exception("请选择发票类型");
                }
                if (String.IsNullOrWhiteSpace(NewHotel.Book))
                {
                    throw new Exception("请选择预定途径");
                }
                if (NewHotel.CheckIn >= NewHotel.CheckOut)
                {
                    throw new Exception("入住时间不能在退房时间之后");
                }
                if (NewHotel.TotalPayment <= 0 || !(IsMoney(NewHotel.TotalPayment.ToString())))
                {
                    throw new Exception("请输入正确的金额");
                }
                else
                {
                    NewHotel.TotalPayment = Double.Parse(String.Format("{0:F2}", NewHotel.TotalPayment));
                }
                NewHotel.SetLines();
                NewHotel.CalculateLinesTotal();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void AddExecute()
        {
            try
            {
                InputCheck();
                Hotels.Add(NewHotel);
                NewHotel = new HotelGroup()
                {
                    Book = Books[0],
                    ReceiptType = ReceiptTypes[0]
                };
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }


        private void LoadExecute()
        {
            try
            {
                // 锁定控件
                UserControlEnable = false;
                
                Books = ReadConfigDataService.ReadToList(book);
                ReceiptTypes = ReadConfigDataService.ReadToList(reciept);

                NewHotel = new HotelGroup()
                {
                    Book = Books[0],
                    ReceiptType = ReceiptTypes[0]
                };
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
