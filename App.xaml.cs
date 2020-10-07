using Prism.Ioc;
using System.Windows;
using Prism.Modularity;
using MonthlyReport.Views;

namespace MonthlyReport
{
    /// <summary>
    /// App.xaml 的交互逻辑
    /// </summary>
    public partial class App
    {
        protected override Window CreateShell()
        {
            return Container.Resolve<MainWindow>();
        }

        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterForNavigation<DiDi>();
            containerRegistry.RegisterForNavigation<Hotel>();
            containerRegistry.RegisterForNavigation<Report>();
            containerRegistry.RegisterForNavigation<Configuration>();
        }

        protected override void ConfigureModuleCatalog(IModuleCatalog moduleCatalog)
        {
            
        }
    }
}
