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
using MonthlyReport.Events;

namespace MonthlyReport.ViewModels
{
    public class DiDiViewModel : BindableBase
    {
        IEventAggregator _ea;

        private bool _userControlEnable;

        public bool UserControlEnable
        {
            get { return _userControlEnable; }
            set { SetProperty(ref _userControlEnable, value); }
        }

        private string _filePath;

        public string FilePath
        {
            get { return _filePath; }
            set { SetProperty(ref _filePath, value); }
        }

        private int _count;

        public int Count
        {
            get { return _count; }
            set { SetProperty(ref _count, value); }
        }

        private double _amount;

        public double Amount
        {
            get { return _amount; }
            set { SetProperty(ref _amount, value); }
        }

        private ObservableCollection<DiDiLine> _travelList;

        public ObservableCollection<DiDiLine> TravelList
        {
            get { return _travelList; }
            set { SetProperty(ref _travelList, value); }
        }


        public DelegateCommand SelectCommand { get; set; }
        public DelegateCommand CountDiDiCommand { get; set; }
        public DelegateCommand SaveCommand { get; set; }

        public DiDiViewModel(IEventAggregator eventAggregator)
        {
            _ea = eventAggregator;

            SelectCommand = new DelegateCommand(SelectExecute);
            CountDiDiCommand = new DelegateCommand(CountDiDiExecute);
            SaveCommand = new DelegateCommand(SaveExecute);

            UserControlEnable = true;
            TravelList = new ObservableCollection<DiDiLine>();
        }

        private void SaveExecute()
        {
            try
            {
                string didi = @".\Resources\Config\DiDi.json";
                string content = JsonDataService.DataToJson(TravelList);
                JsonDataService.WriteFile(content, didi);
                MessageBox.Show("保存成功");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void CountDiDiExecute()
        {
            try
            {
                if (TravelList is null)
                {
                    Count = 0;
                    Amount = 0;
                }
                else
                {
                    Count = TravelList.Count();
                    Amount = 0;
                    foreach (var t in TravelList)
                    {
                        Amount += t.Fee;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private async void SelectExecute()
        {
            try
            {
                // 锁定控件
                UserControlEnable = false;

                // 选择文件
                var dialog = new Microsoft.Win32.OpenFileDialog();
                dialog.Multiselect = true;//该值确定是否可以选择多个文件
                dialog.Title = "请选择滴滴行程单（可多选）";
                dialog.Filter = "PDF(*.pdf)|*.pdf";
                if (dialog.ShowDialog() == true)
                {
                    FilePath = String.Join(";", dialog.FileNames);

                    if (FilePath != "")
                    {
                        // 解析行程单
                        DiDiDataService DD = new DiDiDataService(FilePath);
                        TravelList = await DD.ConvertPDF2TXT();
                        CountDiDiExecute();
                    }
                }
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
