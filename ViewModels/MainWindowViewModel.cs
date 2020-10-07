using MonthlyReport.Models;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MonthlyReport.ViewModels
{
    public class MainWindowViewModel : BindableBase
    { 
        IRegionManager _regionManager;

        private ObservableCollection<MenuModel> _menus;

        public ObservableCollection<MenuModel> Menus
        {
            get { return _menus; }
            set { SetProperty(ref _menus, value); }
        }

        private MenuModel _selectedMenu;

        public MenuModel SelectedMenu
        {
            get { return _selectedMenu; }
            set { SetProperty(ref _selectedMenu, value); }
        }

        private bool _toggleCheck;

        public bool ToggleCheck
        {
            get { return _toggleCheck; }
            set { SetProperty(ref _toggleCheck, value); }
        }


        public DelegateCommand LoadCommand { get; set; }
        public DelegateCommand ChangeMenuCommand { get; set; }
        public DelegateCommand CloseCommand { get; set; }
        public DelegateCommand HelpCommand { get; set; }



        public MainWindowViewModel(IRegionManager regionManager)
        {
            _regionManager = regionManager;

            LoadCommand = new DelegateCommand(LoadExecute);
            ChangeMenuCommand = new DelegateCommand(ChangeMenuExecute);
            CloseCommand = new DelegateCommand(CloseExecute);
            HelpCommand = new DelegateCommand(HelpExecute);
        }

        private void HelpExecute()
        {
            try
            {
                System.Diagnostics.Process.Start(@".\Resources\Help.wmv");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void CloseExecute()
        {
            ToggleCheck = false;
        }

        private void LoadExecute()
        {
            try
            {
                ToggleCheck = false;
                Menus = new ObservableCollection<MenuModel>
                {
                    new MenuModel
                    {
                        MenuName = "滴滴(个人版)",
                        NavigatePath = "DiDi",
                        IconKind = "LocalTaxi"
                    },
                    new MenuModel
                    {
                        MenuName = "酒店费用均摊",
                        NavigatePath = "Hotel",
                        IconKind = "Hotel"
                    },
                    new MenuModel
                    {
                        MenuName = "月报生成",
                        NavigatePath = "Report",
                        IconKind = "FileDocument"
                    },
                    new MenuModel
                    {
                        MenuName = "自律声明配置",
                        NavigatePath = "Configuration",
                        IconKind = "Gear"
                    }
                };
                SelectedMenu = Menus[0];
                _regionManager.RequestNavigate("ContentRegion", "DiDi");

                if (File.Exists(@".\Resources\Config\DiDi.json"))
                {
                    File.Delete(@".\Resources\Config\DiDi.json");
                }
                if (File.Exists(@".\Resources\Config\Hotel.json"))
                {
                    File.Delete(@".\Resources\Config\Hotel.json");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void ChangeMenuExecute()
        {
            try
            {
                _regionManager.RequestNavigate("ContentRegion", SelectedMenu.NavigatePath);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
