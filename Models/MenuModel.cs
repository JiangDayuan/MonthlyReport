using Prism.Mvvm;

namespace MonthlyReport.Models
{
    public class MenuModel : BindableBase
    {
        private string _iconKind;

        public string IconKind
        {
            get { return _iconKind; }
            set { SetProperty(ref _iconKind, value); }
        }

        private string _menuName;

        public string MenuName
        {
            get { return _menuName; }
            set { SetProperty(ref _menuName, value); }
        }

        private string _navigatePath;

        public string NavigatePath
        {
            get { return _navigatePath; }
            set { SetProperty(ref _navigatePath, value); }
        }
    }
}
