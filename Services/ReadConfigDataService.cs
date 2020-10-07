using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MonthlyReport.Services
{
    public class ReadConfigDataService
    {
        public static ObservableCollection<string> ReadToList(string path)
        {
            ObservableCollection<string> list = new ObservableCollection<string>();
            FileStream stream = new FileStream(path, FileMode.Open);
            StreamReader streamReader = new StreamReader(stream, Encoding.UTF8);

            try
            {
                string line;
                while ((line = streamReader.ReadLine()) != null)
                {
                    list.Add(line);
                }

                return list;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                streamReader.Close();
                stream.Close();
            }
        }
    }
}
