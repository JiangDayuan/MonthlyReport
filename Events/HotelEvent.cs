using MonthlyReport.Models;
using Prism.Events;
using System.Collections.ObjectModel;

namespace MonthlyReport.Events
{
    public class HotelEvent : PubSubEvent<ObservableCollection<HotelGroup>>
    {
    }
}
