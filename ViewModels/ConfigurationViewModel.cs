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

namespace MonthlyReport.ViewModels
{
    public class ConfigurationViewModel : BindableBase
    {
        private bool _userControlEnable = true;

        public bool UserControlEnable
        {
            get { return _userControlEnable; }
            set { SetProperty(ref _userControlEnable, value); }
        }

        private Config config;

        public Config Config
        {
            get { return config; }
            set { SetProperty(ref config, value); }
        }

        public DelegateCommand LoadCommand { get; set; }
        public DelegateCommand SaveCommand { get; set; }


        public ConfigurationViewModel()
        {
            LoadCommand = new DelegateCommand(LoadExecute);
            SaveCommand = new DelegateCommand(SaveExecute);
        }

        private void SaveExecute()
        {
            try
            {
                string config = @".\Resources\Config\Config.json";
                string content = JsonDataService.DataToJson(Config);
                JsonDataService.WriteFile(content, config);
                MessageBox.Show("保存成功");
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
                UserControlEnable = false;
                Config = new Config();
                if (File.Exists(@".\Resources\Config\Config.json"))
                {
                    string content = JsonDataService.ReadFile(@".\Resources\Config\Config.json");
                    Config = JsonDataService.FromJson<Config>(content);
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
